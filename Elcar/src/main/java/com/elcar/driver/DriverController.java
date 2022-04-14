package com.elcar.driver;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.elcar.dto.Driver;
import com.elcar.dto.Member;
import com.elcar.member.MemberService;

@Controller
public class DriverController {

	@Autowired
	HttpSession session;

	@Autowired
	ServletContext servletContext;

	@Autowired
	MemberService memserv;

	@Autowired
	DriverService driverserv;

	// 이미지 보여주기
	@ResponseBody
	@GetMapping("/view/{img}")
	public ResponseEntity<byte[]> getImageAsResponseEntity(@PathVariable String img) {
		HttpHeaders headers = new HttpHeaders();
		InputStream in = servletContext.getResourceAsStream("upload/" + img);
		byte[] media;
		try {
			media = in.readAllBytes();
			headers.setCacheControl(CacheControl.noCache().getHeaderValue());
			ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);
			return responseEntity;
		} catch (IOException e) {
		}
		return null;
	}

	// 드라이버 신청 등록하기
	@ResponseBody
	@PostMapping(value = "/driver-regist")
	public String driverregist(@ModelAttribute Driver driver, Model model, @RequestParam("file") MultipartFile file) {
		try {
			model.addAttribute("id", session.getAttribute("id"));
			String path = servletContext.getRealPath("/upload/");
			String uuid = UUID.randomUUID().toString();

			String newFileName = uuid
					+ file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
			File destFile = new File(path + newFileName);
			driver.setImg(newFileName);
			file.transferTo(destFile);
			driverserv.driverregist(driver);
		} catch (Exception e) {
			e.printStackTrace();
			return "nok";
		}
		return "ok";
	}

	// 드라이버 신청 등록하기_로그인 여부
	@GetMapping("/driver-regist")
	public String driverregist(Model model) {
		String id = (String) session.getAttribute("id");
		try {
			Member mem = memserv.selectMember_kakao(id);
			if (id != null) {
				model.addAttribute("name", mem.getName());
				return "about/driver-regist";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "main/loginform";
	}
}