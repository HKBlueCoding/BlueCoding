package com.hk.news.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.news.vo.NewsVO;

@Repository
public class NewsDAO {
	
	@Autowired
	SqlSession sqlSession;

	public int addArticleNews(NewsVO newsVO) {
		// TODO Auto-generated method stub
		int ret = sqlSession.insert("mapper.news.insertNews", newsVO);
		return ret;
	}

}
