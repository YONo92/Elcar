package com.elcar.mypage;

import org.apache.ibatis.javassist.compiler.ast.Member;

public interface mypageDAO {
	public Member queryMember(String member_id) throws Exception;
	public void updateMember(Member member)throws Exception;
	public void updatePw(Member member)throws Exception;
	public Member deleteId(String member_id) throws Exception;
	public Member queryPoint(String member_id) throws Exception;
	public void updatePoint(Member member)throws Exception;
}
