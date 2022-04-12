package com.elcar.member; 

import java.net.URLEncoder;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.elcar.dto.Member;

@Controller
public class MemberController {
	
	@Autowired
	HttpSession session;
	
	@Autowired
	MemberService memserv;
	
	@GetMapping(value="/loginform")
	public String loginform() {
		return "main/loginform";
	}
	
	//카카오 로그인 클릭
	@GetMapping(value="login-kakao")
	public String sign_in(@RequestParam("id")String id,@RequestParam("gender")String gender,@RequestParam("nickname")String nickname
			, Model model) {
		
		Member mem = null;
		Member result=null;
		try {
			mem=memserv.selectMember_kakao(id);
			if(mem!=null) {
				result=memserv.selectMember_kakao(id);
				session.setAttribute("id", result.getId());
				session.setAttribute("type", result.getType());
				model.addAttribute("mem", result);
				return "main/main";
			}else {
				return "redirect:/joinform_kakao?id="+id+"&gender="+gender+"&nickname="+URLEncoder.encode(nickname);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "main/loginform";
		}
	}
	
	//카카오 아이디로 조회한 결과가 null일때 즉 카카오 회원가입
	@GetMapping(value = "joinform_kakao")
	public String signuppage(@RequestParam("id")String id,@RequestParam("gender")String gender,@RequestParam("nickname")String nickname, Model model) {		
		model.addAttribute("id",id);
		model.addAttribute("gender",gender);
		model.addAttribute("nickname",nickname);
		return "main/joinform_kakao";
	}
	
	//정보입력후 회원가입 버튼 클릭시
	@PostMapping("join_kakao")
	public String signup_kakao(@ModelAttribute Member mem) {
		String id = mem.getId();
		try {
			memserv.insertMember_kakao(mem);
			session.setAttribute("id", id);
			System.out.println(id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "main/main";
	}
	
	@GetMapping(value="/joinform")
	public String joinform() {
		return "main/joinform";
	}
	
	@PostMapping(value="/join")
	public String access_joinform(@ModelAttribute Member mem) {
		try {
			memserv.insertMember(mem);
		} catch (Exception e) {
		}
		return "main/loginform";
	}
	
	@PostMapping(value = "login")
	public ModelAndView access(@RequestParam Map<String, String> info,HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("main/main");
		String id = info.get("id");
		String pw = info.get("pw");
			try {
				memserv.access(id, pw);
				int type =memserv.getType(id);
				System.out.println("로그인한 사람의 타입은 >>>> "+type);
				session.setAttribute("id", id);
				session.setAttribute("type", type);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return mav;
	}
	
	@ResponseBody
	@PostMapping(value="/emailcheck")
	public String emailCheck(@RequestParam(value="email", required=true)String email) {
		boolean check=false;
		try {
			check=memserv.emailcheck(email);
		} catch (Exception e) {
		}
		return String.valueOf(check);
	}
	
	@ResponseBody
	@PostMapping(value="/nicknameCheck")
	public String nicknameCheck(@RequestParam(value="nickname", required=true)String nickname) {
		boolean check=false;
		try {
			check=memserv.nicknameCheck(nickname);
		} catch (Exception e) {
		}
		return String.valueOf(check);
	}
	
	@ResponseBody
	@PostMapping(value="/idCheck")
	public String idCheck(@RequestParam(value="id", required=true)String id) {
		boolean check=false;
		try {
			check=memserv.idCheck(id);
		} catch (Exception e) {
		}
		return String.valueOf(check);
	}
	
	@ResponseBody
	@PostMapping(value="/phoneCheck")
	public String phoneCheck(@RequestParam(value="phone", required=true)String phone) {
		boolean check=false;
		try {
			check=memserv.phoneCheck(phone);
			System.out.println(String.valueOf(check));
		} catch (Exception e) {
		}
		return String.valueOf(check);
	}
	
	//네아로구현부분
	@GetMapping(value="/join_naver1")
	public String joinnaver1(){
		return "main/loginnaver";
	}
	
	
	@GetMapping(value="findpw")
	public String findpw() {
		return "main/findpw";
	}
	
	@GetMapping(value="findid")
	public  String findid() {
		return "main/findid";
	}
	
	
	@PostMapping(value="findId")
	public String findid_result(@RequestParam Map<String, String> info, Model model) {
		String name = info.get("name");
		String birth = info.get("birth");
		
		try {
			Member mem = memserv.searchId(name,birth);
			if(mem!=null) {
			model.addAttribute("mem",mem);
			return "main/findid_result";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "main/findid_join";
	}
}
