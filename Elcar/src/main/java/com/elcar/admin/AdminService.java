package com.elcar.admin;

import java.util.List;

import com.elcar.dto.Driver;
import com.elcar.dto.Member;
import com.elcar.dto.PageInfo;

public interface AdminService {

	// 관리자_회원 관리
	public List<Member> allmemList(int page, PageInfo pageInfo, String mem_text) throws Exception;

	// 관리자_드라이버 회원 관리
	public List<Driver> alldriverList(int page, PageInfo pageInfo, String mem_text) throws Exception;

}
