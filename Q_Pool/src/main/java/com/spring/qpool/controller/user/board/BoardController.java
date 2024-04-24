package com.spring.qpool.controller.user.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.spring.qpool.biz.board.BoardDTO;
import com.spring.qpool.biz.board.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
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
	public String boardInsert(BoardDTO boardDTO) {
		
		boardService.insert(boardDTO);
		return "user/board/questionBoard";
	}
}
