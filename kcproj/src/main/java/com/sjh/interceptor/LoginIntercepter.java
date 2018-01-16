package com.sjh.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.sjh.vo.SignupVO;

public class LoginIntercepter extends HandlerInterceptorAdapter {
	private static final String LOGIN = "login"; 
	
	
	protected final Logger logger = LoggerFactory.getLogger(this.getClass());
	   
	  @Override
	  public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
	      throws Exception {
	 
	    logger.info("===========================          START         ===========================");
	    //SignupVO vo  = new SignupVO();
	    HttpSession session = request.getSession();
	    if(session.getAttribute("cpid").toString() == "") {
	    	System.out.println( "로그인 X" );
	    }
	    else {
	    	System.out.println("로그인 O");
	    }
	    
	  //session.setAttribute("cpid", vo.getCpid());
	    /*if(session.getAttribute(vo.getCpid()) != null) {
	    	logger.info("clear login data before");
	    	System.out.println("=========뜸?");
	    	session.removeAttribute(LOGIN);
	    }*/
	     
	    return true;
	  }
	 
	  @Override
	  public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
	      ModelAndView modelAndView) throws Exception {
	 
		  HttpSession session = request.getSession();
		  ModelMap modelMap = modelAndView.getModelMap();
		  Object signupVO = modelMap.get("vo");
		  
		  if(signupVO != null) {
			  logger.info("new login success");
			  session.setAttribute(LOGIN, signupVO);
			  System.out.println("=========뜸=====?");
			  response.sendRedirect("/index.do");
		  }
		  
	    logger.info("===========================          END           ===========================");
	   
	  }


			
}
