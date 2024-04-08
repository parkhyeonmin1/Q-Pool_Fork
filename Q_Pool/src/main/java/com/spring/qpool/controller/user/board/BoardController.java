package com.spring.qpool.controller.user.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

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
	
	
	@GetMapping("/boardWritePage")	// 게시판 작성 페이지
	public String boardWritePage() {
		
		return "user/board/boardWrite";
	}
	
	@PostMapping("/boardInsert")	// 게시글 작성
	public String boardInsert() {
		
		return "user/board/boardWrite";
	}
}
