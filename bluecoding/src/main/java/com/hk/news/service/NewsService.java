package com.hk.news.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.news.dao.NewsDAO;
import com.hk.news.vo.NewsVO;
import com.hk.newsreply.dao.NewsReplyDAO;
import com.hk.newsreply.vo.NewsReplyVO;

@Service
public class NewsService {

	@Autowired
	NewsDAO newsDAO;
	
	@Autowired
	NewsReplyDAO newsReplyDAO;
	
	public int addNews(NewsVO newsVO) {
		// TODO Auto-generated method stub
		return newsDAO.newsAdd(newsVO);
	}
	
	public List<NewsVO> listNewsNotice() {
		// TODO Auto-generated method stub
		return newsDAO.listNoticeNews();
	}
	
	public List<NewsVO> listNewsEvent() {
		// TODO Auto-generated method stub
		return newsDAO.listEventNews();
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

}
