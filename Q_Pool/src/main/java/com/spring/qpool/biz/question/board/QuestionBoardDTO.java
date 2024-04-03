package com.spring.qpool.biz.question.board;

import lombok.Data;

@Data
public class QuestionBoardDTO {
	
	private int questionBoardIdx;	// 문제 번호
	private int subjectTypeIdx;		// 과목 번호
	private String questionTitle;	// 문제 제목
	private int answer;				// 답
}
