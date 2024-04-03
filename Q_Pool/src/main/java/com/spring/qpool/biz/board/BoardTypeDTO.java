package com.spring.qpool.biz.board;

import lombok.Data;

@Data
public class BoardTypeDTO {
	
	private int boardTypeIdx;	// 게시판 분류 번호
	private String boardType;	// 게시판 분류
	
	private String searchCondition;
}
