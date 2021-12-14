package com.hk.qna.controller;

import java.util.List;

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

import com.hk.qna.service.QnaService;
import com.hk.qna.vo.QnaVO;

@Controller
public class QnaController {
	
	private static final Logger logger = LoggerFactory.getLogger(QnaController.class);
	
	@Autowired
	QnaService qnaService;

	// 상담원 페이지
	@GetMapping("/qna")
	public String qna() {
		
		return "qna";
	}
	
	// 일반유저 문의게시판
	@GetMapping("/qna/home")
	public String qnaList(Model model) {
		
		List<QnaVO> qnaList = qnaService.listQna();
		model.addAttribute("qnaList", qnaList);
		return "qnaHome";
	}
	
	// 일반유저 게시글 추가
	@GetMapping("/qna/add")
	public String qnaAdd() {
		
		return "qnaAdd";
	}
	@PostMapping("/qna/add")
	public String qnaAddDone(Model model, @ModelAttribute QnaVO qnaVO, HttpServletResponse response) {
		
		logger.debug("[qnaVO] = " + qnaVO);
		response.setContentType("text/html; charset=UTF-8");
		
		int ret = qnaService.addQna(qnaVO);
		model.addAttribute("ret", ret);
		
		return "done/qnaAddDone";
	}

	// 일반유저 게시글 상세보기
	@GetMapping("/qna/view")
	public String qnaView(Model model, @RequestParam("qnaNO") int qnaNO) {
		logger.debug("[qnaNO] = " + qnaNO);
		QnaVO qnaVO = qnaService.viewQna(qnaNO);
		model.addAttribute("qna", qnaVO);		
		return "qnaView";
	}

	// 일반유저 게시글 수정
	@PostMapping("/qna/update")
	public String qnaUpdate(Model model, @ModelAttribute QnaVO qnaVO) {
		
		logger.debug("Get Attribute [qnaVO] = " + qnaVO);
		int ret = qnaService.modQna(qnaVO);
		model.addAttribute("ret", ret);
		model.addAttribute("qnaNO", qnaVO.getQnaNO());
		
		return "/done/qnaUpdateDone";
	}
	
		
}
