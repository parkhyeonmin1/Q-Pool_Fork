package com.spring.qpool.biz.question.board;

import lombok.Data;

@Data
public class QuestionBoardExampleDTO {
	
	private int questionBoardExampleIdx;	// 문제 예제 번호
	private int questionBoardIdx;			// 문제 번호
	private String example;					// 예제 내용
	
	private String searchCondition;
}
