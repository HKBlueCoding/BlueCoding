package com.hk.admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAO {

	SqlSession sqlSession;
	
	public List<HashMap>  selectDeleteBook() {
		// TODO Auto-generated method stub			
		return sqlSession.selectList("mapper.admin.selectDeleteBook");
	}
	
	public List<HashMap> selectDeletePage() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mapper.admin.selectDeletePage");
	}
	
	public List<HashMap>  selectDeleteBoard() {
		// TODO Auto-generated method stub		
		return sqlSession.selectList("mapper.admin.selectDeleteBoard");
	}

}
