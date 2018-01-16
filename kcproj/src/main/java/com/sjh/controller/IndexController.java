package com.sjh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	/*@Inject
	private BoardService service;*/
	
	@RequestMapping("/index.do")
	public String index() {
		return "index/index";
	}

	/*@RequestMapping("/boardlist.do")
	public String boardlist() {
		return "index/boardlist";
	}*/
	
	@RequestMapping("/faqlist.do")
	public String faqlist() {
		return "index/faqlist";
	}
	
	/*@RequestMapping("/login.do")
	public String login() {
		return "index/login";
	}*/
	
	/*@RequestMapping("/signup.do")
	public String signup() {
		return "index/signup";
	}*/
	@RequestMapping("/kclist.do")
	public String kclist() {
		return "index/kclist";
	}
}
