package com.spring.qpool.biz.board;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.spring.qpool.biz.member.MemberDTO;

@Mapper
public interface BoardDAO {

	List<BoardDTO> selectAll(BoardDTO boardDTO);
	MemberDTO selectOne(Map<String, Object> map);
	boolean insert(BoardDTO boardDTO);
	boolean update(BoardDTO boardDTO);
	boolean delete(BoardDTO boardDTO);
}
