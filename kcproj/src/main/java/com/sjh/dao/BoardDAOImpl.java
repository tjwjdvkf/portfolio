package com.sjh.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.sjh.vo.BoardVO;
import com.sjh.vo.SearchVO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject
	private SqlSession session;
	
	

	@Override
	public List<BoardVO> listAll(SearchVO searchVO) throws Exception {

		return session.selectList("listAll",searchVO);
	}
	
	@Override
	public BoardVO read(Integer bno) throws Exception {
		
		return session.selectOne("read",bno);
	}
	
	

	@Override
	public Integer boardCnt() {

		return session.selectOne("boardCnt");
	}

	@Override
	public Object readCnt(int bno) {
		
		return session.update("readCnt",bno);
	}

	
	
}
