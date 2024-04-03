package com.spring.qpool.biz.member;

import java.util.Date;

import lombok.Data;

@Data
public class MemberDTO {
	private String memberID;			// 아이디
	private String memberPW;			// 비밀번호
	private String memberPWCheck ;		// 비밀번호 확인
	private String memberName;			// 이름
	private String memberPhoneNumber;	// 전화번호
	private String memberEmail;			// 이메일
	private String memberGrade;			// 등급
	private String memberStatus;		// 상태
	private String memberRole;			// 역할
	private String memberBirth;			// 생년월을
	private String profileImage;		// 프로필 이미지
	private Date regDate;				// 가입날짜
	
	private String searchCondition;
}
