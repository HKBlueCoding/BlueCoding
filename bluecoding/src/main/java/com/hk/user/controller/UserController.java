package com.hk.user.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
import org.springframework.web.multipart.MultipartFile;

import com.hk.user.service.UserService;
import com.hk.user.vo.UserVO;

@Controller
public class UserController {

	@Autowired
	UserService userService;

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	private static final String USER_FILE_PATH = "C:\\bluecoding\\user"; // 유저 파일은 이곳에

	@GetMapping(value = "/user/register")
	public String register() {

		return "register";
	}

	// [회원가입]
	@PostMapping(value = "/user/register")
	public String registerDone(Model model, @ModelAttribute UserVO userVO,
			@RequestParam("uploadFile") MultipartFile file) throws Exception {
		// 디버깅..
		logger.debug("[userVO]" + userVO);
		logger.debug("[file]" + file.getOriginalFilename());
		// [이미지 업로드]
		// 0. 실제파일
		String fileName = file.getOriginalFilename(); // 실제 파일 이름을 가져옴

		// 1. 혹시나 파일이 안들어왔나 체크..
		if (!file.getOriginalFilename().isEmpty()) {
			logger.debug("null 아님!!");
			// 2.유저 ID의 폴더 설정
			File folder = new File(USER_FILE_PATH + "\\" + userVO.getId());

			// 3. 실제로 유저 ID의 폴더 생성
			if (!folder.exists()) {
				try {
					folder.mkdir(); // 폴더 생성합니다.
					logger.debug("폴더가 생성됨!!");
				} catch (Exception e) {
					e.getStackTrace();
				}
			} else {
				logger.debug("[회원가입]폴더가 이미 존재합니다!!");
			}

			// 4. 실제로 파일추가
			file.transferTo(new File(USER_FILE_PATH + "\\" + userVO.getId(), fileName));

			// 5. 성공한 파일이름을 userVO에 저장
			userVO.setProfile(fileName);
		}

		// DB를 통해 값을 저장
		int ret = userService.addUser(userVO);
		model.addAttribute("ret", ret);

		return "done/registerDone";
	}

	// [아이디 찾기]
	@RequestMapping(value = "/user/find/id", method = RequestMethod.GET)
	public String findId() {

		return "id";
	}
	
	// [아이디 찾기 결과]
	@RequestMapping(value = "/user/find/id", method = RequestMethod.POST)
	public String findIdResult(@ModelAttribute UserVO userVO, Model model) {
		logger.debug("[아이디 찾기]=="+userVO);
		userVO = userService.findId(userVO);
		model.addAttribute("userVO",userVO);

		return "idResult";
	}

	// [비밀번호 찾기]
	@RequestMapping(value = "/user/find/pwd", method = RequestMethod.GET)
	public String findPwd() {

		return "pwd";
	}
	
	// [비밀번호 찾기 결과]
	@RequestMapping(value = "/user/find/pwd", method = RequestMethod.POST)
	public String findPwdResult(@ModelAttribute UserVO userVO, Model model) {
		logger.debug("[비밀번호 찾기]=="+userVO);
		userVO = userService.findPwd(userVO);
		model.addAttribute("userVO",userVO);

		return "pwdResult";
	}
	
	@RequestMapping(value = "/user/info", method = RequestMethod.GET)
	public String userInfo() {

		return "userInfo";
	}

	// [사용자 보관함]

	@RequestMapping(value = "/user/chest", method = RequestMethod.GET)
	public String userChest(Model model, @RequestParam("id") String id) {
		
		// 관심작품
		Map<String, Object> map =   userService.userChestList(id);
		
		model.addAttribute("favoBookList", map.get("favoBookList"));
		model.addAttribute("favoBuyList", map.get("favoBuyList"));
		model.addAttribute("favoPayList", map.get("favoPayList"));
		model.addAttribute("benefitManager", map.get("benefitManager"));
		
		logger.debug("favoBookList = " + map.get("favoBookList"));
		logger.debug("favoPayList ==== " + map.get("favoBuyList"));
		logger.debug("favoPayList === " + map.get("favoPayList"));
		logger.debug("benefitManager === " + map.get("benefitManager"));
		
		return "userChest";
	}


	
	// [사용자 보관함]

	/*
	 * @RequestMapping(value = "/user/chest", method = RequestMethod.GET) public
	 * String userChest(Model model, @RequestParam("id") String id) {
	 * 
	 * HashMap param = new HashMap(); param.put("id", id);
	 * 
	 * List<HashMap<String, String>> list = userService.selectChest(param);
	 * 
	 * model.addAttribute("list", list); return "userChest";
	 * 
	 * }
	 */
	
	
	
	
	// [아이디 중복체크]
	@RequestMapping(value = "/dupId", method = RequestMethod.GET, produces = "application/json; charset=utf-8")
	@ResponseBody
	public Map<String, Integer> dupId(@RequestParam("id") String id) {
		logger.debug("아이디 ==" + id);
		Map<String, Integer> map = new HashMap<String, Integer>();
		// 아이디 있는지 체크
		UserVO userVO = userService.checkId(id);

		if (userVO == null) {
			// null이면 성공
			map.put("rs", 1);
		} else {
			// 같은 아이디가 있으면 실패
			map.put("rs", 0);
		}

		return map;
	}

	// [로그인 체크]
	@RequestMapping(value = "/finishLogin", method = RequestMethod.POST)
	public String finishLogin(HttpSession session, @RequestParam("loginId") String id,
			@RequestParam("loginPwd") String pwd) {
		// logger.debug("VO는?"+userVO);
		logger.debug("아이디=" + id);
		UserVO userVO = new UserVO();
		userVO.setId(id);
		userVO.setPwd(pwd);

		// 조회후
		userVO = userService.checkLogin(userVO);

		// userVO가 null이면 로그인 안된것..
		if (userVO == null) {
			return "done/loginDone";
		}

		session.setAttribute("login", userVO);

		return "done/loginDone";
	}

	// [로그아웃]
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session, Model model) {

		UserVO userVO = (UserVO) session.getAttribute("login");

		int rs = 0;
		if (userVO != null) {
			session.invalidate();
			rs++;

		}

		model.addAttribute("rs", rs);

		return "done/logoutDone";
	}
}
