package com.hk.chest.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.chest.vo.ChestVO;

@Repository
public class ChestDAO {
	
	@Autowired
	SqlSession sqlSession;

	public List<ChestVO> selectFavoBook(String id) {
		// TODO Auto-generated method stub
		List<ChestVO> favoBookList = sqlSession.selectList("mapper.chest.selectFavoBookList" ,id); 		
		return favoBookList;
	}

	public List<ChestVO> selectFavoBuy(String id) {
		// TODO Auto-generated method stub
		List<ChestVO> favoBuyList = sqlSession.selectList("mapper.chest.selectFavoBuyList", id);
		return favoBuyList;
	}

}
