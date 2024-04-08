package com.spring.qpool.biz.member;

import java.util.Date;

import lombok.Data;

@Data
public class MemberDTO {
	private String memberId;			// 아이디
	private String memberPw;			// 비밀번호
//	private String memberPwCheck ;		// 비밀번호 확인
	private String memberName;			// 이름
	private String memberPhoneNumber;	// 전화번호
	private String memberEmail;			// 이메일
	private int memberGrade;			// 등급
	private int memberStatus;			// 상태
	private int memberRole;				// 역할
	private String memberBirth;			// 생년월을
	private String profileImg;		// 프로필 이미지
	private Date regDate;				// 가입날짜
	
//	private String searchCondition;
}
