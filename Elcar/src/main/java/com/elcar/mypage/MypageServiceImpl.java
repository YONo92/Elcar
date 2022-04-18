package com.elcar.mypage;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.elcar.dto.Driver;
import com.elcar.dto.Driver_report;
import com.elcar.dto.History;
import com.elcar.dto.Member;

@Service
public class MypageServiceImpl implements MypageService {

   @Autowired
   MypageDAO mypageDAO;

   // 멤버 정보 가져오기
   @Override
   public Member mypageInfo(String id) throws Exception {
      Member member = mypageDAO.queryMember(id);
      return member;
   }

   // 프로필 수정
   @Override
   public void memberModify(Member member) throws Exception {
      System.out.println(member.toString());
      mypageDAO.updateMember(member);
   }

   // 비밀번호 변경
   @Override
   public void memberPasswordModify(String id, String password) throws Exception {
      Map<String, String> mapParam = new HashMap<String, String>();
      mapParam.put("id", id);
      mapParam.put("pw", password);
      mypageDAO.updatePw(mapParam);
   }

   // 회원탈퇴
   @Override
   public void deleteMember(String id) throws Exception {
      mypageDAO.deleteId(id);
   }

   // 매너 점수 현재 받은 포인트 조회
   @Override
   public List<History> mannerDriverPointbatki(String id) throws Exception {
      List<History> historyList = mypageDAO.queryDriverPoint("giver_id", id);
      return historyList;
   }

   // 매너 점수 현재 받은 포인트 조회
   @Override
   public List<History> mannerDDubukPointbatki(String id) throws Exception {
      List<History> historyList = mypageDAO.queryDDubukPoint("giver_id", id);
      return historyList;
   }

   // 이용내역 조회
   @Override
   public List<History> mannerDriverPointjugi(String id) throws Exception {
      List<History> historyList = mypageDAO.queryDriverPoint("taker_id",id);
      return historyList;
   }

   // 이용내역 조회
   @Override
   public List<History> mannerDDubukPointjugi(String id) throws Exception {
      List<History> historyList = mypageDAO.queryDDubukPoint("taker_id",id);
      return historyList;
   }

   // 드라이버 정보 가져오기
   @Override
   public Driver selectDriverInfo(String id) throws Exception {
      Driver driver = mypageDAO.queryDriver(id);
      return driver;
   }

   // 매너포인트 주기
   @Override
   public History giveDDubukPoint(String id) throws Exception {
      History history = mypageDAO.insertDDubukPoint(id);
      return history;
   }

   // 매너포인트 주기
   @Override
   public History giveDriverPoint(String id) throws Exception {
      History history = mypageDAO.insertDriverPoint(id);
      return history;
   }

   // 이용 내역 평가1(insert)
   @Override
   public void insertToHistory(String id) throws Exception {
      mypageDAO.insertHistory(id);
   }

   // 이용 내역 평가2(update)
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

   // 이용 내역 신고 등록
   @Override
   public void insertSingo(Driver_report dr) throws Exception {
      mypageDAO.insertDriverReport(dr);
   }

   @Override
   public List<Driver_report> selectDriverReportBySingoId(String user_id) throws Exception {
      return mypageDAO.selectDriverReportBySingoId(user_id);
   }

   // 신고내역 조회에서 num으로 조회 (driver_report)
   @Override
   public Driver_report selectDriverReportByNum(int num) throws Exception {
      Driver_report dr = mypageDAO.selectDriverReportByNum(num);
      return dr;
   }

}