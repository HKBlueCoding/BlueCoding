package com.hk.qna.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class QnaController {
	
	@GetMapping("/qna")
	public String qna() {
		
		return "qna";
	}
	
	@GetMapping("/qna/home")
	public String qnaList() {
		
		return "qnaHome";
	}
	
	@GetMapping("/qna/add")
	public String qnaAdd() {
		
		return "qnaAdd";
	}

	@GetMapping("/qna/view")
	public String qnaView() {
		
		return "qnaView";
	}
	
	@GetMapping("/qna/update")
	public String qnaUpdate() {
		
		return "qnaUpdate";
	}	
}
