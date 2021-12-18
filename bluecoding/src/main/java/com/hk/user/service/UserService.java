package com.hk.user.service;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.board.dao.BoardDAO;
import com.hk.chest.dao.ChestDAO;
import com.hk.chest.vo.ChestVO;
import com.hk.qna.dao.QnaDAO;
import com.hk.user.dao.UserDAO;
import com.hk.user.vo.UserVO;

@Service
public class UserService {

	@Autowired
	UserDAO userDAO;
	@Autowired
	BoardDAO boardDAO;
	@Autowired
	QnaDAO qnaDAO;
	@Autowired
	ChestDAO chestDAO;

	public int addUser(UserVO userVO) {
		// TODO Auto-generated method stub
		// userDAO로 데이터를 먼저 넣음
		return userDAO.addUser(userVO);
	}

	public UserVO checkLogin(UserVO userVO) {
		// TODO Auto-generated method stub
		return userDAO.isExisted(userVO);
	}

	public UserVO checkId(String id) {
		// TODO Auto-generated method stub
		return userDAO.dupId(id);
	}

	/*
	 * // [ 로그인 사용자가 쓴 글 조회] public List<HashMap<String,String>> selectChest(HashMap
	 * param) {
	 * 
	 * return userDAO.selectChest(param); }
	 */

	public Map<String, Object> userChestList(String id) {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();

		// 관심작품
		List<ChestVO> favoBookList = chestDAO.selectFavoBook(id);
		// 구매내역
		List<ChestVO> favoBuyList = chestDAO.selectFavoBuy(id);
		// 결제내역
		List<ChestVO> favoPayList = chestDAO.selectFavoPay(id);

		map.put("favoBookList", favoBookList);
		map.put("favoBuyList", favoBuyList);
		map.put("favoPayList", favoPayList);

		return map;
	}
	
	// 아이디 찾기
	public UserVO findId(UserVO userVO) {
		// TODO Auto-generated method stub
		return userDAO.findId(userVO);
	}

	// 비밀번호 찾기
	public UserVO findPwd(UserVO userVO) {
		// TODO Auto-generated method stub
		return userDAO.findPwd(userVO);
	}

}