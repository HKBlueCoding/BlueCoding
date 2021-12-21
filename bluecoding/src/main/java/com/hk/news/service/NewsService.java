package com.hk.news.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.news.dao.NewsDAO;
import com.hk.news.vo.NewsVO;
import com.hk.newsreply.dao.NewsReplyDAO;
import com.hk.newsreply.vo.NewsReplyVO;
import com.hk.user.vo.UserVO;

@Service
public class NewsService {
	private static final Logger logger = LoggerFactory.getLogger(NewsService.class);

	@Autowired
	NewsDAO newsDAO;

	@Autowired
	NewsReplyDAO newsReplyDAO;

	// [뉴스 글추가]
	public int addNews(NewsVO newsVO) {
		// TODO Auto-generated method stub

		// 1. 실제로 추가함
		int ret = newsDAO.newsAdd(newsVO);
		logger.debug("[뉴스 글쓰기 결과]===" + ret);
		String image = newsVO.getNewsImage();

		// 2. 만약 성공시, PK를 조회해서 받아옴
		if (ret > 0 && !image.isEmpty()) {
			logger.debug("[news VO]==" + newsVO);
			newsVO = newsDAO.selectNewsNO(newsVO);
		}

		return newsVO.getNewsNO();
	}

	public Map<String, Object> listNewsNotice(Map<String, Integer> pageMap) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		
		// 모든 Notice의 글중에서 해당 section의 페이지만
		List<NewsVO> noticeList = newsDAO.listNoticeNews(pageMap);
		
		int totNoticeNO = newsDAO.selectTotNotice();
	
		map.put("noticeList", noticeList);
		map.put("totNoticeNO",totNoticeNO);
		
		return map;
	}

	public Map<String, Object> listNewsEvent(Map<String, Integer> pageMap) {
		// TODO Auto-generated method stub
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<NewsVO> eventList = newsDAO.listEventNews(pageMap);
		int totEventNO = newsDAO.selectTotEvent();
		
		map.put("eventList", eventList);
		map.put("totEventNO", totEventNO);
		
		return map;
	}

	public NewsVO newsOne(int newsNO) {
		// TODO Auto-generated method stub

		return newsDAO.oneNews(newsNO);
	}

	public Map<String, Object> newsList(int newsNO) {
		// TODO Auto-generated method stub
		// 하나는 해당 게시글하나
		NewsVO newsVO = newsDAO.oneNews(newsNO);
		// 그 게시글의 댓글
		List<NewsReplyVO> newsReplyVO = newsReplyDAO.listNewsReply(newsNO); // newsNO
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("newsVO", newsVO);
		map.put("newsReplyVO", newsReplyVO);

		return map;
	}

	public int updateNews(NewsVO newsVO) {
		// TODO Auto-generated method stub

		return newsDAO.newsUpdate(newsVO);
	}

	public int addReply(NewsReplyVO newsReplyVO) {
		// TODO Auto-generated method stub
		return newsReplyDAO.insertReply(newsReplyVO);
	}

	public int updateReply(NewsReplyVO newsReplyVO) {
		// TODO Auto-generated method stub

		return newsReplyDAO.replyUpdate(newsReplyVO);
	}
}
