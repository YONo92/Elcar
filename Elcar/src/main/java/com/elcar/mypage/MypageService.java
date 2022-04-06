package com.elcar.mypage;

import com.elcar.dto.Member;

public interface MypageService {
	Member mypageInfo(String member_id) throws Exception;
	void memberModify(Member member) throws Exception;
	void memberPasswordModify(String id, String password) throws Exception;
	void deleteMember(String id) throws Exception;
	Member pyeonggaPoint(String member_id) throws Exception;	
}
