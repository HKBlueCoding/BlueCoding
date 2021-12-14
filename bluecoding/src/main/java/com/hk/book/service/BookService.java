package com.hk.book.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.book.dao.BookDAO;
import com.hk.book.vo.BookVO;

@Service
public class BookService {

	@Autowired
	BookDAO bookDAO;
	
	public List<BookVO> listBook() {
		// TODO Auto-generated method stub
		return bookDAO.bookList();
	}

	public int addBook(BookVO bookVO) {
		// TODO Auto-generated method stub
		return bookDAO.bookAdd(bookVO);
	}

}
