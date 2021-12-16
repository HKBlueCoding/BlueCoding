package com.hk.board.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

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
import org.springframework.web.multipart.MultipartFile;

import com.hk.board.service.BoardService;
import com.hk.board.vo.BoardVO;
import com.hk.book.controller.BookController;

@Controller
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BookController.class);
	private static final String BOARD_FILE_PATH = "C:\\bluecoding\\board"; // 커뮤니티 파일은 이곳에
	@Autowired
	BoardService boardService;

	// SELECT
	@RequestMapping(value = "/board/list", method = { RequestMethod.GET, RequestMethod.POST })
	public String boardList(Model model) {
		logger.debug("[리스트 실행됨]");
		List<BoardVO> boardList = boardService.listArticles();
		logger.debug("[리스트]" + boardList);
		model.addAttribute("boardList", boardList);

		return "boardList";
	}

	// ADD
	@GetMapping(value = "/board/add")
	public String boardAdd() {

		return "boardAdd";
	}

	@PostMapping(value = "/board/add")
	public String boardAddDone(Model model, @ModelAttribute BoardVO boardVO,
			@RequestParam("uploadFile") MultipartFile file) throws Exception {

		logger.debug("[boardVO] = " + boardVO);

		// 받은 실제 이미지 파일이름
		String fileName = file.getOriginalFilename();
		boardVO.setBoardImage(fileName);

		int articleNO = boardService.addArticle(boardVO);

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

		model.addAttribute("ret", articleNO);

		return "done/boardAddDone";
	}

	// UPDATE
	@GetMapping(value = "/board/view")
	public String boardView(Model model, @RequestParam("articleNO") int articleNO) {

		BoardVO boardVO = boardService.viewArticle(articleNO);
		model.addAttribute("board", boardVO);
		return "boardView";
	}

	@PostMapping(value = "/board/update")
	public String boardUpdate2(Model model, @ModelAttribute BoardVO boardVO,
			@RequestParam("uploadFile") MultipartFile file) throws Exception {
		// 여기서 수정된 값 들어오고
		logger.debug("[boardVO] 업데이트로 들어온 값 = " + boardVO);

		if (!file.getOriginalFilename().isEmpty()) {
			String fileName = file.getOriginalFilename();

			if (!boardVO.getBoardImage().isEmpty()) {
				File fileDel = new File(BOARD_FILE_PATH + "\\" + boardVO.getArticleNO() + "\\" + boardVO.getBoardImage());
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
			logger.debug("[커뮤니티에 이미지 이름 넣기]"+boardVO.getBoardImage());
		}

		int ret = boardService.modArticle(boardVO);
		model.addAttribute("ret", ret);
		model.addAttribute("articleNO", boardVO.getArticleNO());
		return "done/boardUpdateDone";
	}

	// DELETE
	@GetMapping(value = "/board/delete")
	public String boardDelete(Model model, @RequestParam("articleNO") int articleNO) {

		int rs = boardService.removeArticle(articleNO);
		model.addAttribute("rs", rs);
		return "done/boardDeleteDone";
	}
}
