package com.hk.boardreply.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.boardreply.vo.BoardReplyVO;

@Repository
public class BoardReplyDAO {
	
	@Autowired
	SqlSession sqlSession;

	public List<BoardReplyVO> listBoardReply(int articleNO) {
		// TODO Auto-generated method stub
		List<BoardReplyVO> boardReplyVO = sqlSession.selectList("mapper.boardReply.selectAllBoardReply", articleNO);
		
		return boardReplyVO;
	}	

	public int insertReply(BoardReplyVO boardReplyVO) {
		// TODO Auto-generated method stub
		int ret = sqlSession.insert("mapper.boardReply.insertReply", boardReplyVO);
		return ret;
	}

	public int replyUpdate(BoardReplyVO boardReplyVO) {
		// TODO Auto-generated method stub
		int ret = sqlSession.update("mapper.boardReply.updateReply", boardReplyVO);
		return ret;
	}

}
