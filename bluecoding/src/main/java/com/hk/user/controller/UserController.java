package com.hk.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hk.user.service.UserService;
import com.hk.user.vo.UserVO;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	@GetMapping(value="/user/register")
	public String register() {
		
		return "register";
	}
	@PostMapping(value="/user/register")
	public String registerDone(Model model, @ModelAttribute UserVO userVO) {
		
		int ret = userService.addUser(userVO);
		model.addAttribute("ret", ret);
		
		return "main";
	}


	@RequestMapping(value="/user/find/id", method=RequestMethod.GET)
	public String findId() {
		
		return "id";
	}
	
	@RequestMapping(value="/user/find/pwd", method=RequestMethod.GET)
	public String findPwd() {
		
		return "pwd";
	}
	
	@RequestMapping(value="/user/info", method=RequestMethod.GET)
	public String userInfo() {
		
		return "userInfo";
	}
	
	@RequestMapping(value="/user/chest", method=RequestMethod.GET)
	public String userChest() {
		
		return "userChest";
	}
	
}
