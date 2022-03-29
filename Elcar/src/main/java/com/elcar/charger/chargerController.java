package com.elcar.charger;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class chargerController {
	@GetMapping("/allcharger")
	public ModelAndView AllCharger() {
		ModelAndView mav = new ModelAndView("charger");
		System.out.println("빅엑시던트");
		return mav;
	}
	
	
}

