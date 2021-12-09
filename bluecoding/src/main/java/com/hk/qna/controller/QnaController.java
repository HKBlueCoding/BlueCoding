package com.hk.qna.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class QnaController {

	@GetMapping("/qna/view")
	public String qnaView() {
		
		return "qnaView";
	}
}
