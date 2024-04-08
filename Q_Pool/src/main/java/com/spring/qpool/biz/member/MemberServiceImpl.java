package com.spring.qpool.biz.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("memberService")
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	MemberDAO memberDAO;
	
	@Override
	public List<MemberDTO> selectAll(MemberDTO memberDTO) {
		return memberDAO.selectAll(memberDTO);
	}

	@Override
	public MemberDTO selectOne(MemberDTO memberDTO) {
		System.out.println(memberDTO);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("memberId", memberDTO.getMemberId());
		map.put("memberPw", memberDTO.getMemberPw());
		System.out.println("selectone 들어가기전"+map);
		return memberDAO.selectOne(map);
//		return memberDAO.selectOne(memberDTO);
	}

	@Override
	public boolean insert(MemberDTO memberDTO) {
		return memberDAO.insert(memberDTO); 
	} 

	@Override
	public boolean update(MemberDTO memberDTO) {
		return memberDAO.update(memberDTO);
	}

	@Override
	public boolean delete(MemberDTO memberDTO) {
		return memberDAO.delete(memberDTO);
	}
}
