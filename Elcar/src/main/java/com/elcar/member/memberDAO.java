package com.elcar.member;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.elcar.dto.member;

@Mapper
@Repository
public interface memberDAO {

	member selectMember_kakao(String id) throws Exception;
	void insertMember(member mem) throws Exception;
	member queryMember(String id) throws Exception;

}
