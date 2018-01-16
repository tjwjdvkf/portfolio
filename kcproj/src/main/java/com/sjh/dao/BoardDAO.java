package com.sjh.dao;

import java.util.List;

import com.sjh.vo.BoardVO;
import com.sjh.vo.SearchVO;

public interface BoardDAO {
	
	//글 리스트
	public List<BoardVO> listAll(SearchVO searchVO)throws Exception;
	
	//글 디테일
	public BoardVO read(Integer bno)throws Exception;
		
	//글 cnt
	public Integer boardCnt();
	//조회수
	public Object readCnt(int bno);
	
}
