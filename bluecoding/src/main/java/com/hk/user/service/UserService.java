package com.hk.user.service;

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
		return userDAO.addUser(userVO) ;
	}

	public UserVO checkLogin(UserVO userVO) {
		// TODO Auto-generated method stub
		return userDAO.isExisted(userVO);
	}	
	
}
