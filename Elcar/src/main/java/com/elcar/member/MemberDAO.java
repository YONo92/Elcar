package com.elcar.member;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.elcar.dto.Member;

@Mapper
@Repository
public interface MemberDAO {

	Member selectMember_kakao(String id) throws Exception;
	void insertMember(Member mem) throws Exception;
	Member queryMember(String id) throws Exception;

}
