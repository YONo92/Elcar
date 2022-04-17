package com.elcar.mypage;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.elcar.dto.Driver;
import com.elcar.dto.Driver_report;
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
	
	public List<History> queryDriverPoint(@Param("query")String query, @Param("id") String id) throws Exception;
	public List<History> queryDDubukPoint(@Param("query")String query, @Param("id") String id) throws Exception;
	
	public History  insertDDubukPoint(String id) throws Exception;
	public History  insertDriverPoint(String id) throws Exception;
	public void insertHistory(String id) throws Exception;
	public void updatePoint(String id) throws Exception;
	public History selectHistoryByNum(int num) throws Exception;
	public void updateHistoryPoint(@Param("num") int num, @Param("point") int point) throws Exception;
	public void updateMemberPoint(@Param("num") int num, @Param("point") int point, @Param("id") String id) throws Exception;
	public void insertDriverReport(Driver_report dr)  throws Exception;
	public List<Driver_report> selectDriverReportBySingoId(String user_id)  throws Exception;
	public Driver_report selectDriverReportByNum(int num) throws Exception;	
	
}
