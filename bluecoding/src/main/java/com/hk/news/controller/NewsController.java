package com.hk.news.controller;

import java.io.IOException;
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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hk.news.service.NewsService;
import com.hk.news.vo.NewsVO;

@Controller
public class NewsController {

	private static final Logger logger = LoggerFactory.getLogger(NewsController.class);

	@Autowired
	NewsService newsService;

	@GetMapping("/news/add")
	public String newsAdd() {
		// 11
		return "newsAdd";
	}

	@PostMapping("/news/add")
	public String newsAddDone(Model model, @ModelAttribute NewsVO newsVO, HttpServletResponse response)
			throws IOException {
		logger.debug("[newsVO] = " + newsVO);
		response.setContentType("text/html; charset=UTF-8");

		int ret = newsService.addNews(newsVO);
		model.addAttribute("ret", ret);

		// 해당 게시판으로 이동하려면
		model.addAttribute("category", newsVO.getCategory());
		logger.debug("[ret] = " + ret);

		return "done/newsAddDone";
	}

	@RequestMapping(value = "/news/notice", method = RequestMethod.GET)
	public String notice(Model model) {
		// 리스트
		List<NewsVO> newsList = newsService.listNewsNotice();
		model.addAttribute("newsList", newsList);
		logger.debug("[newsList] = " + newsList);
		return "notice";
	}

	@RequestMapping(value = "/news/event", method = RequestMethod.GET)
	public String event(Model model) {
		List<NewsVO> newsList = newsService.listNewsEvent();
		model.addAttribute("newsList", newsList);
		logger.debug("[newsList] = " + newsList);
		return "event";
	}

//	@GetMapping("/news/notice/view")
//	public String noticeView(Model model, @RequestParam("newsNO") int newsNO) {
//		NewsVO newsVO = newsService.newsOne(newsNO);
//		// list -> vo 1개
//		// vo
//		model.addAttribute("newsVO", newsVO);
//		logger.debug("[newsVO] = " + newsVO);
//
//		return "noticeView";
//	}
	
	@GetMapping("/news/notice/view")
	public String noticeView(Model model, @RequestParam("newsNO") int newsNO) {
		NewsVO newsVO = newsService.newsOne(newsNO);
		// list -> vo 1개
		// vo
		model.addAttribute("newsVO", newsVO);
		logger.debug("[newsVO] = " + newsVO);

		return "noticeView";
	}

	@GetMapping("/news/event/view")
	public String eventView(Model model, @RequestParam("newsNO") int newsNO) {
		NewsVO newsVO = newsService.newsOne(newsNO);
		// list -> vo 1개
		// vo
		model.addAttribute("newsVO", newsVO);
		logger.debug("[newsVO] = " + newsVO);

		return "eventView";
	}

	@GetMapping("/news/notice/update")
	public String newsNoticeUpdate(Model model, @RequestParam("newsNO") int newsNO) {
		NewsVO newsVO = newsService.newsOne(newsNO);
		model.addAttribute("newsVO", newsVO);

		return "noticeUpdate";
	}

	@PostMapping("/news/notice/update")
	public String newsNoticeUpdateDone(Model model, @ModelAttribute NewsVO newsVO) throws IOException {
		logger.debug("[newsVO] = " + newsVO);

		int ret = newsService.updateNews(newsVO);
		model.addAttribute("ret", ret);
		logger.debug("[ret] = " + ret);

		model.addAttribute("category", newsVO.getCategory());
		return "done/noticeUpdateDone";
	}

	@GetMapping("/news/event/update")
	public String newsEventUpdate(Model model, @RequestParam("newsNO") int newsNO) {
		NewsVO newsVO = newsService.newsOne(newsNO);
		model.addAttribute("newsVO", newsVO);

		return "eventUpdate";
	}

	@PostMapping("/news/event/update")
	public String newsEventUpdateDone(Model model, @ModelAttribute NewsVO newsVO) throws IOException {
		logger.debug("[newsVO] = " + newsVO);

		int ret = newsService.updateNews(newsVO);
		model.addAttribute("ret", ret);
		logger.debug("[ret] = " + ret);

		model.addAttribute("category", newsVO.getCategory());
		return "done/eventUpdateDone";
	}

}
