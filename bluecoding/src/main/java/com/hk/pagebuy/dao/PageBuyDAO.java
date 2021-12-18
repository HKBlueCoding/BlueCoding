package com.hk.pagebuy.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	
	
}
