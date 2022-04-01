package com.elcar.share;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.elcar.dto.Share;

@Controller
public class shareController {

	@GetMapping("sharelist")
	public ModelAndView shareList(@ModelAttribute Share share) {
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
}
