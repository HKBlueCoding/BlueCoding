package com.hk.board.controller;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

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
import org.springframework.web.multipart.MultipartFile;

import com.hk.board.service.BoardService;
import com.hk.board.vo.BoardVO;
import com.hk.boardreply.vo.BoardReplyVO;
import com.hk.book.controller.BookController;

@Controller
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BookController.class);
	private static final String BOARD_FILE_PATH = "C:\\bluecoding\\board"; // 커뮤니티 파일은 이곳에
	@Autowired
	BoardService boardService;

	// SELECT
	@RequestMapping(value = "/board/list", method = { RequestMethod.GET, RequestMethod.POST })
	public String boardList(@RequestParam(value = "section", required = false, defaultValue = "1") Integer section,
			@RequestParam(value = "pageNum", required = false, defaultValue = "1") Integer pageNum, Model model) {
		logger.debug("[리스트 실행됨]");
		// section = 12345678910까지가 기본 섹션
		// pageNum = 사용자가 보려하는 페이지 번호
		// 혹여나 만약 0이하를 치면..
		if (section <= 0) {
			++section;
		}
		if (pageNum <= 0) {
			++pageNum;
		}
		Map<String, Integer> pageMap = new HashMap<String, Integer>();
		pageMap.put("section", section);
		pageMap.put("pageNum", pageNum);

		Map<String, Object> map = boardService.listArticles(pageMap);
		logger.debug("[리스트]" + map);
		model.addAttribute("boardList", map.get("boardList"));
		model.addAttribute("totArticle", map.get("totArticle"));
		model.addAttribute("section", section);
		model.addAttribute("pageNum", pageNum);

		return "boardList";
	}

	// ADD
	@GetMapping("/board/add")
	public String boardAdd() {

		return "boardAdd";
	}

	@PostMapping("/board/add")
	public String boardAddDone(Model model, @ModelAttribute BoardVO boardVO,
			@RequestParam("uploadFile") MultipartFile file) throws Exception {

		logger.debug("[boardVO] = " + boardVO);

		// 받은 실제 이미지 파일이름
		String fileName = "";

		fileName = file.getOriginalFilename();
		boardVO.setBoardImage(fileName);

		logger.debug("[boardVO의 이미지 이름] = " + boardVO.getBoardImage());
		Map<String, Object> map = boardService.addArticle(boardVO);

		int articleNO = (int) map.get("articleNO");

		if (!file.getOriginalFilename().isEmpty() && articleNO > 0) {
			File folder = new File(BOARD_FILE_PATH + "\\" + articleNO);

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
			// 생성한 newsNO 폴더 안에 파일을 넣음
			file.transferTo(new File(BOARD_FILE_PATH + "\\" + articleNO, fileName));
		}

		model.addAttribute("ret", map.get("ret"));

		return "done/boardAddDone";
	}

	@GetMapping("/board/view")
	public String boardView(Model model, @RequestParam("articleNO") int articleNO) {

		Map<String, Object> map = boardService.viewArticle(articleNO);
		logger.debug("[map] = " + map);
		logger.debug("[articleNO] = " + articleNO);
		model.addAttribute("boardVO", map.get("boardVO"));
		model.addAttribute("boardReplyVO", map.get("boardReplyVO"));

		return "boardView";
	}

	@GetMapping("/board/update")
	public String boardUpdate(Model model, @RequestParam("articleNO") int articleNO) {
		logger.debug("[boardNO11] = " + articleNO);

		BoardVO boardVO = boardService.boardOne(articleNO);
		model.addAttribute("boardVO", boardVO);
		logger.debug("[boardVO11] = " + boardVO);

		return "boardUpdate";
	}

	@PostMapping("/board/update")
	public String boardUpdateDone(Model model, @ModelAttribute BoardVO boardVO,
			@RequestParam("uploadFile") MultipartFile file) throws Exception {
		// 여기서 수정된 값 들어오고
		logger.debug("[boardVO] 업데이트로 들어온 값 = " + boardVO);

		if (!file.getOriginalFilename().isEmpty()) {
			String fileName = file.getOriginalFilename();

			if (!boardVO.getBoardImage().isEmpty()) {
				File fileDel = new File(
						BOARD_FILE_PATH + "\\" + boardVO.getArticleNO() + "\\" + boardVO.getBoardImage());
				if (fileDel.exists()) {
					fileDel.delete();
					logger.debug("[커뮤니티 기존 이미지 삭제]");
				}
			}

			File folder = new File(BOARD_FILE_PATH + "\\" + boardVO.getArticleNO());

			if (!folder.exists()) {
				try {
					folder.mkdir();
					logger.debug("폴더가 생성됨!!");
				} catch (Exception e) {
					e.getStackTrace();
				}
			} else {
				logger.debug("[커뮤니티수정] 폴더가 이미 존재합니다!!");
			}
			// 생성한 newsNO 폴더 안에 파일을 넣음
			file.transferTo(new File(BOARD_FILE_PATH + "\\" + boardVO.getArticleNO(), fileName));

			boardVO.setBoardImage(fileName);
			logger.debug("[커뮤니티에 이미지 이름 넣기]" + boardVO.getBoardImage());
		}

		int ret = boardService.modArticle(boardVO);
		model.addAttribute("ret", ret);
		model.addAttribute("articleNO", boardVO.getArticleNO());
		return "done/boardUpdateDone";
	}

	// DELETE
	@GetMapping(value = "/board/delete")
	public String boardDelete(Model model, @RequestParam("articleNO") int articleNO) {

		int articleNoList = boardService.removeArticle(articleNO);
		model.addAttribute("rs", articleNoList);
		return "redirect: /board/list";
	}

	@RequestMapping(value = "/board/boardReply/add", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody // --> ajax 사용할 때 사용
	public Map<String, Object> boardReplyAdd(@ModelAttribute BoardReplyVO boardReplyVO, Model model) { // --> ajax에서 보낸
																										// data
		logger.debug("[리뷰의 boardReplyVO] = " + boardReplyVO);

		int ret = boardService.addReply(boardReplyVO);
		logger.debug("[ret] = " + ret);

		model.addAttribute("ret", ret);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("boardReText", boardReplyVO.getBoardReText());
		map.put("ret", ret);
		return map;
	}

	@RequestMapping(value = "/board/boardReply/update", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody // --> ajax 사용할 때 사용
	public Map<String, Object> boardReplyUpdate(@ModelAttribute BoardReplyVO boardReplyVO, Model model) { // --> ajax에서
																											// 보낸 data
		logger.debug("[댓글의 boardReplyVO] = " + boardReplyVO);

		int ret = boardService.updateReply(boardReplyVO);
		logger.debug("[ret] = " + ret);

		model.addAttribute("ret", ret);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("boardReText", boardReplyVO.getBoardReText());
		map.put("ret", ret);
		return map;
	}

	@RequestMapping(value = "/board/bpardReplyRe/add", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody // --> ajax 사용할 때 사용
	public Map<String, Object> boardReplyReAdd(@ModelAttribute BoardReplyVO boardReplyVO, Model model) { // --> ajax에서
																											// 보낸 data
		logger.debug("[리뷰의 boardReplyVO] = " + boardReplyVO);

		int ret = boardService.addReply(boardReplyVO);
		logger.debug("[ret] = " + ret);

		model.addAttribute("ret", ret);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("ret", ret);
		return map;
	}

}
