package com.spring.qpool.biz.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("boardService")
public class BoardServiceImpl implements BoardService{
	
	@Autowired
	BoardDAO boardDAO;

	@Override
	public List<BoardDTO> selectAll(BoardDTO boardDTO) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BoardDTO selectOne(BoardDTO boardDTO) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean insert(BoardDTO boardDTO) {
		return boardDAO.insert(boardDTO);
	}

	@Override
	public boolean update(BoardDTO boardDTO) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(BoardDTO boardDTO) {
		// TODO Auto-generated method stub
		return false;
	}
	
	
}
