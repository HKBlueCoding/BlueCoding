package com.hk.board.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.board.dao.BoardDAO;
import com.hk.board.vo.BoardVO;

@Service
public class BoardService {

	@Autowired
	BoardDAO boardDAO;
	
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

	public int addArticle(BoardVO boardVO) {
		// TODO Auto-generated method stub
		
		int ret = boardDAO.addArticle(boardVO);
		
		int articleNO = 0;
		if(ret > 0 && boardVO.getBoardImage() != null) {
			articleNO = boardDAO.selectArticleNO(boardVO);
		}
		
		return articleNO;
	}

	public BoardVO viewArticle(int articleNO) {
		// TODO Auto-generated method stub
		return boardDAO.selectArticle(articleNO);
	}

	public int modArticle(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return boardDAO.updateArticle(boardVO);
	}

	public int removeArticle(int articleNO) {
		// TODO Auto-generated method stub
		return boardDAO.deleteArticle(articleNO);
	}

}
