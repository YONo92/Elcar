package com.elcar.share;

import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class shareController {

	@GetMapping("sharelist")
	public ModelAndView shareList(@ManagedAttribute )
}
