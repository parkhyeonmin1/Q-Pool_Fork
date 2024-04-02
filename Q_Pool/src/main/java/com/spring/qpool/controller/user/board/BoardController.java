package com.spring.qpool.controller.user.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardController {

	@GetMapping("/questionBoardPage") // 질문 게시판
	public String questionBoardPage() {
		
		return "user/board/questionBoard";
	}
	
	@GetMapping("/discussionBoardPage") // 토의 게시판
	public String discussionBoardPage() {
		
		return "user/board/discussionBoard";
	}
	
	
	@GetMapping("/boardWritePage")
	public String boardWritePage() {
		
		return "user/board/boardWrite";
	}
}
