package com.hk.book.dao;

import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.book.vo.BookVO;

@Repository
public class BookDAO {

	@Autowired
	SqlSession sqlSession;

	private static final Logger logger = LoggerFactory.getLogger(BookDAO.class);	
	
	public List<BookVO> bookList() {
		// TODO Auto-generated method stub
		List<BookVO> bookList = sqlSession.selectList("mapper.book.selectAllBook");
		return bookList;
	}

	public int bookAdd(BookVO bookVO) {
		// TODO Auto-generated method stub
		int ret = sqlSession.insert("mapper.book.insertBook", bookVO);
		return ret;
	}

	public BookVO oneBook(int bookNO) {
		// TODO Auto-generated method stub
		BookVO bookVO = sqlSession.selectOne("mapper.book.selectOneBook", bookNO);
		return bookVO;
	}

	public int BookUpdate(BookVO bookVO) {
		// TODO Auto-generated method stub
		int ret = sqlSession.update("mapper.book.updateBook", bookVO);
		return ret;
	}

	public int selectBookNO(BookVO bookVO) {
		// TODO Auto-generated method stub
		logger.debug("[DAO의 bookVO]=="+bookVO);
		int bookNO = sqlSession.selectOne("mapper.book.selectBookNO", bookVO);
		return bookNO;
	}

}
