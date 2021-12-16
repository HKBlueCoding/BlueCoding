package com.hk.pagereply.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.pagereply.vo.PageReplyVO;

@Repository
public class PageReplyDAO {
	
	@Autowired
	SqlSession sqlSession;

	public List<PageReplyVO> listPageReply(int pageNO) {
		// TODO Auto-generated method stub
		List<PageReplyVO> pageReplyVO = sqlSession.selectList("mapper.pageReply.selectAllPageReply", pageNO);
		
		return pageReplyVO;
	}
}
