package com.hk.user.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.board.dao.BoardDAO;
import com.hk.board.vo.BoardVO;
import com.hk.book.dao.BookDAO;
import com.hk.book.vo.BookVO;
import com.hk.news.vo.NewsVO;
import com.hk.newsreply.vo.NewsReplyVO;
import com.hk.qna.dao.QnaDAO;
import com.hk.qna.vo.QnaVO;
import com.hk.user.dao.UserDAO;
import com.hk.user.vo.UserVO;

@Service
public class UserService {
	
	@Autowired
	UserDAO userDAO;
	BookDAO bookDAO;
	BoardDAO boardDAO;
	QnaDAO qnaDAO;

	public int addUser(UserVO userVO) {
		// TODO Auto-generated method stub
		// userDAO로 데이터를 먼저 넣음
		return userDAO.addUser(userVO);
	}

	public UserVO checkLogin(UserVO userVO) {
		// TODO Auto-generated method stub
		return userDAO.isExisted(userVO);
	}

	public UserVO checkId(String id) {
		// TODO Auto-generated method stub
		return userDAO.dupId(id);
	}

	public Map<String, Object> userArticleList(String id) {
		// TODO Auto-generated method stub
		
		List<BookVO> bookVO = bookDAO.bookList();
		List<BoardVO> boardVO = boardDAO.selectAllArticles();
		List<QnaVO> qnaVO = qnaDAO.selectAllQna(id);

		Map<String, Object> map = new HashMap<String, Object>();

		map.put("bookVO", bookVO);
		map.put("boardVO", boardVO);
		map.put("qnaVO", qnaVO);
		return map;
	}




	
}
