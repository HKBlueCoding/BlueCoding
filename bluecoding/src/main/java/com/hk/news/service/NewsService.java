package com.hk.news.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.news.dao.NewsDAO;
import com.hk.news.vo.NewsVO;

@Service
public class NewsService {

	@Autowired
	NewsDAO newsDAO;
	
	public int addArticleNews(NewsVO newsVO) {
		// TODO Auto-generated method stub
		return newsDAO.addArticleNews(newsVO);
	}


}
