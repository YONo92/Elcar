package com.elcar.mypage;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.elcar.dto.Member;

@Service
public class MypageServiceImpl implements MypageService {
	
	@Autowired
	MypageDAO mypageDAO;
	
	@Override
	public Member mypageInfo(String id) throws Exception {
		Member member = mypageDAO.queryMember(id);
		return member;
	}
	
	@Override
	public void memberModify(Member member) throws Exception {
		System.out.println(member.toString());
		mypageDAO.updateMember(member);
	}

	@Override
	public void memberPasswordModify(String id, String password) throws Exception {
		Map<String, String> mapParam = new HashMap<String, String>();
		mapParam.put("id", id);
		mapParam.put("pw", password);
		mypageDAO.updatePw(mapParam);
	}
	
	@Override
	public void deleteMember(String id) throws Exception {
		mypageDAO.deleteId(id);
	}
	
	@Override
	public Member pyeonggaPoint(String id) throws Exception {
		Member member =mypageDAO.queryPoint(id);
		return member;
	}

	
}

	
