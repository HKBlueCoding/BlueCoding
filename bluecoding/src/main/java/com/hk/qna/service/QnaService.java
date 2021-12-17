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
   public List<QnaVO> listQna(String id) {
      // TODO Auto-generated method stub
      return qnaDAO.selectAllQna(id);
   }

   // Add
   public int addQna(QnaVO qnaVO) {
      // TODO Auto-generated method stub
      
      // 추가 됬는지의 여부를 받음
      int ret = qnaDAO.addQna(qnaVO);
      
      // 성공 여부에 따라서 PK이름을 조회
      int qnaNO = 0;
      if(ret > 0) {
         qnaNO = qnaDAO.selectQnaNO(qnaVO);
      }
            
      return qnaNO;
   }

   public QnaVO viewQna(int qnaNO) {
      // TODO Auto-generated method stub
      return qnaDAO.selectQna(qnaNO);
   }

   public int modQna(QnaVO qnaVO) {
      // TODO Auto-generated method stub
      return qnaDAO.updateQna(qnaVO);
   }

   public List<QnaVO> adminSelectAllQna() {
      // TODO Auto-generated method stub
      return qnaDAO.adminSelectAllQna();
   }

}