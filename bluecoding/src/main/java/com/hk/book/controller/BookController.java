package com.hk.book.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.hk.book.service.BookService;
import com.hk.book.vo.BookVO;
import com.hk.favo.vo.FavoVO;
import com.hk.page.vo.PageVO;
import com.hk.pagebuy.vo.PageBuyVO;
import com.hk.review.vo.ReviewVO;
import com.hk.user.vo.UserVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class BookController {

	@Autowired
	BookService bookService;

	private static final Logger logger = LoggerFactory.getLogger(BookController.class);
	private static final String BOOK_FILE_PATH = "C:\\bluecoding\\book"; // 도서 정보 파일은 이곳에

	// 메인 페이지
	@GetMapping("/")
	public String home(Model model) {

		return "main";
	}

	@GetMapping("/list")
	public String bookList(Model model,
			@RequestParam(value = "section", required = false, defaultValue = "1") Integer section,
			@RequestParam(value = "pageNum", required = false, defaultValue = "1") Integer pageNum) {

		// 페이징 기본 값은 1
		if (section <= 0) {++section;}
		if (pageNum <= 0) {++pageNum;}

		Map<String, Integer> pageMap = new HashMap<String, Integer>();
		pageMap.put("section", section);
		pageMap.put("pageNum", pageNum);
		
		// pageMap 을 넣고, 여러개 데이터를 뽑음
		Map<String, Object> map = bookService.listBook(pageMap);
		
		model.addAttribute("bookList", map.get("list"));
		model.addAttribute("totBook", map.get("totBook"));
		model.addAttribute("section", section);
		model.addAttribute("pageNum", pageNum);

		return "bookList";
	}

	@GetMapping("/add")
	public String bookAdd() {

		return "bookAdd";
	}

	@PostMapping("/add")
	public String bookAddDone(Model model, @ModelAttribute BookVO bookVO,
			@RequestParam(value = "section", required = false, defaultValue = "1") Integer section,
			@RequestParam(value = "pageNum", required = false, defaultValue = "1") Integer pageNum,
			@RequestParam("uploadFile") MultipartFile file) throws Exception {

		logger.debug("[bookVO] = " + bookVO);

		// 받은 실제 이미지 파일이름
		String fileName = file.getOriginalFilename();
		bookVO.setBookImage(fileName);

		// map
		Map<String, Object> map = bookService.addBook(bookVO);

		int bookNO = (int) map.get("bookNO");

		if (!file.getOriginalFilename().isEmpty() && bookNO != 0) {
			File folder = new File(BOOK_FILE_PATH + "\\" + bookNO);
			if (!folder.exists()) {
				try {
					folder.mkdir();
					logger.debug("폴더가 생성됨!!");
				} catch (Exception e) {
					e.getStackTrace();
				}
			} else {
				logger.debug("[커뮤니티 글쓰기]폴더가 이미 존재합니다!!");
			}
			// 폴더 생성
			file.transferTo(new File(BOOK_FILE_PATH + "\\" + bookNO, fileName));
		}

		model.addAttribute("ret", map.get("ret"));

		return "done/bookAddDone";
	}

	// [책 정보 보기]
	@GetMapping("/view")
	public String bookView(@RequestParam(value="section", required=false, defaultValue = "1")Integer section, 
  			 @RequestParam(value="pageNum", required=false, defaultValue = "1")Integer pageNum, Model model, @RequestParam("bookNO") int bookNO, HttpSession session) {
		
		// 페이징 
		if(section <= 0) { ++section; }
		if(pageNum <= 0) { ++pageNum; }
	    Map<String, Integer> pageMap = new HashMap<String, Integer>();
	    pageMap.put("section", section);
	    pageMap.put("pageNum", pageNum);		
		
	    // session에서 뺌
		UserVO userVO = (UserVO) session.getAttribute("login");
		
		// 여러값들을 가져옴
		Map<String, Object> map = bookService.bookOneList(bookNO, userVO, pageMap);
		logger.debug("[map] = " + map);
		logger.debug("[bookNO] = " + bookNO);

		model.addAttribute("bookVO", map.get("bookVO"));
		model.addAttribute("reviewVO", map.get("reviewVO"));
		model.addAttribute("pageVO", map.get("pageVO"));
	    model.addAttribute("totPage", map.get("totPage"));
	    model.addAttribute("section",section);
	    model.addAttribute("pageNum",pageNum);
		
		return "bookView";
	}

	@GetMapping("/update")
	public String bookUpdate(Model model, @RequestParam("bookNO") int bookNO) {
		logger.debug("[bookNO11] = " + bookNO);

		BookVO bookVO = bookService.bookOne(bookNO);
		model.addAttribute("bookVO", bookVO);
		logger.debug("[bookVO11] = " + bookVO);

		return "bookUpdate";
	}

	@PostMapping("/update")
	public String bookUpdateDone(Model model, @ModelAttribute BookVO bookVO,
			@RequestParam("uploadFile") MultipartFile file) throws Exception {
		logger.debug("[bookVO22] = " + bookVO);

		if (!file.getOriginalFilename().isEmpty()) {
			String fileName = file.getOriginalFilename();

			if (!bookVO.getBookImage().isEmpty()) {
				File fileDel = new File(BOOK_FILE_PATH + "\\" + bookVO.getBookNO() + "\\" + bookVO.getBookImage());
				if (fileDel.exists()) {
					fileDel.delete();
					logger.debug("[책 정보의 기존 이미지 삭제]");
				}
			}

			File folder = new File(BOOK_FILE_PATH + "\\" + bookVO.getBookNO());

			if (!folder.exists()) {
				try {
					folder.mkdir();
					logger.debug("폴더가 생성됨!!");
				} catch (Exception e) {
					e.getStackTrace();
				}
			} else {
				logger.debug("[책 정보 수정] 폴더가 이미 존재합니다!!");
			}
			file.transferTo(new File(BOOK_FILE_PATH + "\\" + bookVO.getBookNO(), fileName));
			bookVO.setBookImage(fileName);
		}

		int ret = bookService.updateBook(bookVO);
		model.addAttribute("ret", ret);
		logger.debug("[ret] = " + ret);

		model.addAttribute("bookNO", bookVO.getBookNO());

		return "done/bookUpdateDone";
	}

	@GetMapping("/view/add")
	public String bookViewAdd(@RequestParam("bookNO") int bookNO, Model model) {

		BookVO bookVO = bookService.bookOne(bookNO);
		model.addAttribute("bookVO", bookVO);
		return "bookViewAdd";
	}

	@PostMapping("/view/add")
	public String bookViewAddDone(Model model, @ModelAttribute PageVO pageVO, HttpSession session) throws Exception {
		logger.debug("[pageVO] = " + pageVO);
		UserVO userVO = (UserVO) session.getAttribute("login");
		
		int ret = bookService.addPage(pageVO, userVO);
		model.addAttribute("ret", ret);
		model.addAttribute("bookNO", pageVO.getBookNO());
		return "done/bookViewAddDone";
	}

	// [회차 조회]
	@GetMapping("/view/page")
	public String bookViewPageDone(Model model, @RequestParam("pageNO") int pageNO, HttpSession session) {

		// 유료화 일수도 있으니 session의 userVO 값을 받아옴
		UserVO userVO = (UserVO) session.getAttribute("login");
		logger.debug("[userVO]==" + userVO);

		// [해당 페이지 조회 & 유료화에 따라 값 설정]
		Map<String, Object> map = bookService.listPage(pageNO, userVO);
		logger.debug("[map] = " + map);
		logger.debug("[pageNO] = " + pageNO);

		// 결과 확인
		if (map.get("ret") == null) {
			return "done/pageViewFail";
		}

		model.addAttribute("pageVO", map.get("pageVO"));
		model.addAttribute("pageReplyVO", map.get("pageReplyVO"));

		return "bookViewPage";
	}

	@GetMapping("/view/update")
	public String bookViewUpdate(Model model, @RequestParam("pageNO") int pageNO) {
		logger.debug("[pageNO11] = " + pageNO);

		PageVO pageVO = bookService.bookPageOne(pageNO);
		model.addAttribute("pageVO", pageVO);
		logger.debug("[pageVO11] = " + pageVO);
		return "bookViewUpdate";
	}

	@PostMapping("/view/update")
	public String bookViewUpdateDone(Model model, @ModelAttribute PageVO pageVO) {
		logger.debug("[pageVO22] = " + pageVO);

		int ret = bookService.viewUpdateBook(pageVO);
		model.addAttribute("ret", ret);
		logger.debug("[ret] = " + ret);

		model.addAttribute("pageNO", pageVO.getPageNO());

		return "done/bookViewUpdateDone";
	}

	@PostMapping("/view/favo/add")
	public String favoAddDone(Model model, @ModelAttribute FavoVO favoVO) {
		logger.debug("[찜하기 favoVO] = " + favoVO);

		int ret = bookService.addFavo(favoVO);
		logger.debug("[ret] = " + ret);

		model.addAttribute("ret", ret);
		model.addAttribute("id", favoVO.getId());
		return "done/favoAddDone";
	}

	@RequestMapping(value = "/view/review/add", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody // --> ajax 사용할 때 사용
	public Map<String, Object> reviewAdd(@ModelAttribute ReviewVO reviewVO, Model model) { // --> ajax에서 보낸 data
		logger.debug("[리뷰의 reviewVO] = " + reviewVO);

		int ret = bookService.addReview(reviewVO);
		logger.debug("[ret] = " + ret);

		model.addAttribute("ret", ret);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("text", reviewVO.getRevText()); // 중복이면 true, 아니면 false라는 String반환
		map.put("ret", ret);
		return map;
	}

	// [리뷰의 답글쓰기]
	@GetMapping("/view/review/reply/add")
	public String reviewReply(@ModelAttribute ReviewVO reviewVO, Model model) {

		model.addAttribute("reviewVO", reviewVO);
		return "reply/bookviewReply";
	}

	// [페이지 결제하기]
	@RequestMapping(value = "/page/buy", method = { RequestMethod.POST }, produces = "application/json; charset=utf8")
	@ResponseBody
	public Map<String, Object> pageBuy(@ModelAttribute PageBuyVO pageBuyVO, HttpSession session) throws Exception {
		// id와 해당 페이지의 번호

		Map<String, Object> map = new HashMap<String, Object>();

		int ret = bookService.buyPage(pageBuyVO);

		// 결제에 성공 했으니까 유저의 코인 갯수 재설정
		if (ret > 0) {
			UserVO userVO = (UserVO) session.getAttribute("login");
			userVO.setCoin(userVO.getCoin() - 300);
			session.setAttribute("login", userVO);
		}

		map.put("ret", ret);

		return map;
	}

	// [구매내역 확인]
	@RequestMapping(value = "/page/check", method = { RequestMethod.POST }, produces = "application/json; charset=utf8")
	@ResponseBody
	public Map<String, Object> pageCheck(@RequestParam("id") String id, @RequestParam("pageNO") int pageNO,
			HttpSession session) {
		Map<String, Object> userMap = new HashMap<String, Object>();
		userMap.put("id", id);
		userMap.put("pageNO", pageNO);

		int rs = bookService.selectOneBuyPage(userMap);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("rs", rs);
		return map;
	}

}
