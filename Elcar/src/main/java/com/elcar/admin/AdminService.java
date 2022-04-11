package com.elcar.admin;

import java.util.List;

import com.elcar.dto.Member;
import com.elcar.dto.PageInfo;

public interface AdminService {

	// 관리자_회원 관리
	public List<Member> allmemList(int page, PageInfo pageInfo, String mem_text) throws Exception;

}
