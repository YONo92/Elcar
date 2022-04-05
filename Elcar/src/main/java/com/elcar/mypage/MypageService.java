package com.elcar.mypage;

import com.elcar.dto.Member;

public interface MypageService {
	  Member mypageInfo(String member_id) throws Exception;
	  void memberModify(Member member) throws Exception;
	void memberPasswordModify(String member_id, String password) throws Exception;
}
