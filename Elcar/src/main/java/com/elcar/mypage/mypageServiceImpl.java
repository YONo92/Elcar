package com.elcar.mypage;

import org.apache.ibatis.javassist.compiler.ast.Member;

public class mypageServiceImpl { }
/*	
	@Override
	public Member mypageInfo(String member_id) throws Exception {
		member member = mypageDAO.queryMember(member_id);
		return member;
	}

	@Override
	public void memberModify(Member member) throws Exception {	
		member rmember = mypageDAO.queryMember(member.getmember_id());	
		if (member.getmember_pw().equals(rmember.getmember_pw())) { //현재 비밀번호 맞는지 체크
			mypageDAO.updateMember(member);// 업데이트 된 db
		} else {
			throw new Exception("수정권한 없음");
		}
	}
	
	@Override
	public void memberPWModify(Member member) throws Exception {	
		mypageDAO.updatePw(member);
	}
}*/
