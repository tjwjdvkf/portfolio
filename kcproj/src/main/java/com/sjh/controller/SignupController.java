package com.sjh.controller;


import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import com.sjh.service.SignupService;
import com.sjh.vo.LoginVO;
import com.sjh.vo.SignupVO;

@Controller
public class SignupController {

	@Inject
	private SignupService service;

	
	//회원가입
	@RequestMapping("/signup.do")
	public String signup() {
		return "index/signup";
	}
	
	//회원가입
		@RequestMapping(value="/signupsave.do" ,method=RequestMethod.POST)
		public String signup(@ModelAttribute SignupVO vo) throws Exception {
			
			

			System.out.println(vo.toString());
			service.insert(vo);
			return "redirect:/index.do";
		}
		

		/*//로그인 처리
		@RequestMapping("/loginch.do")
		public void loginch1(LoginVO dto, HttpSession session, Model model)throws Exception {
			
			SignupVO vo = service.login(vo);
			
			BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
			int ch = service.loginch(vo);
			
		 	if(ch == 1) {
		 		String pwd = vo.getCppwd();
				String encode = service.loginpwdch(vo);
				if(passwordEncoder.matches(pwd, encode)) {
					model.addAttribute("vo", vo);
					
				}
				return ;
		 	}
			
		}*/
		
		@RequestMapping(value="/login.do")
		public String login() {
			return "index/login";
		}
		
		
		@RequestMapping("/loginch.do")
		@ResponseBody public  Map<String, Object> loginck(SignupVO vo,Model model,HttpSession session)throws Exception{
			
			Map<String, Object> map = new HashMap<String, Object>();
			
			String result = "";
			
			BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
			
			int ch = service.loginch(vo);
			
			if(ch == 1) {
				String pwd = vo.getCppwd();
				String encode = service.loginpwdch(vo);
				if(passwordEncoder.matches(pwd, encode)) {
					result = "ok";
					model.addAttribute("vo", vo);
					session.setAttribute("cpid", vo.getCpid());
					System.out.println("===============성공?");
					
				}else {
					result = "fail";
				}
				map.put("result", result);
			}
			return map;
			
		}
		
		@RequestMapping("/logout.do")
		public String logout(HttpSession session,Model model)throws Exception{
			
			service.logout(session,model);
			
			return "redirect:/index.do";
			
		}
		
}
