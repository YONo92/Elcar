package com.elcar.mypage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.elcar.dto.Driver;
import com.elcar.dto.History;
import com.elcar.dto.Member;

@Service
public class MypageServiceImpl implements MypageService {
	
	@Autowired
	MypageDAO mypageDAO;
	
	
	//멤버 정보 가져오기
	@Override
	public Member mypageInfo(String id) throws Exception {
		Member member = mypageDAO.queryMember(id);
		return member;
	}
	
	//프로필 수정
	@Override
	public void memberModify(Member member) throws Exception {
		System.out.println(member.toString());
		mypageDAO.updateMember(member);
	}

	//비밀번호 변경
	@Override
	public void memberPasswordModify(String id, String password) throws Exception {
		Map<String, String> mapParam = new HashMap<String, String>();
		mapParam.put("id", id);
		mapParam.put("pw", password);
		mypageDAO.updatePw(mapParam);
	}
	
	//회원탈퇴
	@Override
	public void deleteMember(String id) throws Exception {
		mypageDAO.deleteId(id);
	}
	
	//매너 점수 현재 포인트 조회
	@Override
	public List<History> mannerDriverPoint(String id) throws Exception {
		List<History> historyList =mypageDAO.queryDriverPoint(id);
		return historyList;
	}
	
	//매너 점수 현재 포인트 조회
		@Override
		public List<History> mannerDDubukPoint(String id) throws Exception {
			List<History> historyList =mypageDAO.queryDDubukPoint(id);
			return historyList;
		}

	//드라이버 정보 가져오기
		@Override
		public Driver selectDriverInfo(String id) throws Exception {
			Driver driver =mypageDAO.queryDriver(id);
			return driver;
		}
		
	//매너포인트 주기
		@Override
		public History giveDDubukPoint(String id) throws Exception {
			History history =mypageDAO.insertDDubukPoint(id);
			return history;
		}
		
	//매너포인트 주기
		@Override
		public History giveDriverPoint(String id) throws Exception {
			History history =mypageDAO.insertDriverPoint(id);
			return history;
		}
		
	//이용 내역 평가1(insert)	
		@Override
		public History insertToHistory(String id) throws Exception {
			History history =mypageDAO.insertHistory(id);
			return history;
		}
	//이용 내역 평가2(update)	
		@Override
		public void pointUpdate(int num, int point, String id) throws Exception {
			mypageDAO.updateHistoryPoint(num, point);
			mypageDAO.updateMemberPoint(num, point, id);
		}

		@Override
		public History selectHistoryByNum(int num) throws Exception {
			History history = mypageDAO.selectHistoryByNum(num);
			return history;
		}
		
		
		//이용 내역 신고 등록	
//		@Override
//		public Driver_report insertSingo(String id) throws Exception {
//			Driver_report driver_report =mypageDAO.insertDriverReport(id);
//			return driver_report;			
//		}		
		
}


