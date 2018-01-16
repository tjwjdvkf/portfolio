package com.sjh.controller1;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.sjh.service.BoardService;
import com.sjh.vo.BoardVO;

import com.sjh.vo.SearchVO;

@Controller
public class MboardController {

	@Inject
	private BoardService service;
	
		//글 리스트
		@RequestMapping(value="mboardlist.do")
		public String listAll(SearchVO searchVO, Model model)throws Exception{
			
			searchVO.pageCalculate(service.boardCnt());	 // startRow, endRow
			
			List<BoardVO> list = service.listAll(searchVO);
			model.addAttribute("list", list);
			model.addAttribute("searchVO", searchVO);
			
			System.out.println(searchVO.toString());
			
			return "/main/mboardlist";
		}

	
}
