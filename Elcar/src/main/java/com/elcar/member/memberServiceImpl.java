package com.elcar.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.elcar.dto.member;

@Service
public class memberServiceImpl implements memberService {

	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Autowired
	memberDAO memdao;
	
	@Override
	public member selectMember_kakao(String id) throws Exception {
		return memdao.selectMember_kakao(id);
	}

	@Override
	public void insertMember_kakao(member mem) throws Exception {
		mem.setPw("no");
		mem.setEmail(mem.getId());
		String gender = mem.getGender2();
		if(gender.equals("male")) {
			mem.setGender(0);
		}else if(gender.equals("female")) {
			mem.setGender(1);
		}
		
		memdao.insertMember(mem);		
	}

	@Override
	public void insertMember(member mem) throws Exception {
		String encodedPassword = passwordEncoder.encode(mem.getPw());
		mem.setPw(encodedPassword);
		memdao.insertMember(mem);
		
	}

	@Override
	public Boolean access(String id, String pw) throws Exception {
		member mem = memdao.queryMember(id);
		if(!mem.getId().equals(null)){
			try {
				if(passwordEncoder.matches(pw, mem.getPw())){
					return true;
				}
			}catch(Exception e) {
				return false;			
			}	
		}
		throw  new Exception("로그인 실패");		
	}

	
	
}
