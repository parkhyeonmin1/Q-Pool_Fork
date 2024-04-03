package com.spring.qpool.biz.lecture;

import java.util.Date;

import lombok.Data;

@Data
public class LectureDTO {

	private int lectureIdx;			// 강의 번호
	private String lectureTitle;	// 강의 제목
	private String lectureInfo;		// 강의 설명
	private String teacher;			// 강사
	private int price;				// 가격
	private Date regDate;			// 시작일
	private Date endDate;			// 종료일
	
	private String searchCondition;
}