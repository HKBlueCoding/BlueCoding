package com.hk.admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.hk.admin.service.AdminService;

@Controller
public class AdminController {

	@Autowired
	AdminService adminService;
	
	private static final Logger logger = LoggerFactory.getLogger( AdminController.class);
	
	@GetMapping("/admin")
	public String admin(Model model) {
		
		// OracleDB는 HashMap을 jsp로 출력할 때, 대문자로 써야 한다.
		// PostgreDB는 HashMap을 jsp로 출력할 때, 소문자로 써야 한다.
	   List<HashMap<String, Object>> bookList = adminService.selectDeleteBook();
	   List<HashMap<String, Object>> pageList = adminService.selectDeletePage();
	   List<HashMap<String, Object>> boardList = adminService.selectDeleteBoard();
	   
	   model.addAttribute("bookList", bookList);
	   model.addAttribute("pageList", pageList);
	   model.addAttribute("boardList",boardList);
	   
	   
	   logger.debug("[bookList] = " + bookList);
	   logger.debug("[pageList] = " + pageList);
	   logger.debug("[boardList] = " + boardList);
      
	   return "admin";
	}
}
