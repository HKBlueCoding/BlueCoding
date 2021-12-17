package com.hk.chest.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.user.vo.ChestVO;

@Repository
public class ChestDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public List<ChestVO> selectFavoBook() {
		
		List<ChestVO> favoBookList = sqlSession.selectList("mapper.chest.selectFavoBookList"); 		
		return favoBookList;
	}

}
