package com.hk.book.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hk.book.service.BookService;
import com.hk.book.vo.BookVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BookController {
	
	@Autowired
	BookService bookService;
	
	private static final Logger logger = LoggerFactory.getLogger(BookController.class);
		
	// 메인 페이지
	@GetMapping("/")
	public String home(Model model) {
		
		return "main";
	}

	@GetMapping("/list")
	public String bookList(Model model) {
		
		List<BookVO> bookList = bookService.listBook();
		model.addAttribute("bookList", bookList);
		logger.debug("[bookList] = " + bookList);
		
		return "bookList";
	}
	
	@GetMapping("/add")
	public String bookAdd() {
		
		return "bookAdd";
	}
	
	@PostMapping("/add")
	public String bookAddDone(Model model, @ModelAttribute BookVO bookVO, HttpServletResponse response) {
		logger.debug("[bookVO] = " + bookVO);
		response.setContentType("text/html; charset=UTF-8");

		int ret = bookService.addBook(bookVO);
		model.addAttribute("ret", ret);
		
		return "done/bookAddDone";
	}	
	
	@GetMapping("/view")
	public String bookView(Model model, @RequestParam("bookNO") int bookNO) {
		
		Map<String, Object> map = bookService.bookOneList(bookNO);
		logger.debug("[map] = " + map);
		logger.debug("[bookNO] = " + bookNO);
		
		model.addAttribute("bookVO", map.get("bookVO"));
		model.addAttribute("reviewVO", map.get("reviewVO"));
		model.addAttribute("pageVO", map.get("pageVO"));
		
		return "bookView";
	}
	
	@GetMapping("/update")
	public String bookUpdate(Model model, @RequestParam("bookNO") int bookNO) {
		logger.debug("[bookNO11] = " + bookNO);
		
		BookVO bookVO = bookService.bookOne(bookNO);
		model.addAttribute("bookVO", bookVO);
		logger.debug("[bookVO11] = " + bookVO);
		
		return "bookUpdate";
	}
	
	@PostMapping("/update")
	public String bookUpdateDone(Model model, @ModelAttribute BookVO bookVO) {
		logger.debug("[bookVO22] = " + bookVO);

		int ret = bookService.updateBook(bookVO);
		model.addAttribute("ret", ret);
		logger.debug("[ret] = " + ret);

		model.addAttribute("theme", bookVO.getTheme());
		
		return "done/bookUpdateDone";
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
