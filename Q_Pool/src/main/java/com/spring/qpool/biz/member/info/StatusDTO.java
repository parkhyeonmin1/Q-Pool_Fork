package com.spring.qpool.biz.member.info;

import lombok.Data;

@Data
public class StatusDTO {
	private int statusIdx;	// 상태 번호
	private String status;	// 상태
	
	private String searchCondition;
}
