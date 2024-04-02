package com.spring.qpool.controller.user.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.spring.qpool.biz.member.MemberDTO;
import com.spring.qpool.biz.member.MemberService;

import jakarta.servlet.http.HttpSession;


@Controller
public class LoginController {
	
	@Autowired
	MemberService memberservice;
	
	@PostMapping("/login")
	public String login(MemberDTO mDTO, Model model, HttpSession session) {
		System.out.println("login 요청 들어옴");
		mDTO = memberservice.selectOne(mDTO);
		
		if(mDTO == null) {
			model.addAttribute("msg", "로그인 실패!");
			return "common/goback";
		}
		if(mDTO.getMemberRole().equals("2")) {	// 관리자 로그인
			session.setAttribute("adminDTO", mDTO);
			return "admin/adminMain";
		}
		session.setAttribute("member", mDTO);	// 사용자 로그인
		return "user/main";
	}
	
	@GetMapping("/logout")
	public String loginPage(HttpSession session) {
		
		session.removeAttribute("member");
		
		return "user/main";
	}
	
	@GetMapping("/loginPage")
	public String loginPage() {
		
		return "user/login/login";
	}
}
