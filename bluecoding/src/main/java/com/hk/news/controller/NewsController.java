package com.hk.news.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NewsController {

	@GetMapping("/news/add")
	public String newsAdd() {
		// 11
		return "newsAdd";
	}
	
	@RequestMapping(value="/news/notice", method=RequestMethod.GET)
	public String notice() {
		
		return "notice";
	
	}
	
	@RequestMapping(value="/news/event", method=RequestMethod.GET)
	public String event() {
		
		return "event";
	
	}

}
