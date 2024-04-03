package com.spring.qpool.biz.question.explanation;

import lombok.Data;

@Data
public class QuestionExplanationDTO {
	
	private int questionExplanationIdx;	// 해설 번호 
	private int questionBoardIdx;		// 문제 번호
	private String explanation;			// 해설 내용 
	private String memberId;			// 회원 아이디
	
}
