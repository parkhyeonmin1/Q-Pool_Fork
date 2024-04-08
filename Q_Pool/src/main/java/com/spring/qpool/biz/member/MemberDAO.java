package com.spring.qpool.biz.member;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberDAO {
	
	List<MemberDTO> selectAll(MemberDTO memberDTO);
	MemberDTO selectOne(Map<String, Object> map);
//	MemberDTO selectOne(MemberDTO memberDTO);
	boolean insert(MemberDTO memberDTO);
	boolean update(MemberDTO memberDTO);
	boolean delete(MemberDTO memberDTO);
}
