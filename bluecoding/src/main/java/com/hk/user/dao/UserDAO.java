package com.hk.user.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.user.vo.UserVO;

@Repository
public class UserDAO {

	@Autowired
	SqlSession sqlSession;

	public int addUser(UserVO userVO) {
		// TODO Auto-generated method stub
		
		int ret = sqlSession.insert("mapper.user.insertUser", userVO);
		return ret;
	}

	
	
}
