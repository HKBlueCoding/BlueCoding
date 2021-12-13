package com.hk.news.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.news.dao.NewsDAO;
import com.hk.news.vo.NewsVO;

@Service
public class NewsService {

	@Autowired
	NewsDAO newsDAO;
	
	public int addNews(NewsVO newsVO) {
		// TODO Auto-generated method stub
		return newsDAO.addArticleNews(newsVO);
	}

	public List<NewsVO> listNews() {
		// TODO Auto-generated method stub
		return newsDAO.listArticleNews();
	}

	public NewsVO newsOne(int newsNO) {
		// TODO Auto-generated method stub

		return newsDAO.oneNews(newsNO);
	}

	public int updateNews(NewsVO newsVO) {
		// TODO Auto-generated method stub
		
		return newsDAO.updateArticleNews(newsVO);
	}




}
