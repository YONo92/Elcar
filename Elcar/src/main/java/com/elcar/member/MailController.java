package com.elcar.member;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.elcar.dto.Mail;

@Controller
public class MailController {
	
	@Autowired
	MemberService memserv;
	
	@Autowired
	SendEmailService sendEmailService;
	
	 //Email과 name의 일치여부를 check하는 컨트롤러
	 @ResponseBody
	 @GetMapping("/check/findPw")
	    public Map<String, Boolean> find_pw(String email, String name){
	        Map<String,Boolean> json = new HashMap<>();
	        boolean pwFindCheck;
			try {
				pwFindCheck = memserv.EmailCheck(email,name);
		        json.put("check", pwFindCheck);
		        return json;
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
				return null;
	    }

	//등록된 이메일로 임시비밀번호를 발송하고 발송된 임시비밀번호로 사용자의 pw를 변경하는 컨트롤러
		@ResponseBody
	    @PostMapping("/check/findPw/sendEmail")
	    public void sendEmail(String email, String name){
	        Mail dto;
			try {
				dto = sendEmailService.createMailAndChangePassword(email, name);
				sendEmailService.mailSend(dto);
			} catch (Exception e) {
				e.printStackTrace();
			}
	    }

}
