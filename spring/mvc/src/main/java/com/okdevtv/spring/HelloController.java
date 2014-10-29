package com.okdevtv.spring;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {

	private static final Logger logger = LoggerFactory.getLogger(
			HelloController.class);

	@RequestMapping(value = "/hello.do")
	public String hello(Locale locale, Model model) {
		logger.info("Hello, the client locale is {}", locale);
		
		model.addAttribute("msg", "Hello!");
		
		return "hello";
	}

}
