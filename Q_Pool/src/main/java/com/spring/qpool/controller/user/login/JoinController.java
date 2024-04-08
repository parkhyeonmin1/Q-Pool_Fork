package com.spring.qpool.controller.user.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class JoinController {

	@GetMapping("/joinPage")
	public String joinPage() {
		
		return "user/login/join";
	}
}
