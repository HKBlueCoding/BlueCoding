package com.hk.coinhistory.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.coinhistory.vo.CoinHistoryVO;

@Repository
public class CoinHistoryDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public int insertPayHistory(CoinHistoryVO coinHistoryVO) {
		// TODO Auto-generated method stub
		int ret = sqlSession.insert("mapper.coinhistory.insertPayHistory",coinHistoryVO);
		return ret;
	}
	
	
	
}
