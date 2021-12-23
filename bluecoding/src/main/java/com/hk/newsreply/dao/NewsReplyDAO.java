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

	public int insertReply(NewsReplyVO newsReplyVO) {
		// TODO Auto-generated method stub
		int ret = sqlSession.insert("mapper.newsReply.insertReply", newsReplyVO);
		return ret;
	}

	public int replyUpdate(NewsReplyVO newsReplyVO) {
		// TODO Auto-generated method stub
		int ret = sqlSession.update("mapper.newsReply.updateReply", newsReplyVO);
		return ret;
	}

	public int deleteReply(int newsReplyNO) {
		// TODO Auto-generated method stub
		int ret = sqlSession.update("mapper.newsReply.deleteNewsReply", newsReplyNO);
		return ret;
	}
}
