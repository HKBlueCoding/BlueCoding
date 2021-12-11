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

	@GetMapping(value="/news/notice/view")
	public String noticeView() {
		
		return "noticeView"; 
	}
	
	@GetMapping(value="/news/event/view")
	public String eventView() {
		
		return "eventView";
	}

	@GetMapping(value="/news/notice/update")
	public String newsUpdate() {
		
		return "noticeUpdate";
	}
	@GetMapping(value="/news/event/update")
	public String eventUpdate() {
		
		return "eventUpdate";
	}

}
