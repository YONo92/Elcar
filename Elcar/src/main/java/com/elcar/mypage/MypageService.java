package com.elcar.mypage;

import java.util.List;

import com.elcar.dto.Driver;
import com.elcar.dto.Driver_report;
import com.elcar.dto.History;
import com.elcar.dto.Member;

public interface MypageService {
	Member mypageInfo(String member_id) throws Exception;
	void memberModify(Member member) throws Exception;
	void memberPasswordModify(String id, String password) throws Exception;
	void deleteMember(String id) throws Exception;
	List<History> mannerDriverPoint(String id) throws Exception;
	List<History> mannerDDubukPoint(String id) throws Exception;
	Driver selectDriverInfo(String id) throws Exception;
	History giveDDubukPoint(String id) throws Exception;
	History giveDriverPoint(String id) throws Exception;
	void insertToHistory(String id) throws Exception;
	void insertSingo(Driver_report dr) throws Exception;
	History selectHistoryByNum(int num) throws Exception;
	void pointUpdate(int num, int point, String id) throws Exception;
	List<Driver_report> selectDriverReportBySingoId(String user_id) throws Exception;
	
}
