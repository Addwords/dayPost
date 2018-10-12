package com.day.post.controller;


import java.util.Locale;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class UrlController {
	
	private static final Logger logger = LoggerFactory.getLogger(UrlController.class);
	
	@RequestMapping(value = "/home.day", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		String loca = locale.toString();
		if(loca.equals("ko_KR")) {
			loca = "대한민국";
		}
		logger.info("환영합니다! 접속하신 지역은 {}입니다.", loca);
		
		//첫화면
		return "home";
	}
	
}
