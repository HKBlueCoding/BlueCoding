package com.hk.admin.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hk.user.vo.UserVO;

@Repository
public class AdminDAO {

	@Autowired
	SqlSession sqlSession;

	private static final Logger logger = LoggerFactory.getLogger(AdminDAO.class);

	public List<HashMap<String, Object>> selectDeleteBook() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mapper.admin.selectDeleteBook");
	}

	public List<HashMap<String, Object>> selectDeletePage() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mapper.admin.selectDeletePage");
	}

	public List<HashMap<String, Object>> selectDeleteBoard() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mapper.admin.selectDeleteBoard");
	}

	public List<HashMap<String, Object>> selectPageBenefitList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mapper.admin.selectPageBenefitList");
	}

	public List<HashMap<String, Object>> selectCoinList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mapper.admin.selectCoinList");
	}

	public List<HashMap<String, Object>> selectAdminList() {
		// TODO Auto-generated method stub
		List<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
		list = sqlSession.selectList("mapper.admin.selectAdminList");
		return list;
	}
	
	public List<HashMap<String, Object>> selectUserList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("mapper.admin.selectUserList");
	}
	

	public int deleteAdminAcc(String id) {
		// TODO Auto-generated method stub
		int rs = sqlSession.delete("mapper.admin.deleteAdminAcc", id);
		return rs;
	}

	public int addAdminAcc(UserVO userVO) {
		// TODO Auto-generated method stub
		
		int ret = sqlSession.insert("mapper.admin.addAdminAcc", userVO);
		return ret;
	}

	public UserVO dupId(String id) {
		// TODO Auto-generated method stub
		UserVO userVO = sqlSession.selectOne("mapper.admin.dupId", id);
		return userVO;
	}

	public int updateProhibit(UserVO userVO) {
		// TODO Auto-generated method stub
		return sqlSession.update("mapper.admin.updateProhibit", userVO);
	}


}
