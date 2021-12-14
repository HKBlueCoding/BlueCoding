package com.hk.book.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.hk.user.vo.UserVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BookController {
	
	private static final Logger logger = LoggerFactory.getLogger(BookController.class);
		
	// 메인 페이지
	@GetMapping("/")
	public String home(HttpSession session, Model model) {
		
		UserVO userVO = (UserVO) session.getAttribute("login");
		logger.debug("[세션 감지됨]="+userVO);
		model.addAttribute("login", userVO);
		
		return "main";
	}

	@GetMapping("/list")
	public String bookList() {
		
		return "bookList";
	}
	
	@GetMapping("/add")
	public String bookAdd() {
		
		return "bookAdd";
	}
	
	@GetMapping("/view")
	public String bookView() {
		
		return "bookView";
	}
	
	@GetMapping("/update")
	public String bookUpdate() {
		
		return "bookUpdate";
	}
	
	@GetMapping("/view/add")
	public String bookViewAdd() {
		
		return "bookViewAdd";
	}
	
	@GetMapping("/view/page")
	public String bookViewPage() {
		
		return "bookViewPage";
	}
	
	@GetMapping("/view/update")
	public String bookViewUpdate() {
		
		return "bookViewUpdate";
	}
	

}
