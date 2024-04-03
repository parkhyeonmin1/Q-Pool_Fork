package com.spring.qpool.biz.lecture;

import lombok.Data;

@Data
public class LectureDetailDTO {

	private int lectureDetailIdx;	// 상세 강의 번호
	private int lectureIdx;			// 강의 번호
	private String lectureUrl;		// 강의 URL
	
	private String searchCondition;
}
