package com.hk.newsreply.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.newsreply.vo.NewsReplyVO;

@Repository
public class NewsReplyDAO {

	@Autowired
	SqlSession sqlSession;

	public int addArticleNewsReply(NewsReplyVO newsReplyVO) {
		// TODO Auto-generated method stub
		int ret = sqlSession.insert("mapper.newsReply.insertNewsReply", newsReplyVO);
		return ret;
	}
}
