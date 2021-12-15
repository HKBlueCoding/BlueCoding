package com.hk.book.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.book.vo.BookVO;

@Repository
public class BookDAO {

	@Autowired
	SqlSession sqlSession;
	
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

}
