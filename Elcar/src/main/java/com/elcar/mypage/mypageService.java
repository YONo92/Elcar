package com.elcar.mypage;

import com.elcar.member.Member;

public interface mypageService {
	
	  Member mypageInfo(String member_id) throws Exception;
	  void memberModify(Member member) throws Exception;
	  void memberPasswordModify(Member member) throws Exception;
	  
	 

}
