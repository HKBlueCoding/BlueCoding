package com.hk.user.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.bind.annotation.SessionAttribute;

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
	public String registerDone(Model model, @ModelAttribute UserVO userVO, HttpServletResponse response) throws IOException {
		logger.debug("[userVO]"+userVO);
		int ret = userService.addUser(userVO);
		model.addAttribute("ret", ret);
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter pw = response.getWriter();
			
		return "done/registerDone";
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
	
	// [아이디 중복체크]
	@RequestMapping(value="/dupId",method=RequestMethod.GET , produces= "application/json; charset=utf-8")
	@ResponseBody	
	public Map<String, Integer> dupId(@RequestParam("id") String id){
		logger.debug("아이디 =="+id);
		Map<String, Integer> map = new HashMap<String, Integer>();
		// 아이디 있는지 체크
		UserVO userVO = userService.checkId(id);
		
		if(userVO == null) {
			// null이면 성공
			map.put("rs", 1);
		}else {
			// 같은 아이디가 있으면 실패
			map.put("rs", 0);
		}
		
		
		return map;
	}
	
	// [로그인 확인]
	@RequestMapping(value="/checkLogin",method=RequestMethod.POST , produces= "application/json; charset=utf-8")
	@ResponseBody
	public UserVO checkLogin(@ModelAttribute UserVO userVO, HttpSession session, Model model) {
		// 0.파라메터에 넣었으니, 없으면 알아서 세션 생성됨
		logger.debug("[userVO] =="+userVO.toString()); // 값 찍기
		
		// 1.DB에서 로그인 체크
		userVO = userService.checkLogin(userVO);
		
		// 2.만약 로그인 값이 null이 아니면 session을 추가
		if(userVO != null) {
			session.setAttribute("login", userVO);
		}
		
		return userVO;
	}
	
	@RequestMapping(value="/finishLogin", method=RequestMethod.POST)
	
	public String finishLogin(HttpServletRequest request, @RequestParam("id") String id, @RequestParam("pwd") String pwd, Model model) {
		//logger.debug("VO는?"+userVO);
		logger.debug("아이디="+id);
		UserVO userVO = new UserVO();
		userVO.setId(id);
		userVO.setPwd(pwd);
		// 다시 확인..
		userVO = userService.checkLogin(userVO);
		
		// 그냥 쳐보고
		HttpSession session = request.getSession();
		session.setAttribute("login", userVO);
		return "done/loginDone";
	}
	
}
