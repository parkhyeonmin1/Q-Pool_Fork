package com.spring.qpool.biz.subject;

import lombok.Data;

@Data
public class SubjectDTO {
	
	private int subjectTypeIdx;	// 과목 번호
	private String subjectType; // 과목
	
	private String searchCondition;
}
