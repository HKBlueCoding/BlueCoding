package com.hk.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.board.dao.BoardDAO;
import com.hk.board.vo.BoardVO;

@Service
public class BoardService {

	@Autowired
	BoardDAO boardDAO;
	
	public List<BoardVO> listArticles() {
		// TODO Auto-generated method stub
		return boardDAO.selectAllArticles();
	}

	public int addArticle(BoardVO boardVO) {
		// TODO Auto-generated method stub
		return boardDAO.addArticle(boardVO);
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
		return 0;
	}

}
