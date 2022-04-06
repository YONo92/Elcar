package com.elcar.share;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.elcar.dto.Member;
import com.elcar.dto.PageInfo;
import com.elcar.dto.Share;
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
			@RequestParam(value = "liststartsize") String liststartsize ,Model model) {
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
			model.addAttribute("shareList",shareList);
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

	@GetMapping(value = "/sincheonginfo")
	public ModelAndView sincheongInfo() {
		ModelAndView mav = new ModelAndView("share/sincheonginfo");
		int num = 10;
		// int num = (Integer) session.getAttribute("num");
		try {
			HashMap<String, Object> sincheong = shareserv.sincheongInfo(num);
			String dateSet = sincheong.get("date").toString().substring(0, 10);
			String datetime = sincheong.get("date").toString().substring(11, 16);
			String date = dateSet + " " + datetime;
			String gender;
			String status;
			if ((Integer) sincheong.get("gender") == 0) {
				gender = "남자";
			} else {
				gender = "여자";
			}
			if ((Integer) sincheong.get("status") == 0) {
				status = "매칭중";
			} else {
				status = "매칭!";
			}
			mav.addObject("sincheong", sincheong);
			mav.addObject("date", date);
			mav.addObject("status", status);
			mav.addObject("gender", gender);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}

}
