package com.hk.user.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.board.dao.BoardDAO;
import com.hk.qna.dao.QnaDAO;
import com.hk.user.dao.UserDAO;
import com.hk.user.vo.UserVO;

@Service
public class UserService {
   
   @Autowired
   UserDAO userDAO;

   BoardDAO boardDAO;
   QnaDAO qnaDAO;

   public int addUser(UserVO userVO) {
      // TODO Auto-generated method stub
      // userDAO로 데이터를 먼저 넣음
      return userDAO.addUser(userVO);
   }

   public UserVO checkLogin(UserVO userVO) {
      // TODO Auto-generated method stub
      return userDAO.isExisted(userVO);
   }

   public UserVO checkId(String id) {
      // TODO Auto-generated method stub
      return userDAO.dupId(id);
   }
   
   public List<HashMap<String,String>> selectChest(HashMap param) {
      
      return userDAO.selectChest(param);
   }

}