package com.hk.news.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.news.dao.NewsDAO;
import com.hk.news.vo.NewsVO;
import com.hk.newsreply.vo.NewsReplyVO;

@Service
public class NewsService {

	@Autowired
	NewsDAO newsDAO;
	
	public int addNews(NewsVO newsVO) {
		// TODO Auto-generated method stub
		return newsDAO.addArticleNews(newsVO);
	}
	
	public List<NewsVO> listNewsNotice() {
		// TODO Auto-generated method stub
		return newsDAO.listNoticeNews();
	}
	
	public List<NewsVO> listNewsEvent() {
		// TODO Auto-generated method stub
		return newsDAO.listEventNews();
	}

//	public NewsVO newsOne(int newsNO) {
//		// TODO Auto-generated method stub
//
//		return newsDAO.oneNews(newsNO);
//	}	
	
	public NewsVO newsOne(int newsNO) {
		// TODO Auto-generated method stub
		// 하나는 해당 게시글하나
		NewsVO newsVO = newsDAO.oneNews(newsNO);
		List<NewsReplyVO> list = null; // newsNO
		
		// 그 게시글의 댓글
		
		return newsDAO.oneNews(newsNO);
	}
	
	public int updateNews(NewsVO newsVO) {
		// TODO Auto-generated method stub
		
		return newsDAO.updateArticleNews(newsVO);
	}

}
