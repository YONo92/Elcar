package com.elcar.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	@GetMapping(value = {"/", ""})
	public String main() {
		return "main/main";
	}
	
//	@GetMapping("login")
//	public String login() {
//		return "main/login";
//	}
//	
//	@GetMapping("join")
//	public String join() {
//		return "main/join";
//	}
	
	@GetMapping("/about")
	public String about() {
		return "about/about";
	}
	
	@GetMapping("/charger")
	public String charger() {
		return "charger/charger";
	}
	
	@GetMapping("/driver-regist")
	public String driverregist() {
		return "about/driver-regist";
	}
	
	@GetMapping("/commu")
	public String commu() {
		return "about/commu";
	}
	
	@GetMapping("/share")
	public String share() {
		return "share/share";
	}
	
	@GetMapping("/mypage")
	public String mypage() {
		return "mypage/mypage";
	}
	
}