package com.hk.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {
	
	@RequestMapping(value="/user/register", method=RequestMethod.GET)
	public String register() {
		
		return "register";
	}

	@RequestMapping(value="/user/find/id", method=RequestMethod.GET)
	public String findId() {
		
		return "id";
	}
	
	@RequestMapping(value="/user/find/pwd", method=RequestMethod.GET)
	public String findPwd() {
		
		return "pwd";
	}
	
	@RequestMapping(value="/user/chest", method=RequestMethod.GET)
	public String userChest() {
		
		return "userChest";
	}
	
}
