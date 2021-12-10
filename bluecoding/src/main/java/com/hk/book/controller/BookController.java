package com.hk.book.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BookController {
	
	private static final Logger logger = LoggerFactory.getLogger(BookController.class);
		
	// 메인 페이지
	@GetMapping("/")
	public String home() {
		
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
	
	@GetMapping("/view/add")
	public String bookViewAdd() {
		
		return "bookViewAdd";
	}
	

}
