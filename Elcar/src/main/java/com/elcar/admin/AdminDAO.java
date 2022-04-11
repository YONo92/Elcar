package com.elcar.admin;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.elcar.dto.Member;

@Mapper
@Repository
public interface AdminDAO {

	// 관리자_회원 관리
	public int selectallmemCount(@Param(value = "mem_text") String mem_text) throws Exception;

	public List<Member> selectallmemList(@Param(value = "startrow") int startrow,
			@Param(value = "mem_text") String mem_text) throws Exception;

}
