package com.hk.board.service;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.board.dao.BoardDAO;
import com.hk.board.vo.BoardVO;
import com.hk.boardreply.dao.BoardReplyDAO;
import com.hk.boardreply.vo.BoardReplyVO;

@Service
public class BoardService {

	@Autowired
	BoardDAO boardDAO;
	
	@Autowired
	BoardReplyDAO boardReplyDAO;
	
	private static final Logger logger = LoggerFactory.getLogger(BoardService.class);
	
	public Map<String, Object> listArticles(Map<String, Integer> pageMap) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();		
		
		// 지정한 해당 페이지의 리스트
		List<BoardVO> boardList = boardDAO.selectAllArticles(pageMap);
		
		// 현재 존재하는 모든 페이지의 리스트
		int totArticle  = boardDAO.selectTotArticle();
		
		map.put("boardList", boardList);
		map.put("totArticle", totArticle);
		
		return map;
	}

	public Map<String, Object> addArticle(BoardVO boardVO) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		int ret = boardDAO.addArticle(boardVO);
		
		logger.debug("[service의 이미지]"+boardVO.getBoardImage());
		
		int articleNO = 0;
		if(ret > 0 && boardVO.getBoardImage() != null & !boardVO.getBoardImage().equals("")) {
			articleNO = boardDAO.selectArticleNO(boardVO);
		}
		
		map.put("ret", ret);
		map.put("articleNO", articleNO);
		
		return map;
	}

	public BoardVO boardOne(int articleNO) {
		
		return boardDAO.selectArticle(articleNO);
	}
	
	public Map<String, Object> viewArticle(int articleNO) {
		// TODO Auto-generated method stub
		
		BoardVO boardVO = boardDAO.selectArticle(articleNO);
		// 그 게시글의 댓글
		List<BoardReplyVO> boardReplyVO = boardReplyDAO.listBoardReply(articleNO);
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("boardVO", boardVO);
		map.put("boardReplyVO", boardReplyVO);

		return map;
	}

	public int modArticle(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return boardDAO.updateArticle(boardVO);
	}

	public int removeArticle(int articleNO) {
		// TODO Auto-generated method stub
		return boardDAO.deleteArticle(articleNO);
	}

	public int addReply(BoardReplyVO boardReplyVO) {
		// TODO Auto-generated method stub
		return boardReplyDAO.insertReply(boardReplyVO);
	}

	public int updateReply(BoardReplyVO boardReplyVO) {
		// TODO Auto-generated method stub
		return boardReplyDAO.replyUpdate(boardReplyVO);
	}


}
