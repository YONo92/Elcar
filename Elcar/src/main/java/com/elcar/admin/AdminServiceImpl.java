package com.elcar.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.elcar.dto.Driver;
import com.elcar.dto.Driver_report;
import com.elcar.dto.Member;
import com.elcar.dto.PageInfo;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminDAO admindao;

	// 관리자_회원 관리
	@Override
	public List<Member> allmemList(int page, PageInfo pageInfo, String mem_text) throws Exception {
		int listCount = admindao.selectallmemCount(mem_text);
		// table에 있는 모든 row 개수

		int maxPage = (int) Math.ceil((double) listCount / 10);
		// 그 개수를 10으로 나누고 올림처리하여 페이지 수 계산

		// 아래 2개의 알고리즘은 현재 하나의 페이지에 글 목록을 10개 보여주고
		// 아래에 페이지 이동 버튼도 10개로 구성하고자 하기 위함이다.
		int startPage = (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1;
		// 현재 페이지에 보여줄 시작 페이지 수(1, 11, 21, ...)

		int endPage = startPage + 10 - 1;
		// 현재 페이지에 보여줄 마지막 페이지 수(10, 20, 30, ...)

		if (endPage > maxPage)
			endPage = maxPage;
		pageInfo.setStartPage(startPage);
		pageInfo.setEndPage(endPage);
		pageInfo.setMaxPage(maxPage);
		pageInfo.setPage(page);
		pageInfo.setListCount(listCount);
		// 컨트롤러가 생성한 pageInfo 객체를 해당 메서드의 매개변수로 넘겨준다,
		// 메서드는 해당 객체의 값을 setter로 초기화하면 컨트롤러에서 초기화된 값을
		// getter로 받을 수 있다.
		// 즉, getBoardList를 호출한 컨트롤러에 생성된(new) pageInfo 객체에 초기화하는 것이다.

		int startrow = (page - 1) * 10 + 1;
		return admindao.selectallmemList(startrow, mem_text);
	}

	// 관리자_드라이버 회원 관리
	@Override
	public List<Driver> alldriverList(int page, PageInfo pageInfo, String mem_text) throws Exception {
		int listCount = admindao.selectalldriverCount(mem_text);
		// table에 있는 모든 row 개수

		int maxPage = (int) Math.ceil((double) listCount / 10);
		// 그 개수를 10으로 나누고 올림처리하여 페이지 수 계산

		// 아래 2개의 알고리즘은 현재 하나의 페이지에 글 목록을 10개 보여주고
		// 아래에 페이지 이동 버튼도 10개로 구성하고자 하기 위함이다.
		int startPage = (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1;
		// 현재 페이지에 보여줄 시작 페이지 수(1, 11, 21, ...)

		int endPage = startPage + 10 - 1;
		// 현재 페이지에 보여줄 마지막 페이지 수(10, 20, 30, ...)

		if (endPage > maxPage)
			endPage = maxPage;
		pageInfo.setStartPage(startPage);
		pageInfo.setEndPage(endPage);
		pageInfo.setMaxPage(maxPage);
		pageInfo.setPage(page);
		pageInfo.setListCount(listCount);
		// 컨트롤러가 생성한 pageInfo 객체를 해당 메서드의 매개변수로 넘겨준다,
		// 메서드는 해당 객체의 값을 setter로 초기화하면 컨트롤러에서 초기화된 값을
		// getter로 받을 수 있다.
		// 즉, getBoardList를 호출한 컨트롤러에 생성된(new) pageInfo 객체에 초기화하는 것이다.

		int startrow = (page - 1) * 10 + 1;
		return admindao.selectalldriverList(startrow, mem_text);
	}

	// 관리자_드라이버 회원 관리_status 업데이트 처리
	// 관리자_드라이버 회원 관리_멤버 라이센스 업데이트 처리
	@Override
	public void driverModify(int num, int status) throws Exception {
		admindao.updateDriver(num, status); // 드라이버 status 변경 db업데이트
		admindao.updateLicense(num, status); // 드라이버 승인/반려한 경우 -> 멤버_라이센스 db업데이트
	}

	// 관리자_드라이버 신고 회원 관리
	@Override
	public List<Driver_report> alldriversingoList(int page, PageInfo pageInfo, String mem_text) throws Exception {
		int listCount = admindao.selectalldriversingoCount(mem_text);
		// table에 있는 모든 row 개수

		int maxPage = (int) Math.ceil((double) listCount / 10);
		// 그 개수를 10으로 나누고 올림처리하여 페이지 수 계산

		// 아래 2개의 알고리즘은 현재 하나의 페이지에 글 목록을 10개 보여주고
		// 아래에 페이지 이동 버튼도 10개로 구성하고자 하기 위함이다.
		int startPage = (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1;
		// 현재 페이지에 보여줄 시작 페이지 수(1, 11, 21, ...)

		int endPage = startPage + 10 - 1;
		// 현재 페이지에 보여줄 마지막 페이지 수(10, 20, 30, ...)

		if (endPage > maxPage)
			endPage = maxPage;
		pageInfo.setStartPage(startPage);
		pageInfo.setEndPage(endPage);
		pageInfo.setMaxPage(maxPage);
		pageInfo.setPage(page);
		pageInfo.setListCount(listCount);
		// 컨트롤러가 생성한 pageInfo 객체를 해당 메서드의 매개변수로 넘겨준다,
		// 메서드는 해당 객체의 값을 setter로 초기화하면 컨트롤러에서 초기화된 값을
		// getter로 받을 수 있다.
		// 즉, getBoardList를 호출한 컨트롤러에 생성된(new) pageInfo 객체에 초기화하는 것이다.

		int startrow = (page - 1) * 10 + 1;
		return admindao.selectalldriversingoList(startrow, mem_text);
	}

	@Override
	public void singoBadUser(int num, int point, int status) throws Exception {
		// num으로 driverReport를 조회해서 status 를 1로 업데이트
		
		
	}
}