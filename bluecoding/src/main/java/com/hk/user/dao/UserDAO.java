package com.hk.user.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.user.vo.UserVO;

@Repository
public class UserDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(UserDAO.class);
	
	@Autowired
	SqlSession sqlSession;



	public int addUser(UserVO userVO) {
		// TODO Auto-generated method stub
		logger.debug("[userVO]"+userVO);
		int ret = sqlSession.insert("mapper.user.insertUser",userVO);
		
		return ret;
	}

	public UserVO isExisted(UserVO userVO) {
		// TODO Auto-generated method stub
		userVO = sqlSession.selectOne("mapper.user.isExisted", userVO);
		return userVO;
	}

	public UserVO dupId(String id) {
		// TODO Auto-generated method stub
		UserVO userVO = sqlSession.selectOne("mapper.user.dupId",id);
		return userVO;
	}

	
}
