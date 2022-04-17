package com.elcar.mypage;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.elcar.dto.Driver;
import com.elcar.dto.Driver_report;
import com.elcar.dto.History;
import com.elcar.dto.Member;
import com.elcar.dto.Share;
import com.elcar.share.ShareService;

@Controller
public class MypageController {

	@Autowired
	private PasswordEncoder passwordEncoder;

	@Autowired
	MypageService mypageService;

	@Autowired
	ShareService shareserv;

	@Autowired
	HttpSession session;

//////////////////// 산하
//////////////////// 6조 화이팅

	// (마이 페이지)
	@GetMapping("/mypage")
	public ModelAndView mypage() {
		ModelAndView mav = new ModelAndView("mypage/mypage");
		String member_id = (String) session.getAttribute("id");
		try {
			Member member = mypageService.mypageInfo(member_id);
			if (member == null) {

				mav.setViewName("main/loginform");
			}
			mav.addObject("member", member);
		} catch (Exception e) {
			e.printStackTrace();
			mav.setViewName("err");
		}
		return mav;
	}

	// 진짜 정보 수정하는 화면 이동(프로필 보기)
	@PostMapping(value = "membermodifyform")
	public String memberModifyForm(Member member, Model model) {
		model.addAttribute("member", member);
		return "mypage/membermodify";
	}

	// 진짜 정보 수정(프로필 보기)
	@PostMapping(value = "membermodify")
	public ModelAndView membermodify(@ModelAttribute Member member) {
		ModelAndView mav = new ModelAndView("mypage/mypage");
		try {
			mypageService.memberModify(member);
			mav.addObject("member", member);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	// 비번 변경 전 비번 확인(현재 비밀번호 창)
	@GetMapping(value = "checkPw")
	public ModelAndView checkPwForm() {
		ModelAndView mav = new ModelAndView("mypage/checkPw");
		String member_id = (String) session.getAttribute("id");
		try {
			Member member = mypageService.mypageInfo(member_id);
			if (member.getPw().equals("no")) {
				mav.setViewName("mypage/mypage");
				mav.addObject("alertMsg", "카카오 회원은 비밀번호는 변경하실 수 없습니다.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return mav;
	}

	// 비밀번호 수정
	@PostMapping(value = "pwmodifyform")
	public ModelAndView pwmodifyFormForm(@RequestParam String password) {
		ModelAndView mav = new ModelAndView("mypage/pwmodify");
		String member_id = (String) session.getAttribute("id");

		try {
			Member member = mypageService.mypageInfo(member_id);
			if (!passwordEncoder.matches(password, member.getPw())) {
				mav.setViewName("mypage/checkPw");
				mav.addObject("alertMsg", "비밀번호가 틀렸습니다.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	// 비밀번호 수정
	@PostMapping(value = "pwmodify")
	public ModelAndView pwmodify(HttpServletRequest request, @RequestParam(value = "password1") String password) {
		ModelAndView mav = new ModelAndView("mypage/mypage");
		String id = (String) session.getAttribute("id");

		try {
			mypageService.memberPasswordModify(id, passwordEncoder.encode(password));
			mav.addObject("", "");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	// 탈퇴전 비밀번호 입력 창(회원탈퇴)
	@GetMapping(value = "talcheckPw")
	public ModelAndView talcheckPwForm() {
		ModelAndView mav = new ModelAndView("mypage/talcheckPw");
		String member_id = (String) session.getAttribute("id");
		try {
			Member member = mypageService.mypageInfo(member_id);
			if (member.getPw().equals("no")) {
				mav.setViewName("mypage/mypage");
				mav.addObject("alertMsg", "카카오 회원은 회원탈퇴를 하실 수 없습니다.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	// 회원탈퇴
	@PostMapping(value = "deleteIdform")
	public ModelAndView deleteIdForm(@RequestParam String password) {
		ModelAndView mav = new ModelAndView("mypage/deleteId");
		String member_id = (String) session.getAttribute("id");

		try {
			Member member = mypageService.mypageInfo(member_id);
			if (!passwordEncoder.matches(password, member.getPw())) {
				mav.setViewName("mypage/talcheckPw");
				mav.addObject("alertMsg", "비밀번호가 틀렸습니다.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	// 회원탈퇴
	@PostMapping(value = "deleteId")
	public ModelAndView deleteId() {
		ModelAndView mav = new ModelAndView("main/main");
		try {
			String id = (String) session.getAttribute("id");
			System.out.println(id);
			mypageService.deleteMember(id);
			if (id != null) {
				session.invalidate();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	// 드라이버 정보
	@GetMapping(value = "driverInfo")
	public ModelAndView driverInfoForm() {
		ModelAndView mav = new ModelAndView("mypage/driverInfo");
		try {
			String id = (String) session.getAttribute("id");
			Member member = mypageService.mypageInfo(id);

			mav.addObject("id", member.getId());
			// 신청 중인지=..
			Driver driver = mypageService.selectDriverInfo(id);
			if (driver != null) {
				mav.addObject("driver", driver);
			}
			// 신청 중이라면 인증 대기중, 거절 , 인증되었는지 (status) 0 : 대기중 1 : 거절 2 : 승인
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	// 매너포인트
	@GetMapping(value = "mannerPoint")
	public ModelAndView mannerPointForm() {
		ModelAndView mav = new ModelAndView("mypage/mannerPoint");
		String taker_id = (String) session.getAttribute("id");
		try {
			Member member = mypageService.mypageInfo(taker_id);
			mav.addObject("member", member);

			List<History> historyDrivingList = mypageService.mannerDriverPointbatki(taker_id);
			mav.addObject("historyDrivingList", historyDrivingList);

			List<History> historyDDubukList = mypageService.mannerDDubukPointbatki(taker_id);
			mav.addObject("historyDDubukList", historyDDubukList);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	// 프로필 보기 화면 이동
	@GetMapping(value = "mypageMyinfo")
	public ModelAndView mypageMyinfoForm() {
		ModelAndView mav = new ModelAndView("mypage/mypageMyinfo");
		String member_id = (String) session.getAttribute("id");
		try {
			Member member = mypageService.mypageInfo(member_id);
			mav.addObject("member", member);
		} catch (Exception e) {
			e.printStackTrace();
			mav.setViewName("err");
		}
		return mav;
	}

	// 이용내역
	@GetMapping(value = "history")
	public ModelAndView historyForm() {
		ModelAndView mav = new ModelAndView("mypage/history");
		String taker_id = (String) session.getAttribute("id");
		try {
			Member member = mypageService.mypageInfo(taker_id);
			mav.addObject("member", member);
			List<History> historyDrivingList = mypageService.mannerDriverPointjugi(taker_id);
			mav.addObject("historyDrivingList", historyDrivingList);

			List<History> historyDDubukList = mypageService.mannerDDubukPointjugi(taker_id);
			mav.addObject("historyDDubukList", historyDDubukList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	// 이용평가
	@GetMapping(value = "pyeongga/{num}")
	public ModelAndView pyeonggaForm(@PathVariable int num) {
		ModelAndView mav = new ModelAndView("mypage/pyeongga");
		try {
			History history = mypageService.selectHistoryByNum(num);
			if (history.getPoint() != 0) {
				mav.setViewName("mypage/history");
			} else {
				mav.addObject("history", history);
			}
			
			/*
			 * if (history.getPoint() != 0) { type = }
			 */
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mav;
	}

	@ResponseBody
	@PostMapping(value = "pyeongga")
	public String pyeongga(@RequestParam int num, @RequestParam int point) {
		try {
			History history = mypageService.selectHistoryByNum(num);
			String user_id = (String) session.getAttribute("id");
			if (user_id.equals(history.getTaker_id())) {
				mypageService.pointUpdate(num, point, "giver_id");
			} else {
				mypageService.pointUpdate(num, point, "taker_id");
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "실패";
		}
		return "성공";
	}

	// 신고
	@GetMapping(value = "singo/{num}")
	public ModelAndView singoForm(@PathVariable int num) {
		ModelAndView mav = new ModelAndView("mypage/singo");
		try {
			String user_id = (String) session.getAttribute("id");
			History history = mypageService.selectHistoryByNum(num);
			mav.addObject("history_num", num);
			if (user_id.equals(history.getTaker_id())) {
				mav.addObject("badUser", history.getGiver_id());
			} else {
				mav.addObject("badUser", history.getTaker_id());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	// 신고 등록
	@PostMapping(value = "singo")
	public ModelAndView singo(Driver_report dr) {
		ModelAndView mav = new ModelAndView("redirect:/history");
		try {
			dr.setSingouser((String) session.getAttribute("id"));
			mypageService.insertSingo(dr);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	// 신고내역
	@GetMapping(value = "singoHistory")
	public ModelAndView singoHistoryForm(Driver_report dr) {
		ModelAndView mav = new ModelAndView("mypage/singoHistory");

		try {
			String user_id = (String) session.getAttribute("id");
			List<Driver_report> drlist = mypageService.selectDriverReportBySingoId(user_id);			
			System.out.println(drlist.get(0).getCategory());
			for(Driver_report driver_report : drlist) {
				driver_report.getCategory();
				int cate = dr.getCategory();
				String category = null;
				if (cate == 1) {
					category = "난폭운전";
				}else if (cate == 2) {
					category ="성희롱";
				} else if (cate == 3){
					category ="비매너";
				}
				mav.addObject("category", category);
			}			

			mav.addObject("drlist", drlist);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	// 신고내역에 대한 처리 결과 페이지
	// 잊지마 public ModelAndView singoForm(@PathVariable int num) { 
	@GetMapping(value = "singoHistoryDetail/{num}")
	public ModelAndView singoHistoryDetailForm(@PathVariable int num) {
		ModelAndView mav = new ModelAndView("mypage/singoHistoryDetail");
		try {
			String user_id = (String) session.getAttribute("id");	
			Driver_report dr  = mypageService.selectDriverReportByNum(num);
			int cate = dr.getCategory();
			String category = null;
			System.out.println(cate);
			
			if (cate == 1) {
				category = "난폭운전";
			}else if (cate == 2) {
				category ="성희롱";
			} else {
				category ="비매너";
			}
			
			mav.addObject("category", category);
			mav.addObject("dr", dr);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	// 태울래 수락 내역
	@GetMapping(value = "taewoolraeSurak")
	public ModelAndView taewoolraeSurakForm() {
		ModelAndView mav = new ModelAndView("mypage/taewoolraeSurak");
		String id = (String) session.getAttribute("id");
		try {
			List<Share> taewoolist = shareserv.taewoolist(id);
			List<Share> taewoostatus = shareserv.taewoostatus(id);
			mav.addObject("taewoolist", taewoolist);
			mav.addObject("taewoostatus", taewoostatus);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	@GetMapping(value = "taewooSincheng_delete")
	public String taewooSincheng_delete(@RequestParam(value = "num", required = false) int num) {
		try {
			shareserv.talge_delete(num);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/taewoolraeSurak";
	}

	@GetMapping(value = "talgaeSincheng")
	public ModelAndView talgaeSinchengForm() {
		ModelAndView mav = new ModelAndView("mypage/talgaeSincheng");
		String id = (String) session.getAttribute("id");
		try {
			List<Share> talgeList = shareserv.talgelist(id);
			List<Share> talgestatus = shareserv.talgestatus(id);
			mav.addObject("talgeList", talgeList);
			mav.addObject("talgestatus", talgestatus);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	@GetMapping(value = "talgaeSincheng_delete")
	public String talgaeSincheng_delete(@RequestParam(value = "num", required = false) int num) {
		try {
			shareserv.talge_delete(num);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/talgaeSincheng";
	}

	@GetMapping(value = "talgaeSincheng_accept")
	public String talgaeSincheng_accept(@RequestParam(value = "sincheng_id", required = false) String sincheng_id,
			@RequestParam(value = "surak_id", required = false) String surak_id,
			@RequestParam(value = "talge_num", required = false) int talge_num) {
		try {
			shareserv.insertHistory(sincheng_id, surak_id);
			shareserv.insertHistory2(sincheng_id, surak_id);
			shareserv.modifyShare(surak_id, talge_num);
			shareserv.accept_delete(talge_num);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/talgaeSincheng";
	}

}
