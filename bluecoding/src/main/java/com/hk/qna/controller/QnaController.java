package com.hk.qna.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.hk.qna.service.QnaService;
import com.hk.qna.vo.QnaVO;

@Controller
public class QnaController {
	
	@Autowired
	QnaService qnaService;
	
	@GetMapping("/qna")
	public String qna() {
		
		return "qna";
	}
	
	@GetMapping("/qna/home")
	public String qnaList(Model model) {
		
		List<QnaVO> qnaList = qnaService.listQna();
		model.addAttribute("qnaList", qnaList);
		
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
