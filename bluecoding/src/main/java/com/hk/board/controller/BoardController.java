package com.hk.board.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	@RequestMapping(value="/board/update", method=RequestMethod.GET)
	public String boardView(Model model, @RequestParam("articleNO") int articleNO) {
		
		return "boardView";
	}
	
	@RequestMapping(value="/board/update", method=RequestMethod.POST)
	public String boardUpdate(Model model, @ModelAttribute BoardVO boardVO ) {
		
		return "boardUpdateDone";
	}
	
	@RequestMapping(value="/board/delete", method=RequestMethod.GET)
	public String boardDelete(Model model, @RequestParam("articleNO") int articleNO) {
		
		return "boardDeleteDone";
	}
}
