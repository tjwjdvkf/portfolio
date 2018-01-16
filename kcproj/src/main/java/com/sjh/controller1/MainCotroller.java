package com.sjh.controller1;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainCotroller {

	@RequestMapping("/main.do")
	public String main() {
		return "main/home";
	}
	

}
