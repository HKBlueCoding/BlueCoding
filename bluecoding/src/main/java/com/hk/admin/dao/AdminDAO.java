package com.hk.admin.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAO {

	@Autowired
	SqlSession sqlSession;

	private static final Logger logger = LoggerFactory.getLogger(AdminDAO.class);

	public List<HashMap<String, Object>> selectDeleteBook() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mapper.admin.selectDeleteBook");
	}

	public List<HashMap<String, Object>> selectDeletePage() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mapper.admin.selectDeletePage");
	}

	public List<HashMap<String, Object>> selectDeleteBoard() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mapper.admin.selectDeleteBoard");
	}

	public List<HashMap<String, Object>> selectPageBenefitList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mapper.admin.selectPageBenefitList");
	}

}
