package com.hk.book.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	
	public List<BookVO> bookList(Map<String, Integer> pageMap) {
		// TODO Auto-generated method stub
		List<BookVO> bookList = sqlSession.selectList("mapper.book.selectAllBook", pageMap);
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
	// book 전체 게시글 total 조회
	public int selectTotBook() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("mapper.book.selectTotBook");
	}		

	public void updateBookViewCnt(int bookNO) {
		// TODO Auto-generated method stub
		sqlSession.update("mapper.book.updateBookViewCnt", bookNO);
	}

	public void updatePageViewCnt(int pageNO) {
		// TODO Auto-generated method stub
		sqlSession.update("mapper.page.updatePageViewCnt", pageNO);
	}

	public int deleteBook(Map<String, Object> userMap) {
		// TODO Auto-generated method stub
		return sqlSession.update("mapper.book.deleteBook", userMap);
	}

	public List<BookVO> selectMenuBook() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mapper.book.selectMenuBook");
	}

	public List<BookVO> selectPopBook() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mapper.book.selectPopBook");
	}

	public List<BookVO> selectFilter(String theme) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mapper.book.selectFilter", theme);
	}

}
