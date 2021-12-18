package com.hk.book.service;

import java.sql.Date;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hk.author.dao.AuthorDAO;
import com.hk.book.dao.BookDAO;
import com.hk.book.vo.BookVO;
import com.hk.favo.service.FavoDAO;
import com.hk.favo.vo.FavoVO;
import com.hk.page.dao.PageDAO;
import com.hk.page.vo.PageVO;
import com.hk.pagebuy.dao.PageBuyDAO;
import com.hk.pagebuy.vo.PageBuyVO;
import com.hk.pagereply.dao.PageReplyDAO;
import com.hk.pagereply.vo.PageReplyVO;
import com.hk.review.dao.ReviewDAO;
import com.hk.review.vo.ReviewVO;
import com.hk.user.dao.UserDAO;

@Service
public class BookService {

	private static final Logger logger = LoggerFactory.getLogger(BookService.class);
	
	@Autowired
	BookDAO bookDAO;
	
	@Autowired
	ReviewDAO reviewDAO;
	
	@Autowired
	PageDAO pageDAO;
	
	@Autowired
	PageReplyDAO pageReplyDAO;
	
	@Autowired
	FavoDAO favoDAO;
	
	@Autowired
	PageBuyDAO pageBuyDAO;
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	AuthorDAO authorDAO;
	
	public List<BookVO> listBook() {
		// TODO Auto-generated method stub
		return bookDAO.bookList();
	}

	public int addBook(BookVO bookVO) {
		// TODO Auto-generated method stub
		
		int ret = bookDAO.bookAdd(bookVO);
		
		int bookNO = 0;
		if(ret > 0) {
			bookNO = bookDAO.selectBookNO(bookVO);
		}
		
		return bookNO;
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
	
	public int addFavo(FavoVO favoVO) {
		// TODO Auto-generated method stub
		return favoDAO.insertFavo(favoVO);
	}
	
	public int addReview(ReviewVO reviewVO) {
		// TODO Auto-generated method stub
		return reviewDAO.insertReview(reviewVO);
	}
	
	// [회차 구매]
	@Transactional(rollbackFor = {RuntimeException.class, Exception.class})
	public int buyPage(PageBuyVO pageBuyVO) {
		// TODO Auto-generated method stub
		
		// 0.먼저 코인 결제시간을 설정
		Date date = new Date(Calendar.getInstance().getTimeInMillis());
		logger.debug("[pageBuyVO] =="+pageBuyVO);
		logger.debug("[date]=="+date);
		pageBuyVO.setPagePayDate(date);
		int ret = 0;
		try {
			// 1-1. 유저의 코인 변수를 체크하기 위해서 select-key를 할건데
			//      그럴려면 설정당할 프로퍼티가 있어야 하니 아래와 같이 설정
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("id",pageBuyVO.getId());
			map.put("coin", 0);
			
			// 1-2. 넣은값을 토대로 insert
			ret = userDAO.minusCoin(map);
			logger.debug("[코인차감 결과]=="+ret);
			
			if(ret > 0) {
				// 2. 저자에게 해당 회차에 대한 코인을 줌
				ret = authorDAO.insertProfit(pageBuyVO);
		
				// 3. 회차 구매 내역을 작성		
				ret = pageBuyDAO.insertBuyPage(pageBuyVO);
			}
		} catch(Exception e) {
			ret = 0;
		}
		
		return ret;
	}	
}
