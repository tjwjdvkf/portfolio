package com.sjh.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.sjh.service.BoardService;
import com.sjh.vo.BoardVO;

import com.sjh.vo.SearchVO;

@Controller
public class BoardController {

	@Inject
	private BoardService service;
	
		//글 리스트
		@RequestMapping(value="boardlist.do")
		public String listAll(SearchVO searchVO, Model model)throws Exception{
			
			searchVO.pageCalculate(service.boardCnt());	 // startRow, endRow
			
			List<BoardVO> list = service.listAll(searchVO);
			model.addAttribute("list", list);
			model.addAttribute("searchVO", searchVO);
			
			System.out.println(searchVO.toString());
			
			return "/index/boardlist";
		}
		//글 읽기
		//detail
			@RequestMapping("/boardread.do")
			public String read(@RequestParam("bno") int bno, Model model) throws Exception {
				
				
				model.addAttribute(service.read(bno));
				model.addAttribute(service.readCnt(bno));
				return "index/boardread";
			}

	
}
