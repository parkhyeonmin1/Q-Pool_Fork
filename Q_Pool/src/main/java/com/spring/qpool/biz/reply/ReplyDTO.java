package com.spring.qpool.biz.reply;

import java.util.Date;

import lombok.Data;

@Data
public class ReplyDTO {
	
	private int replyIdx;			// 대댓글 번호
	private int commentIdx;			// 댓글 번호
	private String replyContent;	// 대댓글 내용
	private String replyWriter;		// 작성자
	private Date replyRegDate;		// 작성일자
}
