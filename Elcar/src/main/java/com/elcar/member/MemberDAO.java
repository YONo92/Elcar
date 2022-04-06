package com.elcar.member;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.elcar.dto.Member;

@Mapper
@Repository
public interface MemberDAO {

	Member selectMember_kakao(String id) throws Exception;
	void insertMember(Member mem) throws Exception;
	Member queryMember(String id) throws Exception;
	Member queryMember_email(String id) throws Exception;
	Member queryMember_nickname(String nickname)throws Exception;
	void updateUserPassword(@Param(value="id") String id, @Param(value="pw")String pw) throws Exception;;

}
