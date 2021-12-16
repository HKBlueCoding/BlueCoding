package com.hk.book.service;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.book.dao.BookDAO;
import com.hk.book.vo.BookVO;
import com.hk.favo.vo.FavoVO;
import com.hk.page.dao.PageDAO;
import com.hk.page.vo.PageVO;
import com.hk.pagereply.dao.PageReplyDAO;
import com.hk.pagereply.vo.PageReplyVO;
import com.hk.review.dao.ReviewDAO;
import com.hk.review.vo.ReviewVO;

@Service
public class BookService {

	@Autowired
	BookDAO bookDAO;
	
	@Autowired
	ReviewDAO reviewDAO;
	
	@Autowired
	PageDAO pageDAO;
	
	@Autowired
	PageReplyDAO pageReplyDAO;
	
	
	public List<BookVO> listBook() {
		// TODO Auto-generated method stub
		return bookDAO.bookList();
	}

	public int addBook(BookVO bookVO) {
		// TODO Auto-generated method stub
		return bookDAO.bookAdd(bookVO);
	}

	public BookVO bookOne(int bookNO) {
		// TODO Auto-generated method stub
		return bookDAO.oneBook(bookNO);
	}

	public int updateBook(BookVO bookVO) {
		// TODO Auto-generated method stub
		return bookDAO.BookUpdate(bookVO);
	}

	public Map<String, Object> bookOneList(int bookNO) {
		// TODO Auto-generated method stub
		
		// 하나는 해당 게시글하나
		BookVO bookVO = bookDAO.oneBook(bookNO);
		
		// 페이지 조회
		List<PageVO> pageVO = pageDAO.listPage(bookNO);
		
		// 그 게시글의 댓글
		List<ReviewVO> reviewVO = reviewDAO.listReview(bookNO); // bookNO
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("bookVO", bookVO);
		map.put("reviewVO", reviewVO);
		map.put("pageVO", pageVO);
		
		return map;
	}
	
	public int addPage(PageVO pageVO) {
		// TODO Auto-generated method stub
		
		return pageDAO.pageAdd(pageVO);
	}

	public Map<String, Object> listPage(int pageNO) {
		
		// 하나는 해당 게시글하나
		PageVO pageVO = pageDAO.pageList(pageNO);
		
		// 그 게시글의 댓글
		List<PageReplyVO> pageReplyVO = pageReplyDAO.listPageReply(pageNO);
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("pageVO", pageVO);
		map.put("pageReplyVO", pageReplyVO);
		
		return map;
	}
	
	public PageVO bookPageOne(int pageNO) {
		// TODO Auto-generated method stub
		return pageDAO.pageList(pageNO);
	}

	public int viewUpdateBook(PageVO pageVO) {
		// TODO Auto-generated method stub
		return pageDAO.bookViewUpdate(pageVO);
	}
	
//	public int addFavo(FavoVO favoVO) {
//		// TODO Auto-generated method stub
//		return favoDAO.insertFavo(favoVO);
//	}
}
