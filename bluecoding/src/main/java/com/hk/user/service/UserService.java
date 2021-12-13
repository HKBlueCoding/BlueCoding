package com.hk.user.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.user.dao.UserDAO;
import com.hk.user.vo.UserVO;

@Service
public class UserService {
	
	@Autowired
	UserDAO userDAO;

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
	
}
