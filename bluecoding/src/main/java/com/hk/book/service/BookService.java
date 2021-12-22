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
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import com.hk.author.dao.AuthorDAO;
import com.hk.board.dao.BoardDAO;
import com.hk.board.vo.BoardVO;
import com.hk.book.dao.BookDAO;
import com.hk.book.vo.BookVO;
import com.hk.coinhistory.dao.CoinHistoryDAO;
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
import com.hk.user.vo.UserVO;

@Service
public class BookService {

	private static final Logger logger = LoggerFactory.getLogger(BookService.class);

	@Autowired
	BookDAO bookDAO;
	
	@Autowired
	BoardDAO boardDAO;

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
	
	@Autowired
	CoinHistoryDAO coinHistoryDAO;

	public  Map<String, Object> listBook(Map<String, Integer> pageMap) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		
		List<BookVO> list =  bookDAO.bookList(pageMap);
		
		int totBook = bookDAO.selectTotBook();
		map.put("list", list);
		map.put("totBook", totBook);		
		return map;
	}

	public Map<String, Object> addBook(BookVO bookVO) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		int bookNO = 0;
		
		int ret = bookDAO.bookAdd(bookVO);
		
		if (ret > 0 && bookVO.getBookImage() != null && !bookVO.getBookImage().equals("")) {
			bookNO = bookDAO.selectBookNO(bookVO);
		}
		
		// bookNO와 ret을 넣음
		map.put("bookNO", bookNO);
		map.put("ret", ret);
		
		return map;
	}

	public BookVO bookOne(int bookNO) {
		// TODO Auto-generated method stub
		return bookDAO.oneBook(bookNO);
	}

	public int updateBook(BookVO bookVO) {
		// TODO Auto-generated method stub
		return bookDAO.BookUpdate(bookVO);
	}

	public Map<String, Object> bookOneList(int bookNO, UserVO userVO, Map<String, Integer> pageMap) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		
		// 하나는 해당 게시글하나
		BookVO bookVO = bookDAO.oneBook(bookNO);
		
		// 페이지 리스트 조회+ 페이징
		pageMap.put("bookNO", bookNO);
		List<PageVO> pageVO = pageDAO.listPage(pageMap);
		
		// 현재 책의 토탈 페이지 갯수
		int totPage = pageDAO.selectTotPage(bookNO);
		
		// 그 게시글의 리뷰
		List<ReviewVO> reviewVO = reviewDAO.listReview(bookNO);

		// 책 정보 조회수 기능
		if(userVO != null) {
			bookDAO.updateBookViewCnt(bookNO);
			logger.debug("[책 조회수 업데이트]");
		}		
		
		map.put("bookVO", bookVO);
		map.put("pageVO", pageVO);
		map.put("totPage", totPage);
		map.put("reviewVO", reviewVO);

		return map;
	}

	// [회차 작성]
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = { Exception.class })
	public int addPage(PageVO pageVO, UserVO userVO) throws Exception {
		// TODO Auto-generated method stub
		
		// 있다가 날짜로 저자에게 구매내역 넣을거니까..
		Date date = new Date(Calendar.getInstance().getTimeInMillis());
		logger.debug("[pageBuyVO] ==" + pageVO);
		logger.debug("[date]==" + date);
		pageVO.setPageDate(date);
		
		// series는 한책 정보에 같은 번호가 있으면 안됨
		Integer series = pageDAO.selectSeries(pageVO.getBookNO());
		logger.debug("[series]=="+series);
		
		// Integer는 null 값을 받고, 만약 series에 null이 들가면 안되니 임의로 지정
		if( series == null) {
			series = 1; // max해서 없으면 
		}
		
		pageVO.setSeries(series);
		
		// insert 실행
		int ret = pageDAO.pageAdd(pageVO);
		
		try {
			// 만약 유료화로 회차 작성해도 저자가 봐야하니까 구매기록을 입력함
			if (pageVO.getCharge().equals("Y") && ret > 0) {
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("id", userVO.getId());
				map.put("pageDate", date);
				map.put("pageNO", 0);
				ret = pageBuyDAO.insertAuthorPage(map);
			}
		} catch (Exception e) {
			e.printStackTrace();
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();			
			ret = 0;
		}

		return ret;
	}

	public Map<String, Object> listPage(int pageNO, UserVO userVO) {
		Map<String, Object> map = new HashMap<String, Object>();
		// 기본 ret 설정해서 페이지 이동여부 결정
		map.put("ret", null);

		// 하나는 해당 게시글하나
		PageVO pageVO = pageDAO.pageList(pageNO);

		// 만약 게시글이 유료화일 경우
		if (pageVO.getCharge() != null) {

			// 그러나 만약 아이디가 null이면 조회할것도 없으니.. ret = 0을 리턴시킴
			if (userVO == null) {
				logger.debug("[로그인 안한 유저 감지]");
				logger.debug("[ret 결과]==" + map.get("ret"));
				return map;
			}
			// 유저의 정보를 담아서 dao에 select 요청
			Map<String, Object> selectUser = new HashMap<String, Object>();
			selectUser.put("id", userVO.getId());
			selectUser.put("pageNO", pageNO);

			// update를 통해서 환불 가능 여부를 지움과 동시에
			// 해당 페이지가 있는지 조회 가능
			int ret = pageBuyDAO.checkBuy(selectUser);

			// 만약 페이지가 없다면 ret = 0을 리턴
			if (ret == 0) {
				logger.debug("[ret 결과]==" + map.get("ret"));
				return map;
			} else {
				// 만약 ret이 1이상이면 이후의 기능을 수행
				map.put("ret", ret);
			}
		}else {
			// 만약 유료화가 아닐경우 성공시 ret 1을 리턴
			if(pageVO != null) {
				map.put("ret", "1");
			}
			
		}
		// 그 게시글의 댓글
		List<PageReplyVO> pageReplyVO = pageReplyDAO.listPageReply(pageNO);
		
		// 회차 조회수 기능
		if(userVO != null) {
			bookDAO.updatePageViewCnt(pageNO);
			logger.debug("[회차 조회수 업데이트]");
		}		
		
		// DB에서 select count 사용해서 최대값을 lastSeries에 담아서 보내기
		int lastSeries = pageDAO.selectLastSeries(pageNO);
		
		
		map.put("pageVO", pageVO);
		map.put("pageReplyVO", pageReplyVO);
		map.put("lastSeries", lastSeries);
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
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = { Exception.class })
	public int buyPage(PageBuyVO pageBuyVO) throws Exception {
		// TODO Auto-generated method stub

		// 0.먼저 코인 결제시간을 설정
		Date date = new Date(Calendar.getInstance().getTimeInMillis());
		logger.debug("[pageBuyVO] ==" + pageBuyVO);
		logger.debug("[date]==" + date);
		pageBuyVO.setPagePayDate(date);
		int ret = 0;
		// 1-1. 유저의 코인 변수를 체크하기 위해서 select-key를 할건데
		// 그럴려면 설정당할 프로퍼티가 있어야 하니 아래와 같이 설정
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", pageBuyVO.getId());
		map.put("coin", 0);

		try {

			// 1-2. 넣은값을 토대로 update
			ret = userDAO.minusCoin(map);
			logger.debug("[코인차감 결과]==" + ret);

			if (ret > 0) {
				// 1-3 코인을 지불했으니까... 환불을 하면 안되니..
				ret = coinHistoryDAO.updateNotRefund(pageBuyVO.getId());
				
				// 2. 저자에게 해당 회차에 대한 코인을 줌
				ret = authorDAO.insertProfit(pageBuyVO);

				// 3. 회차 구매 내역을 작성
				ret = pageBuyDAO.insertBuyPage(pageBuyVO);
			}
		} catch (Exception e) {
			// try-catch 때문에 트렌잭션이 안먹히니까 메서드 호출 해야함
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
			e.printStackTrace();
			ret = 0;
		}

		return ret;
	}

	public int selectOneBuyPage(Map<String, Object> userMap) {
		// TODO Auto-generated method stub
		return pageBuyDAO.selectOneBuyPage(userMap);
	}

	public int updateReview(ReviewVO reviewVO) {
		// TODO Auto-generated method stub
		return reviewDAO.reviewUpdate(reviewVO);
	}

	public int addPageReply(PageReplyVO pageReplyVO) {
		// TODO Auto-generated method stub
		return pageReplyDAO.insertPageReply(pageReplyVO);
	}

	public int updatePageReply(PageReplyVO pageReplyVO) {
		// TODO Auto-generated method stub
		return pageReplyDAO.PageReplyUpdate(pageReplyVO);
	}

	public int deleteBook(Map<String, Object> userMap) {
		// TODO Auto-generated method stub
		
		// 먼저 해당 책을 삭제
		int ret = bookDAO.deleteBook(userMap);
		
		// 그리고 자식 페이지를 모두 삭제
		if(ret > 0) {
			pageDAO.deleteChildPage((int)userMap.get("bookNO"));
		}
		
		return ret;
	}

	public int deletePage(int pageNO) {
		// TODO Auto-generated method stub
		
		return pageDAO.deleteOnePage(pageNO);
	}

	public int reviewDelete(int revNO) {
		// TODO Auto-generated method stub
		return reviewDAO.reviewDelete(revNO);
	}

	public Map<String, Object> selectMenuList() {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		
		//앞에서 움직일 책 30개만
		List<BookVO> menuList = bookDAO.selectMenuBook();
		
		// 베스트책 3개
		List<BookVO> popBList = bookDAO.selectPopBook();
		
		// 베스트글 3개
		List<BoardVO> popBDList = boardDAO.selectPopBoard();
		
		map.put("menuList", menuList);
		map.put("popBList", popBList);
		map.put("popBDList", popBDList);
		
		return map;
	}
}
