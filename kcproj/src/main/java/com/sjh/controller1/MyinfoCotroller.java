package com.sjh.controller1;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sjh.service.SignupService;
import com.sjh.vo.SignupVO;

@Controller
public class MyinfoCotroller {

	@Inject
	private SignupService service;


	@RequestMapping("/myinfo.do")
	public String myinfo(HttpSession session ,Model model) throws Exception {
		
		String cpid = session.getAttribute("cpid").toString();
		System.out.println(cpid);
		
		SignupVO loginUser = service.myinfolist(cpid);
		model.addAttribute("vo", loginUser);
		
		return "main/myinfo";
	}
	
	/*@RequestMapping("/myinfo.do")
	public Map<String, Object> myinfo(HttpSession session,SignupVO vo, Model model) throws Exception {
		
		String result = "";
		
		Map<String, Object> map = new HashMap<String,Object>();
		
		
		if(session.getAttribute("cpid").toString() != null) {
			service.myinfolist(vo);
			map.put("cpid", session);
			result = "ok";
			map.put("result", result);
				
			return map;
		}else {
			result = "false";
			return map;
		}
		
		
	}	*/	
}

