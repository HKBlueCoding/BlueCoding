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
		
		List<QnaVO> qnaList = sqlSession.selectList("mapper.qna.selectAllQnaList");
		
		return qnaList;
	}

	public int addQna(QnaVO qnaVO) {
		// TODO Auto-generated method stub
		
		int ret = sqlSession.insert("mapper.qna.insertQna", qnaVO);
		return ret;
	}

	public QnaVO selectQna(int qnaNO) {
		// TODO Auto-generated method stub
		
		QnaVO qnaVO = sqlSession.selectOne("mapper.qna.selectOneQna", qnaNO);
		return qnaVO;
	}

	public int updateQna(QnaVO qnaVO) {
		// TODO Auto-generated method stub
		int ret = sqlSession.update("mapper.qna.updateQna", qnaVO);
		return ret;
	}

	public int deleteQna(int qnaNO) {
		// TODO Auto-generated method stub
		
		int ret = sqlSession.delete("mapper.qna.deleteQna", qnaNO);
		return ret;
	}
	
}
