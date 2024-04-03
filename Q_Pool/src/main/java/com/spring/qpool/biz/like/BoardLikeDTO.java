package com.spring.qpool.biz.like;

import lombok.Data;

@Data
public class BoardLikeDTO {
	
	private int boardLikeIdx;	// 게시글 좋아요 번호
	private int boardIdx;		// 게시글 번호
	private String memberId;	// 회원아이디
	
	private String searchCondition;
}
