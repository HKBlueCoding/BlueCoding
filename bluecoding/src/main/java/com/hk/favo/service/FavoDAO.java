package com.hk.favo.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.favo.vo.FavoVO;

@Repository
public class FavoDAO {

	@Autowired
	SqlSession sqlSession;
	
	public List<FavoVO> viewAllFavo() {
		// TODO Auto-generated method stub
		List<FavoVO> favoList = sqlSession.selectList("mapper.favo.seletFavo");
		return favoList;
	}

	public int insertFavo(FavoVO favoVO) {
		// TODO Auto-generated method stub
		int ret = sqlSession.insert("mapper.favo.insertFavo", favoVO);
		return ret;
	}

}
