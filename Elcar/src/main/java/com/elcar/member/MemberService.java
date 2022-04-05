package com.elcar.member;

import com.elcar.dto.Member;

public interface MemberService {

	Member selectMember_kakao(String id) throws Exception;

	void insertMember_kakao(Member mem) throws Exception;

	void insertMember(Member mem)throws Exception;

	Boolean access(String id, String pw)throws Exception;

}
