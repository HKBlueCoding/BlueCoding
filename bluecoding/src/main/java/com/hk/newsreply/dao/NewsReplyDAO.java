package com.hk.newsreply.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.newsreply.vo.NewsReplyVO;

@Repository
public class NewsReplyDAO {

	@Autowired
	SqlSession sqlSession;

	public List<NewsReplyVO> listNewsReply(int newsNO) {
		// TODO Auto-generated method stub
		List<NewsReplyVO> newsReplyVO = sqlSession.selectList("mapper.newsReply.selectAllNewsReply", newsNO);
		
		return newsReplyVO;
	}
}
