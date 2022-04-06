package com.elcar.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.elcar.dto.Mail;

@Service
public class SendEmailService {

	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	 	@Autowired
	    MemberDAO memdao;
	 	
	 	@Autowired
	    private JavaMailSender mailSender;
	 	
	    private static final String FROM_ADDRESS = "juy7416@gmail.com";



	    public Mail createMailAndChangePassword(String email, String name)throws Exception{
	        String str = getTempPassword();
	        Mail dto = new Mail();
	        dto.setAddress(email);
	        dto.setTitle(name+"님의 Elcar 임시비밀번호 안내 이메일 입니다.");
	        dto.setMessage("안녕하세요. Elcar 임시비밀번호 안내 관련 이메일 입니다." + "[" + name + "]" +"님의 임시 비밀번호는 "
	        + str + " 입니다."+"\n\n\n"+"로그인 후 비밀번호 변경후 사용하시길 권장합니다.");
	        
	        updatePassword(str,email);
	        return dto;
	    }

	    public void updatePassword(String str,String email) throws Exception{
	        String pw = passwordEncoder.encode(str);
	        String id = memdao.queryMember_email(email).getId();
	        memdao.updateUserPassword(id,pw);
	    }


	    public String getTempPassword(){
	        char[] charSet = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F',
	                'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };

	        String str = "";

	        int idx = 0;
	        for (int i = 0; i < 10; i++) {
	            idx = (int) (charSet.length * Math.random());
	            str += charSet[idx];
	        }
	        return str;
	    }
	    
	    public void mailSend(Mail mailDto){
	        System.out.println("이메일 전송 완료!");
	        SimpleMailMessage message = new SimpleMailMessage();
	        message.setTo(mailDto.getAddress());
	        message.setFrom(SendEmailService.FROM_ADDRESS);
	        message.setSubject(mailDto.getTitle());
	        message.setText(mailDto.getMessage());

	        mailSender.send(message);
	    }
	    
}
