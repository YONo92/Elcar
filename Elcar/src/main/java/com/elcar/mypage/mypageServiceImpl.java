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
		if (member.getmember_pw().equals(rmember.getmember_pw())) { //���� ��й�ȣ �´��� üũ
			mypageDAO.updateMember(member);// ������Ʈ �� db
		} else {
			throw new Exception("�������� ����");
		}
	}
	
	@Override
	public void memberPWModify(Member member) throws Exception {	
		mypageDAO.updatePw(member);
	}
}*/
