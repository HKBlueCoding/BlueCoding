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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hk.admin.service.AdminService;
import com.hk.user.vo.UserVO;

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
	   List<HashMap<String, Object>> userList = adminService.selectUserList();
	   
	   
	   model.addAttribute("bookList", bookList);
	   model.addAttribute("pageList", pageList);
	   model.addAttribute("boardList",boardList);
	   model.addAttribute("pageBenefitList", pageBenefitList);
	   model.addAttribute("coinList", coinList);
	   model.addAttribute("adminList", adminList);
	   model.addAttribute("userList", userList);
	   
	   
	   logger.debug("[bookList] = " + bookList);
	   logger.debug("[pageList] = " + pageList);
	   logger.debug("[boardList] = " + boardList);
	   logger.debug("[pageBenefitList] = " + pageBenefitList);
	   logger.debug("[coinList] = " + coinList);
	   logger.debug("[adminList] = " + adminList);
	   logger.debug("[userList] = " + userList);
      
	   return "admin";
	}
	
	// 관리자 계정 생성
	@GetMapping("/admin/addAcc")
	public String addAcc() {
		
		return "addAcc";
	}
	
	// [관리자 아이디 중복체크]
	@RequestMapping(value = "/admin/dupId", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	@ResponseBody
	public Map<String, Integer> dupId(@RequestParam("id") String id) {
		logger.debug("아이디 ==" + id);
		Map<String, Integer> map = new HashMap<String, Integer>();
		// 아이디 있는지 체크
		UserVO userVO = adminService.checkId(id);

		if (userVO == null) {
			// null이면 성공
			map.put("rs", 1);
		} else {
			// 같은 아이디가 있으면 실패
			map.put("rs", 0);
		}

		return map;
	}
	
	// 관리자 계정 생성 제출
	@PostMapping("/admin/addAcc")
	public String addAccDone(Model model, @ModelAttribute UserVO userVO) {
		
		int ret = adminService.addAdminAcc(userVO);
		model.addAttribute("ret", ret);
		return "done/addAccDone";
	}


	// 관리자 계정 삭제
	@GetMapping("/admin/deleteAcc")
	public String deleteAcc(@RequestParam("id") String id, Model model) {
			
		int rs = adminService.deleteAdminAcc(id);
		model.addAttribute("rs", rs);
		
		return "done/adminDeleteDone";
	}
	
	// 제재 수준 설정
	@GetMapping("/admin/setProhibit")
	public String setProhibit(Model model, @RequestParam("id") String id) {
		
		model.addAttribute("id", id);
		return "setProhibit";
	}
	@RequestMapping(value = "/admin/setProhibit", method = RequestMethod.POST)

	public String updateProhibit(Model model, @ModelAttribute UserVO userVO) {

		int ret = adminService.modProhibit(userVO);
		model.addAttribute("ret", ret);
		return "done/setProhibitDone";
	}

}
