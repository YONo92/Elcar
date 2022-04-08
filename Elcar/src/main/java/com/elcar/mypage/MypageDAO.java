package com.elcar.mypage;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.elcar.dto.Driver;
import com.elcar.dto.History;
import com.elcar.dto.Member;

@Mapper
@Repository
public interface MypageDAO {
	public Member queryMember(String member_id) throws Exception;
	public void updateMember(Member member)throws Exception;
	public void updatePw(Map<String,String> mapParam)throws Exception;
	public void deleteId(String member_id) throws Exception;
	public void updatePoint(Member member)throws Exception;
	public Driver queryDriver(String id) throws Exception;
	public List<History> queryDriverPoint(String id) throws Exception;
	public List<History> queryDDubukPoint(String id) throws Exception;
}
