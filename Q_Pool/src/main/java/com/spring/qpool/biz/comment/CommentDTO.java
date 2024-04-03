package com.spring.qpool.biz.comment;

import java.sql.Date;

import lombok.Data;

@Data
public class CommentDTO {
	
	private int commentIdx;			// 댓글 번호
	private int boardIdx;			// 게시글 번호
	private String commentContent;	// 댓글 내용
	private String commentWriter;	// 댓글 작성자
	private Date commentRegDate;	// 작성일자
}
