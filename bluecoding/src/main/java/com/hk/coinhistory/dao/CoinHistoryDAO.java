package com.hk.coinhistory.dao;

import java.util.Map;

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

	public CoinHistoryVO selectOneHistory(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("mapper.coinhistory.selectOneHistory",map);
	}

	public int deleteOneHistory(CoinHistoryVO coinHistoryVO) {
		// TODO Auto-generated method stub
		return sqlSession.delete("mapper.coinhistory.deleteOneHistory",coinHistoryVO); 
	}
	
	
	
}
