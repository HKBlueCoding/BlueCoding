package com.hk.page.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.page.vo.PageVO;

@Repository
public class PageDAO {

	@Autowired
	SqlSession sqlSession;

	public List<PageVO> listPage(int bookNO) {
		// TODO Auto-generated method stub
		List<PageVO> pageVO = sqlSession.selectList("mapper.page.selectAllPage", bookNO);
		
		return pageVO;
	}	
}
