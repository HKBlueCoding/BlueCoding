package com.hk.chest.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.chest.vo.ChestVO;

@Repository
public class ChestDAO {
	
	@Autowired
	SqlSession sqlSession;

	public List<HashMap<String, Object>> selectFavoBook(String id) {
		// TODO Auto-generated method stub
		List<HashMap<String, Object>> favoBookList = sqlSession.selectList("mapper.chest.selectFavoBookList" ,id); 		
		return favoBookList;
	}

	public List<HashMap<String, Object>> selectFavoBuy(String id) {
		// TODO Auto-generated method stub
		List<HashMap<String, Object>> favoBuyList = sqlSession.selectList("mapper.chest.selectFavoBuyList", id);
		return favoBuyList;
	}

	public List<HashMap<String, Object>> selectFavoPay(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("selectFavoPayList", id);
	}

	public List<HashMap<String, Object>> selectBenefitManager(String id) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("selectBenefitManager", id);
	}

}
