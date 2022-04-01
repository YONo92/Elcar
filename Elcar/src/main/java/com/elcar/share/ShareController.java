package com.elcar.share;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.elcar.dto.Share;
import com.elcar.dto.member;
import com.elcar.member.memberService;

@Controller
public class ShareController {
	
	@Autowired
	HttpSession session;
	
	@Autowired
	memberService memserv;
	
	@Autowired
	ShareService shareserv;
	
	@GetMapping(value = "/share")
	public String shareform(Model model){
		String id = (String) session.getAttribute("id");
		try {
			if(id==null) {
				return "main/loginform";
			}
		   member mem = memserv.selectMember_kakao(id);
		   model.addAttribute("nickname", mem.getNickname());
		   if(mem.getGender()==0) {
			   model.addAttribute("gender", "남자");
		   }else {
			   model.addAttribute("gender", "여자");
		   }
		}catch(Exception e){
			e.printStackTrace();
		}
		return "share/share";
	}
	
	@PostMapping(value = "/share")
	public String insert_share(@ModelAttribute Share share) {
		try {
			share.setSincheng_id((String) session.getAttribute("id"));
			share.setStatus(0);
			shareserv.insertShare(share);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return "main/main";
	}
}
