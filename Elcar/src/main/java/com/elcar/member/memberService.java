package com.elcar.member;

import com.elcar.dto.member;

public interface memberService {

	member selectMember_kakao(String id) throws Exception;

	void insertMember_kakao(member mem) throws Exception;

	void insertMember(member mem)throws Exception;

	Boolean access(String id, String pw)throws Exception;

}
