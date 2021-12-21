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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

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
	   List<HashMap<String, Object>> pageBenefitList = adminService.selectPageBenefitList();
	   List<HashMap<String, Object>> coinList = adminService.selectCoinList();
	   List<HashMap<String, Object>> adminList = adminService.selectAdminList();
	   
	   
	   model.addAttribute("bookList", bookList);
	   model.addAttribute("pageList", pageList);
	   model.addAttribute("boardList",boardList);
	   model.addAttribute("pageBenefitList", pageBenefitList);
	   model.addAttribute("coinList", coinList);
	   model.addAttribute("adminList", adminList);
	   
	   
	   logger.debug("[bookList] = " + bookList);
	   logger.debug("[pageList] = " + pageList);
	   logger.debug("[boardList] = " + boardList);
	   logger.debug("[pageBenefitList] = " + pageBenefitList);
	   logger.debug("[coinList] = " + coinList);
	   logger.debug("[adminList] = " + adminList);
      
	   return "admin";
	}
	
	@GetMapping("/admin/deleteAcc")
	public String deleteAcc(@RequestParam("id") String id, Model model) {
			
		int rs = adminService.deleteAdminAcc(id);
		model.addAttribute("rs", rs);
		
		return "redirect: /admin";
	}
}
