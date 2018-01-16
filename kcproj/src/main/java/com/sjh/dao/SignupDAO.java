package com.sjh.dao;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.sjh.vo.LoginVO;
import com.sjh.vo.SignupVO;

public interface SignupDAO {
	//회원가입
	public void insert(SignupVO vo)throws Exception;
	
	//로그인
	//public SignupVO login(LoginVO vo)throws Exception;
	
	public int loginch(SignupVO vo)throws Exception;
	public String loginch1(SignupVO vo)throws Exception;
	
	public String loginpwdch(SignupVO vo) throws Exception;

	public void logout(HttpSession session, Model model);

	public SignupVO myinfolist(String cpid);
	
	
}
