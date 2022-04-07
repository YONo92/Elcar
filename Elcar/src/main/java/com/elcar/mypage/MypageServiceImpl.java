package com.elcar.mypage;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.elcar.dto.Driver;
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
	public Member pyeonggaPoint(String id) throws Exception {
		Member member =mypageDAO.queryPoint(id);
		return member;
	}

	//드라이버 정보 가져오기
		@Override
		public Driver selectDriverInfo(String id) throws Exception {
			Driver driver =mypageDAO.queryDriver(id);
			return driver;
		}
}


