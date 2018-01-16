package com.sjh.service;



import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.sjh.vo.LoginVO;
import com.sjh.vo.SignupVO;

public interface SignupService {

		//회원가입
		public void insert(SignupVO vo)throws Exception;
		//로그인
		//public SignupVO login(LoginVO vo) throws Exception;
		
		//아이디 체크 ajax
		int loginch(SignupVO vo)throws Exception;
		
		public String loginch1(SignupVO vo)throws Exception;
		
		
		//비번ch
		String loginpwdch(SignupVO vo)throws Exception;
		//로그아웃
		public void logout(HttpSession session, Model model);
		
		
		//회원정보
		public SignupVO myinfolist(String cpid) throws Exception;
		//public String myfolist(SignupVO vo)throws Exception;
		
		
		
}
