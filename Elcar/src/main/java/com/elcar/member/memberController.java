package com.elcar.member;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.elcar.dto.member;

@Controller
public class memberController {
	
	@Autowired
	HttpSession session;
	
	@Autowired
	memberService memserv;
	
	@GetMapping(value="/loginform")
	public String loginform() {
		return "/loginform";
	}
	
	//카카오 로그인 클릭
	@GetMapping(value="login-kakao")
	public String sign_in(@RequestParam("id")String id,@RequestParam("gender")String gender
			, Model model) {
		member mem = null;
		member result=null;
		try {
			mem=memserv.selectMember_kakao(id);
			if(mem!=null) {
				result=memserv.selectMember_kakao(id);
				session.setAttribute("id", result.getId());
				model.addAttribute("mem", result);
				return "success";
			}else {
				return "redirect:/joinform_kakao?id="+id+"&gender="+gender;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "loginform";
		}
	}
	
	//카카오 아이디로 조회한 결과가 null일때 즉 카카오 회원가입
	@GetMapping(value = "joinform_kakao")
	public String signuppage(@RequestParam("id")String id,@RequestParam("gender")String gender, Model model) {		
		model.addAttribute("id",id);
		model.addAttribute("gender",gender);
		return "joinform_kakao";
	}
	
	//정보입력후 회원가입 버튼 클릭시
	@PostMapping("join_kakao")
	public String signup_kakao(@ModelAttribute member mem) {
		try {
			memserv.insertMember_kakao(mem);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "success";
	}
	
	@GetMapping(value="/joinform")
	public String joinform() {
		return "/joinform";
	}
	
	@PostMapping(value="/join")
	public String access_joinform(@ModelAttribute member mem) {
		try {
			memserv.insertMember(mem);
		} catch (Exception e) {
		}
		return "/loginform";
	}
	
	@PostMapping(value = "login")
	public String access(@RequestParam Map<String, String> info,HttpServletRequest request) {
		String id = info.get("id");
		String pw = info.get("pw");
			try {
				memserv.access(id, pw);
				session.setAttribute("id", id);
				return "access";
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "success";
	}
	
}
