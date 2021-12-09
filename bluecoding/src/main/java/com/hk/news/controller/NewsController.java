package com.hk.news.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NewsController {

	@GetMapping("/news/add")
	public String newsAdd() {
		return "newsAdd";
	}
}
