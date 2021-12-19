package com.hk.pagebuy.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.page.vo.PageVO;
import com.hk.pagebuy.vo.PageBuyVO;

@Repository
public class PageBuyDAO {
	
	@Autowired
	SqlSession sqlSession;

	public int insertBuyPage(PageBuyVO pageBuyVO) {
		// TODO Auto-generated method stub
		int ret = sqlSession.insert("mapper.pagebuy.insertBuyPage", pageBuyVO);
		return ret;
	}

	public int checkBuy(Map<String, Object> selectUser) {
		// TODO Auto-generated method stub
		return sqlSession.update("mapper.pagebuy.checkBuy",selectUser);
	}

	public int selectOneBuyPage(Map<String, Object> userMap) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("mapper.pagebuy.selectOneBuyPage",userMap);
	}

	public int insertAuthorPage(PageVO pageVO) {
		// TODO Auto-generated method stub
		return sqlSession.insert("mapper.pagebuy.insertAuthorPage",pageVO);
	}
	
}
