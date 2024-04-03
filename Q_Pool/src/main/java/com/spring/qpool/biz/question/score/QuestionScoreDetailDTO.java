package com.spring.qpool.biz.question.score;

import lombok.Data;

@Data
public class QuestionScoreDetailDTO {

	private int questionScoreDetailIdx;	// 상세 성적 번호
	private int subjectTypeIdx;			// 과목 번호
	private int questionBoardIdx;		// 문제 번호
	private String memberId;			// 회원 아이디
	private String answerCheck;			// 정답 여부
	
	private String searchCondition;
}
