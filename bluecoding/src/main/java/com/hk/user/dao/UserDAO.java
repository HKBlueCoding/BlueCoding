package com.hk.user.dao;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;

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
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String birthFix = simpleDateFormat.format(userVO.getBirth());
		logger.debug(birthFix);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userVO", userVO);
		map.put("birthFix", birthFix);
		int ret = sqlSession.insert("mapper.user.insertUser", map);
		
		return ret;
	}

	public UserVO isExisted(UserVO userVO) {
		// TODO Auto-generated method stub
		userVO = sqlSession.selectOne("mapper.user.isExisted", userVO);
		return userVO;
	}
	
}
