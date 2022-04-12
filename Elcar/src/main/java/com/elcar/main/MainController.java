package com.elcar.main;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	@Autowired
	HttpSession session;

	@GetMapping(value = { "/", "" })
	public String main() {
		return "main/main";
	}

	@GetMapping("/guide")
	public String about() {
		return "guide/guide";
	}

	@GetMapping("/charger")
	public String charger() {
		return "charger/charger";
	}

	@GetMapping("/admin_singolist")
	public String admin_singolist() {
		return "admin/admin_singolist";
	}
}