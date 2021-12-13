package com.hk.board.controller;

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

import com.hk.board.service.BoardService;
import com.hk.board.vo.BoardVO;
import com.hk.book.controller.BookController;

@Controller
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BookController.class);

	@Autowired
	BoardService boardService;
	
	// SELECT
	@RequestMapping(value="/board/list", method= {RequestMethod.GET, RequestMethod.POST})
	public String boardList(Model model) {
		
		List<BoardVO> boardList = boardService.listArticles();
		model.addAttribute("boardList", boardList);
		
		return "boardList";
	}
	
	// ADD
	@GetMapping(value="/board/add")
	public String boardAdd() {
		
		return "boardAdd";
	}
	
	@PostMapping(value="/board/add")
	public String boardAddDone(Model model, @ModelAttribute BoardVO boardVO) {
		
		int ret = boardService.addArticle(boardVO);
		model.addAttribute("ret", ret);
		return "boardList";
	}
	
	@GetMapping(value="/board/view")
	public String boardView(Model model, @RequestParam("articleNO") int articleNO) {
		
		BoardVO boardVO = boardService.viewArticle(articleNO);
		model.addAttribute("board", boardVO);
		return "boardView";
	}	
	
	// UPDATE
	@GetMapping(value="/board/update")
	public void boardUpdate( @ModelAttribute BoardVO boardVO,HttpServletResponse response) throws IOException {
		
		int ret = boardService.modArticle(boardVO);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter pw = response.getWriter();
		
		// 실패 
		if(ret == 0) {
			pw.println("<script>"
					+ "	alert('작성에 실패하였습니다.');"
					+ " location.href='../../board/view?articleNO="+boardVO.getArticleNO()+"'; "
					+ " </script>");
			return;
		}
		// 성공
		pw.println("<script>"
				+ "	alert('작성에 성공하였습니다.');"
				+ " location.href='../../board/view?articleNO="+boardVO.getArticleNO()+"'; "
				+ " </script>");
		
		return;
	}
		
	@PostMapping(value="/board/update")
	public String boardUpdate2(Model model, @ModelAttribute BoardVO boardVO) {
		
		
		return "boardList";
	}
	
	// DELETE
	@GetMapping(value="/board/delete")
	public String boardDelete(Model model, @RequestParam("articleNO") int articleNO) {
		
		int articleNoList = boardService.removeArticle(articleNO);
		model.addAttribute("article", articleNoList);
		return "boardDelete";
	}
}
