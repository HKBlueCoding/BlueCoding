package com.hk.board.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hk.board.vo.BoardVO;
import com.hk.book.controller.BookController;

@Controller
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BookController.class);

	// 커뮤니티 게시판
	@RequestMapping(value="/board/list", method= {RequestMethod.GET, RequestMethod.POST})
	public String boardList(Model model) {
		
		return "boardList";
	}
	
	@RequestMapping(value="/board/add", method=RequestMethod.GET)
	public String boardAdd() {
		
		return "boardAdd";
	}
	
	@RequestMapping(value="/board/add", method=RequestMethod.POST)
	public String boardAddDone(Model model, @ModelAttribute BoardVO boardVO) {
		
		return "boardAddDone";
	}
	
	@GetMapping(value="/board/view")
	public String boardView() {
		
		return "boardView";
	}
	
	
	@GetMapping(value="/board/update")
	public String boardUpdate() {
		
		return "boardUpdate";
	}
	
	@RequestMapping(value="/board/delete", method=RequestMethod.GET)
	public String boardDelete(Model model, @RequestParam("articleNO") int articleNO) {
		
		return "boardDelete";
	}
}
