 package com.elcar.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.elcar.dto.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Autowired
	MemberDAO memdao;
	
	@Override
	public Member selectMember_kakao(String id) throws Exception {
		return memdao.selectMember_kakao(id);
	}

	@Override
	public void insertMember_kakao(Member mem) throws Exception {
		mem.setPw("no");
		mem.setEmail(mem.getId());
		String gender = mem.getGender2();
		if(gender.equals("male") || gender.equals("M")) {
			mem.setGender(1);
		}else if(gender.equals("female") || gender.equals("F")) {
			mem.setGender(2);
		}
		
		memdao.insertMember(mem);		
	}

	@Override
	public void insertMember(Member mem) throws Exception {
		String encodedPassword = passwordEncoder.encode(mem.getPw());
		mem.setPw(encodedPassword);
		memdao.insertMember(mem);
		
	}

	@Override
	public boolean access(String id, String pw) throws Exception {
		Member mem = memdao.queryMember(id);
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

	@Override
	public boolean emailcheck(String email) throws Exception {
		Member mem = memdao.queryMember_email(email);
		if(mem==null) return false;
		return true;
	}

	@Override
	public boolean nicknameCheck(String nickname) throws Exception {
		Member mem = memdao.queryMember_nickname(nickname);
		if(mem==null) return false;
		return true;
	}

	@Override
	public boolean idCheck(String id) throws Exception {
		Member mem = memdao.queryMember(id);
		if(mem==null)return false;
		return true;
	}

	
	
}
