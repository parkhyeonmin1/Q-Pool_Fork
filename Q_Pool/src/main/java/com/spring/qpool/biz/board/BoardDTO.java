package com.spring.qpool.biz.board;

import java.util.Date;

import lombok.Data;

@Data
public class BoardDTO {

	private int boardIdx; 			// 게시판 번호
	private String boardTitle;		// 게시판 제목
	private String boardContent;	// 게시판 내용
	private int boardType;			// 게시판 분류
	private String writer;			// 작성자
	private Date boardRegDate;		// 작성일자
	private Date boardUpdateDate;	// 수정일자
	private Date boardDeleteDate;	// 삭제일자
}
