package com.hk.news.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hk.news.service.NewsService;
import com.hk.news.vo.NewsVO;

@Controller
public class NewsController {
	
	@Autowired
	NewsService newsService;
	
	@GetMapping("/news/add")
	public String newsAdd() {
		// 11
		return "newsAdd";
	}	
	@PostMapping("/news/add")
	public void newsAddDone(Model model, @ModelAttribute NewsVO newsVO, HttpServletResponse response) throws IOException {
		int ret = newsService.addArticleNews(newsVO);
		model.addAttribute("ret", ret);
		PrintWriter pw = response.getWriter();
		if(ret == 1) {
			
			pw.println("<script>"
					+ "	alert('글작성에 성공하엿습니다.'); "
					+ " location.href='../../'; "
					+ " </script>");
			return;
		}
		
		pw.println("<script>"
				+ "	alert('글작성에 실패하엿습니다.'); "
				+ " location.href='../../'; "
				+ " </script>");
		
		return;
	}
	
	@RequestMapping(value="/news/notice", method=RequestMethod.GET)
	public String notice() {
		// 리스트
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
