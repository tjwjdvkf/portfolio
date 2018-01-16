package com.sjh.dao;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.sjh.vo.LoginVO;
import com.sjh.vo.SignupVO;

@Repository
public class SignupDAOImpl implements SignupDAO {

	@Inject
	private SqlSession session;

	@Override
	public void insert(SignupVO vo) throws Exception {
		session.insert("insert",vo);
		
	}
	//인터셉터 로그인
/*	@Override
	public SignupVO login(LoginVO vo) throws Exception {
		
		return session.selectOne("login",vo);
	}*/

	@Override
	public int loginch(SignupVO vo) throws Exception {
		
		return session.selectOne("loginch",vo);
	}

	@Override
	public String loginpwdch(SignupVO vo) throws Exception {
		return session.selectOne("loginpwdch",vo);
	}

	@Override
	public void logout(HttpSession session, Model model) {
	
	}

	@Override
	public String loginch1(SignupVO vo) throws Exception {
		
		return session.selectOne("loginch1",vo);
	}

	@Override
	public SignupVO myinfolist(String cpid) {
		
		return session.selectOne("myinfolist", cpid);
	}
}
