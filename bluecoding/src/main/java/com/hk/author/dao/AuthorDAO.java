package com.hk.author.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.pagebuy.vo.PageBuyVO;

@Repository
public class AuthorDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public int insertProfit(PageBuyVO pageBuyVO) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert("mapper.author.insertProfit",pageBuyVO);
	}

	public Integer selectOneProfit(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("mapper.author.selectOneProfit",id);
	}

	public int pressProfit(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.update("mapper.author.pressProfit",map);
	}	
	
}
