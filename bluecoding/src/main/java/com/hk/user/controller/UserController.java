package com.hk.user.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hk.user.service.UserService;
import com.hk.user.vo.UserVO;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@GetMapping(value="/user/register")
	public String register() {
		
		return "register";
	}
	
	// [회원가입]
	@PostMapping(value="/user/register")
	public void registerDone(Model model, @ModelAttribute UserVO userVO, HttpServletResponse response) throws IOException {
		logger.debug("[userVO]"+userVO);
		int ret = userService.addUser(userVO);
		model.addAttribute("ret", ret);
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter pw = response.getWriter();
		
		if(ret == 0) {
			pw.println("<script>"
					+ "	alert('회원가입에 실패하엿습니다.');"
					+ " location.href='../../user/register'; "
					+ " </script>");
			return;
		}
		
		pw.println("<script>"
				+ "	alert('회원가입에 성공하엿습니다.');"
				+ " location.href='../../'; "
				+ " </script>");
		return;
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
	
	// [로그인 확인]
	@RequestMapping(value="/checkLogin",method=RequestMethod.GET , produces= "application/json; charset=utf-8")
	@ResponseBody
	public UserVO checkLogin(@ModelAttribute UserVO userVO) {
		logger.debug("[userVO] =="+userVO.toString()); // 값 찍기
		
		// DB에서 로그인 체크
		userVO = userService.checkLogin(userVO);

		return userVO;
	}
	
}
