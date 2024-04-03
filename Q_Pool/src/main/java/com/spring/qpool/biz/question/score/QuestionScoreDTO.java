package com.spring.qpool.biz.question.score;

import lombok.Data;

@Data
public class QuestionScoreDTO {
	
	private int questionScoreIdx;	// 점수 번호
	private int subjectTypeIdx;		// 과목 번호
	private String memberId;		// 회원 아이디
	private int score;				// 점수
	
	private String searchCondition;
}
