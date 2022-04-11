package com.elcar.share;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.exceptions.TooManyResultsException;
import org.mybatis.spring.MyBatisSystemException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.elcar.dto.Member;
import com.elcar.dto.Share;
import com.elcar.dto.Sinchenglist;
import com.elcar.member.MemberService;

@Controller
public class ShareController {

	@Autowired
	HttpSession session;

	@Autowired
	MemberService memserv;

	@Autowired
	ShareService shareserv;

	@GetMapping(value = "/share")
	public String shareform(Model model) {
		String id = (String) session.getAttribute("id");
		try {
			if (id == null) {
				return "main/loginform";
			}
			Member mem = memserv.selectMember_kakao(id);
			model.addAttribute("nickname", mem.getNickname());
			if (mem.getGender() == 0) {
				model.addAttribute("gender", "남자");
			} else {
				model.addAttribute("gender", "여자");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "share/share";
	}

	@PostMapping(value = "/share")
	public String insert_share(@ModelAttribute Share share, @RequestParam(value = "date") String date) {
		try {
			share.setSincheng_id((String) session.getAttribute("id"));
			share.setStatus(0);
			shareserv.insertShare(share);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "main/main";
	}

	@ResponseBody
	@PostMapping("/sharelist_more")
	public List<Share> shareList_more(@RequestParam(value = "lat", required = false, defaultValue = "0") double lat,
			@RequestParam(value = "lng", required = false, defaultValue = "0") double lng,
			@RequestParam(value = "liststartsize") String liststartsize, Model model) {
		try {
			System.out.println(lng);
			System.out.println(lat);
			System.out.println(liststartsize);
			int listsize = Integer.parseInt(liststartsize);
			Map<String, Object> mapParam = new HashMap<>();
			mapParam.put("lat", lat);
			mapParam.put("lng", lng);
			mapParam.put("liststartsize", listsize);
			mapParam.put("listlastsize", listsize + 10);
			List<Share> shareList = shareserv.selectShareList(mapParam);
			model.addAttribute("shareList", shareList);
			System.out.println(shareList.size());
			return shareList;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@PostMapping(value = "/sharelist")
	public ModelAndView shareList(@RequestParam(value = "lat", required = false, defaultValue = "0") double lat,
			@RequestParam(value = "lng", required = false, defaultValue = "0") double lng) {
		ModelAndView mav = new ModelAndView("share/sharelist");
		try {
			int liststartsize = 0;
			Map<String, Object> mapParam = new HashMap<>();
			mapParam.put("lat", lat);
			mapParam.put("lng", lng);
			mapParam.put("liststartsize", liststartsize);
			mapParam.put("listlastsize", liststartsize + 10);
			List<Share> shareList = shareserv.selectShareList(mapParam);
			mav.addObject("shareList", shareList);
			mav.addObject("listsize", shareList.size());
			mav.addObject("lat", lat);
			mav.addObject("lng", lng);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	@GetMapping(value = "/sinchenginfo/{num}")
	public ModelAndView sincheongInfo(@PathVariable("num") int num, Share share) {
		ModelAndView mav = new ModelAndView("share/sincheonginfo");
		String id = (String) session.getAttribute("id");
		try {
			if (id == null) {
				mav.setViewName("redirect:/loginform");
			} else {
				Member mem = memserv.selectMember_kakao(id);
				HashMap<String, Object> sincheng = shareserv.sinchengInfo(num);
				try {
					share.setId(id);
					Sinchenglist sinchengOverlap = shareserv.sinchengOverlap(share);
					mav.addObject("sinchengOverlap", sinchengOverlap);
				} catch (NullPointerException e) {
					e.printStackTrace();
				}
				String dateSet = sincheng.get("date").toString().substring(0, 10);
				String datetime = sincheng.get("date").toString().substring(11, 16);
				String date = dateSet + " " + datetime;
				String gender;
				String status;
				if ((Integer) sincheng.get("gender") == 0) {
					gender = "남자";
				} else {
					gender = "여자";
				}
				if ((Integer) sincheng.get("status") == 0) {
					status = "매칭중";
				} else {
					status = "매칭!";
				}
				mav.addObject("id", id);
				mav.addObject("mem", mem);
				mav.addObject("num", num);
				mav.addObject("sincheng", sincheng);
				mav.addObject("date", date);
				mav.addObject("status", status);
				mav.addObject("gender", gender);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

	@PostMapping(value = "/sincheng")
	public ModelAndView sincheng(@ModelAttribute Share share) {
		ModelAndView mav = new ModelAndView("mypage/mypage");
		String id = (String) session.getAttribute("id"); // surak_id
		mav.addObject("id", id);
		try {
			Member mem = memserv.selectMember_kakao(id);
			if (mem.getLicense() != 1) {
				mav.setViewName("redirect:/driver-regist");
			} else {
				share = shareserv.selectShare(share.getNum());
				if (id.equals(share.getSincheng_id())) {
				} else {
					share.setSurak_id(id);
					shareserv.insertSincheng(share);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
}
