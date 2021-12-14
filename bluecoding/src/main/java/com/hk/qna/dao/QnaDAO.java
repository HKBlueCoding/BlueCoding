package com.hk.qna.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.qna.vo.QnaVO;

@Repository
public class QnaDAO {

	@Autowired
	SqlSession sqlSession;
	
	public List<QnaVO> selectAllQna() {
		// TODO Auto-generated method stub
		List<QnaVO> qnaList = sqlSession.selectList("mapper.board.selectAllQnaList");
		
		return qnaList;
	}

}
