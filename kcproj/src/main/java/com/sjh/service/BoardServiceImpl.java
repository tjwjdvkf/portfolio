package com.sjh.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.sjh.dao.BoardDAO;
import com.sjh.vo.BoardVO;
import com.sjh.vo.SearchVO;

@Service
public class BoardServiceImpl implements BoardService{

	@Inject
	private BoardDAO dao;

	@Override
	public List<BoardVO> listAll(SearchVO searchVO) throws Exception {
		
		return dao.listAll(searchVO);
	}
	
	
	@Override
	public BoardVO read(Integer bno) throws Exception {
		return dao.read(bno);
	}
	
	

	@Override
	public Integer boardCnt() throws Exception {
		
		return dao.boardCnt();
	}

	@Override
	public Object readCnt(int bno) throws Exception {
		
		return dao.readCnt(bno);
	}
}
