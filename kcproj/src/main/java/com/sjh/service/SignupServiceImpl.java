package com.sjh.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.sjh.dao.SignupDAO;
import com.sjh.vo.SignupVO;


@Service
public class SignupServiceImpl implements SignupService{

	@Inject
	private SignupDAO dao;

	
	@Override
	public void insert(SignupVO vo) throws Exception {
		
		
		BCryptPasswordEncoder scpwd = new BCryptPasswordEncoder();
		System.out.println(vo.toString());
		//암호화 하기전
		  String password = scpwd.encode(vo.getCppwd());
		//암호화 하여 password에 저장
		vo.setCppwd(password);
		System.out.println(vo.toString());
		
		dao.insert(vo);

	}
	

	@Override
	public int loginch(SignupVO vo) throws Exception {
		return dao.loginch(vo);
	}

	@Override
	public String loginpwdch(SignupVO vo) throws Exception {
		return dao.loginpwdch(vo);
	}

	@Override
	public void logout(HttpSession session, Model model) {
		
		session.invalidate();
		
	}


	@Override
	public String loginch1(SignupVO vo) throws Exception {
		
		return dao.loginch1(vo);
	}


	@Override
	public SignupVO myinfolist(String cpid) throws Exception {
		
		return dao.myinfolist(cpid);
	}


	
}
