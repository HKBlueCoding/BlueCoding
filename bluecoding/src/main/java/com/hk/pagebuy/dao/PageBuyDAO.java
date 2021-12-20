package com.hk.pagebuy.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.book.service.BookService;
import com.hk.page.vo.PageVO;
import com.hk.pagebuy.vo.PageBuyVO;

@Repository
public class PageBuyDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	private static final Logger logger = LoggerFactory.getLogger(PageBuyDAO.class);

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

	public int insertAuthorPage(Map<String, Object> map) {
		// TODO Auto-generated method stub
		logger.debug("[저자 페이지]=="+map.get("id"));
		return sqlSession.insert("mapper.pagebuy.insertAuthorPage", map);
	}
	
}
