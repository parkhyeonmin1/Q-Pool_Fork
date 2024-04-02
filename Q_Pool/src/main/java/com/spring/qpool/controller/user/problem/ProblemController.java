package com.spring.qpool.controller.user.problem;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProblemController {
	
	@GetMapping("/problemPage") // 문제 목록 페이지
	public String problemPage() {
		
		return "user/problem/problemList";
	}
	
	@GetMapping("/sqldDetail")	// sql 문제 페이지
	public String problemDetailPage() {
		
		return "user/problem/sqldDetail";
	}
	
	@GetMapping("/codingDetail")	// 코딩테스트 문제 페이지
	public String codingDetailPage() {
		
		return "user/problem/codingDetail";
	}
}
