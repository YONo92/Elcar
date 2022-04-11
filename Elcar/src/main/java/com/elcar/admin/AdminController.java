package com.elcar.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.elcar.dto.Driver;
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

}
