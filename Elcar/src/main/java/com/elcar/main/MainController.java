package com.elcar.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	@GetMapping(value = {"/", ""})
	public String main() {
		return "main/main";
	}
	
	@GetMapping("login")
	public String login() {
		return "main/login";
	}
	
	@GetMapping("join")
	public String join() {
		return "main/join";
	}
}