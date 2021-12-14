//package com.hk.newsreply.controller;
//
//import java.io.IOException;
//
//import javax.servlet.http.HttpServletResponse;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PostMapping;
//
//import com.hk.newsreply.service.NewsReplyService;
//import com.hk.newsreply.vo.NewsReplyVO;
//
//@Controller
//public class NewsReplyController {
//	
//	private static final Logger logger = LoggerFactory.getLogger(NewsReplyController.class);
//	
//	@Autowired
//	NewsReplyService newsReplyService;
//	
//	@GetMapping("/news/add")
//	public String newsReplyAdd() {
//		
//		return "newsAdd";
//	}
//	
//	@PostMapping("/news/add")
//	public String newsAddDone(Model model, @ModelAttribute NewsReplyVO newsReplyVO, HttpServletResponse response)
//			throws IOException {
//		logger.debug("[newsReplyVO] = " + newsReplyVO);
//		response.setContentType("text/html; charset=UTF-8");
//
//		int ret = newsReplyService.addNewsReply(newsReplyVO);
//		model.addAttribute("ret", ret);
//
//		logger.debug("[ret] = " + ret);
//
//		return "done/newsAddDone";
//	}
//}
