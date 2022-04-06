package com.elcar.main;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.elcar.dto.Member;
import com.elcar.member.MemberService;

@Controller
public class MainController {

	@Autowired
	MemberService memserv;

	@Autowired
	HttpSession session;

	@GetMapping(value = { "/", "" })
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
		session.invalidate();
		return "about/about";
	}

	@GetMapping("/charger")
	public String charger() {
		return "charger/charger";
	}

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
		return "main/main";

	}

	@GetMapping("/commu")
	public String commu() {
		return "about/commu";
	}

//	@GetMapping("/charger")
//	public String charger() {
//		return "charger/charger";
//	}

//	@GetMapping("/share")
//	public String share() {
//		return "share/share";
//	}

//	@GetMapping("/mypage")
//	public String mypage() {
//		return "mypage/mypage";
//	}

	@GetMapping("/admin_memlist")
	public String admin_memlist() {
		return "admin/admin_memlist";
	}

	@GetMapping("/admin_driverlist")
	public String admin_driverlist() {
		return "admin/admin_driverlist";
	}

	@GetMapping("/admin_singolist")
	public String admin_singolist() {
		return "admin/admin_singolist";
	}

}