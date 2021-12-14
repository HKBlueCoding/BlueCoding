package com.hk.qna.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.qna.dao.QnaDAO;
import com.hk.qna.vo.QnaVO;

@Service
public class QnaService {
	
	@Autowired
	QnaDAO qnaDAO;

	// List
	public List<QnaVO> listQna() {
		// TODO Auto-generated method stub
		return qnaDAO.selectAllQna();
	}

	// Add
	public int addQna(QnaVO qnaVO) {
		// TODO Auto-generated method stub
		return qnaDAO.addQna(qnaVO);
	}

}
