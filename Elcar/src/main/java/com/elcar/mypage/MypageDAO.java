package com.elcar.mypage;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.elcar.dto.Member;

@Mapper
@Repository
public interface MypageDAO {
	public Member queryMember(String member_id) throws Exception;
	public void updateMember(Member member)throws Exception;
	public void updatePw(String member_id, String password)throws Exception;
	public Member deleteId(String member_id) throws Exception;
	public Member queryPoint(String member_id) throws Exception;
	public void updatePoint(Member member)throws Exception;
}
