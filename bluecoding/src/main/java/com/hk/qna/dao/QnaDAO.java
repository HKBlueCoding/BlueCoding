package com.hk.qna.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.qna.vo.QnaVO;

@Repository
public class QnaDAO {

	@Autowired
	SqlSession sqlSession;

	public List<QnaVO> selectAllQna(String id) {
		// TODO Auto-generated method stub

		List<QnaVO> qnaList = sqlSession.selectList("mapper.qna.selectAllQnaList", id);

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

	// qnaNO 조회
	public int selectQnaNO(QnaVO qnaVO) {
		// TODO Auto-generated method stub

		int qnaNO = sqlSession.selectOne("mapper.qna.selectQnaNO", qnaVO);

		return qnaNO;
	}

	public List<QnaVO> adminSelectAllQna(Map<String, Integer> pageMap) {
		// TODO Auto-generated method stub

		List<QnaVO> qnaList = sqlSession.selectList("mapper.qna.adminSelectAllQna", pageMap);

		return qnaList;
	}

	public int selectTotQna() {
		// TODO Auto-generated method stub
		int totQna = sqlSession.selectOne("mapper.qna.selectTotQna");
		return totQna;
	}

}