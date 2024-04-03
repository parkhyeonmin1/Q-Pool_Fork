package com.spring.qpool.biz.member.info;

import lombok.Data;

@Data
public class RoleDTO {
	private int roleIdx;	// 역할 번호
	private String role;	// 역할
	
	private String searchCondition;
	
}
