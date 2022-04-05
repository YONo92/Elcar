package com.elcar.mypage;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.elcar.dto.Member;

@Controller
public class MypageController {

	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Autowired
	MypageService mypageService;

	@Autowired
	HttpSession session;

	@GetMapping(value = "log")
	public ModelAndView logout() {
		ModelAndView mav = new ModelAndView("main/main");
		session.invalidate();
		return mav;
	}
	
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

	// 진짜 정보 수정하는 화면 이동
	@PostMapping(value = "membermodifyform")
	public String memberModifyForm(Member member, Model model) {
		model.addAttribute("member", member);
		return "mypage/membermodify";
	}
	
	// 진짜 정보 수정
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
		} catch (Exception e){
			e.printStackTrace();
		}
		
			
		return mav;
	}
	
	@PostMapping(value = "pwmodifyform")
	public ModelAndView pwmodifyFormForm(@RequestParam String password) {
		ModelAndView mav = new ModelAndView("mypage/pwmodify");
		String member_id = (String) session.getAttribute("id");
		
		try {
			Member member = mypageService.mypageInfo(member_id);
			if(!passwordEncoder.matches(password, member.getPw())) {
				mav.setViewName("mypage/checkPw");
				mav.addObject("alertMsg", "비밀번호가 틀렸습니다.");
			}
		} catch (Exception e){
			e.printStackTrace();
		}
		return mav;
	}

	
	@PostMapping(value = "pwmodify")
	public ModelAndView pwmodify(@RequestParam String password) {
		System.out.println("성공입니다.");
		System.out.println(password);
		
		ModelAndView mav = new ModelAndView("mypage/mypage");
		String member_id = (String) session.getAttribute("id");
		try {
			String encodedPassword = passwordEncoder.encode(password);
			mypageService.memberPasswordModify(member_id, encodedPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	

	
	
	@GetMapping(value = "tal")
	public ModelAndView talForm() {
		ModelAndView mav = new ModelAndView("mypage/checkPw");
		return mav;
	}
	
	@GetMapping(value = "deleteId")
	public ModelAndView deleteIdForm() {
		ModelAndView mav = new ModelAndView("mypage/deleteId");
		return mav;
	}
	
	@GetMapping(value = "driverInfo")
	public ModelAndView driverInfoForm() {
		ModelAndView mav = new ModelAndView("mypage/driverInfo");
		return mav;
	}
	
	@GetMapping(value = "history")
	public ModelAndView historyForm() {
		ModelAndView mav = new ModelAndView("mypage/history");
		return mav;
	}
	
	@GetMapping(value = "mannerPoint")
	public ModelAndView mannerPointForm() {
		ModelAndView mav = new ModelAndView("mypage/mannerPoint");
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
	

	@GetMapping(value = "pyeongga")
	public ModelAndView pyeonggaForm() {
		ModelAndView mav = new ModelAndView("mypage/pyeongga");
		return mav;
	}
	
	@GetMapping(value = "singo")
	public ModelAndView singoForm() {
		ModelAndView mav = new ModelAndView("mypage/singo");
		return mav;
	}
	
	@GetMapping(value = "singoHistory")
	public ModelAndView singoHistoryForm() {
		ModelAndView mav = new ModelAndView("mypage/singoHistory");
		return mav;
	}
	
	@GetMapping(value = "singoHistoryDetail")
	public ModelAndView singoHistoryDetailForm() {
		ModelAndView mav = new ModelAndView("mypage/singoHistoryDetail");
		return mav;
	}
	
	@GetMapping(value = "taewoolraeSurak")
	public ModelAndView taewoolraeSurakForm() {
		ModelAndView mav = new ModelAndView("mypage/taewoolraeSurak");
		return mav;
	}
	
	@GetMapping(value = "talgaeSincheng")
	public ModelAndView talgaeSinchengForm() {
		ModelAndView mav = new ModelAndView("mypage/talgaeSincheng");
		return mav;
	}
	
}

