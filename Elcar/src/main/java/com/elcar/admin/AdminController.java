package com.elcar.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.elcar.dto.Driver;
import com.elcar.dto.Driver_report;
import com.elcar.dto.Member;
import com.elcar.dto.PageInfo;

@Controller
public class AdminController {

	@Autowired
	AdminService adminservice;

	// 관리자_회원 관리
	@GetMapping(value = "/admin_memlist")
	public String admin_allmem(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
			Model model, @RequestParam(value = "mem_text", defaultValue = "") String mem_text) {
		PageInfo pageInfo = new PageInfo();
		try {
			List<Member> mem = adminservice.allmemList(page, pageInfo, mem_text);
			model.addAttribute("mem_text", mem_text);
			model.addAttribute("pageInfo", pageInfo);
			model.addAttribute("mem", mem);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "admin/admin_memlist";
	}

	// 관리자_드라이버 회원 관리
	@GetMapping(value = "/admin_driverlist")
	public String admin_alldriver(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
			Model model, @RequestParam(value = "mem_text", defaultValue = "") String mem_text) {
		PageInfo pageInfo = new PageInfo();
		try {
			List<Driver> driver = adminservice.alldriverList(page, pageInfo, mem_text);
			model.addAttribute("mem_text", mem_text);
			model.addAttribute("pageInfo", pageInfo);
			model.addAttribute("driver", driver);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "admin/admin_driverlist";
	}

	// 관리자_드라이버 회원 관리_status 업데이트, 멤버 라이센스 업데이트 처리
	@ResponseBody
	@PostMapping("admin_driverupdate") // jsp $.ajax 부분
	public String admin_driverupdate(@RequestParam int num, @RequestParam int status) {
		System.out.println("드라이버 데이터에서 num이 " + num + "인 데이터의 status를 " + status + "로 변경");
		try {
			adminservice.driverModify(num, status); // 어드민서비스에서 가져오기
		} catch (Exception e) {
			e.printStackTrace();
		}
		return num + "데이터가 " + status + "상태로 변경되었습니다."; // 페이지가 따로 없기 때문에 이렇게 값을 보여주기 = alert(data);
	}
	// Response~ 쓴 이유는 return 값을 전달하려면 필요하고, 리퀘스트파람으로 넘길 때는 매개변수주의 int num, int
	// status 이렇게 써야함

	// 관리자_드라이버 신고 회원 관리
	@GetMapping(value = "/admin_driversingolist")
	public String admin_driversingo(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
			Model model, @RequestParam(value = "mem_text", defaultValue = "") String mem_text) {
		PageInfo pageInfo = new PageInfo();
		try {
			List<Driver_report> driversingo = adminservice.alldriversingoList(page, pageInfo, mem_text);
			model.addAttribute("mem_text", mem_text);
			model.addAttribute("pageInfo", pageInfo);
			model.addAttribute("driversingo", driversingo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "admin/admin_driversingolist";
	}

	// 관리자_드라이버 신고 회원 관리_매너포인트 & status 처리
	@ResponseBody
	@PostMapping("admin_driverpoint")
	public String admin_driversingo(@RequestParam("num") int num, @RequestParam("minusPoint") int point,
			@RequestParam("status") int status) {
//		System.out.println(num);
//		System.out.println(point);
//		System.out.println(status);
		try {
			adminservice.singoBadUser(num, point, status);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return num + "데이터의 매너포인트가 " + point + " 으로 변경되었습니다.";
	}
}
