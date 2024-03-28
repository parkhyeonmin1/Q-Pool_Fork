package com.spring.qpool.controller.user.problem;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProblemController {
	
	@GetMapping("/problemPage")
	public String problemPage() {
		
		return "user/problem/problemList";
	}
	
	@GetMapping("/problemDetail")
	public String problemDetailPage() {
		
		return "user/problem/problemDetail";
	}
}
