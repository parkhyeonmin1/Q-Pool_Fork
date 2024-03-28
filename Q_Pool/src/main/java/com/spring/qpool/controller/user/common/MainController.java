package com.spring.qpool.controller.user.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping("/")
	public String mainPage() {
		System.out.println("main페이지 들어옴");
		
		return "user/main";
	}
	
}
