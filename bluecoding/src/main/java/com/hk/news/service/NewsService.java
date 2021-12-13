package com.hk.news.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

//	public Map<String, Object> addNews(int newsNO) {
//		// TODO Auto-generated method stub
//		
//		NewsVO newsVO = newsDAO.selectArticle(articleNO);
//		MemberVO memberVO = memberDAO.selectName(articleVO.getId());
//		logger.debug("articleVO = " + articleVO.toString());
//		logger.debug("memberVO = " + memberVO.toString());
//		
//		Map<String, Object> map = new HashMap<String, Object>();
//		
//		map.put("articleVO", articleVO);
//		map.put("memberVO", memberVO);
//
//		return map;
//	}
	
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

	public int updateNews(NewsVO newsVO) {
		// TODO Auto-generated method stub
		
		return newsDAO.updateArticleNews(newsVO);
	}

}
