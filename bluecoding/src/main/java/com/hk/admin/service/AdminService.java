package com.hk.admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.admin.dao.AdminDAO;
import com.hk.user.vo.UserVO;

@Service
public class AdminService {

	@Autowired
	AdminDAO adminDAO;

	public List<HashMap<String, Object>>  selectDeleteBook() {
		// TODO Auto-generated method stub
		return adminDAO.selectDeleteBook();
	}
	
	public List<HashMap<String, Object>> selectDeletePage() {
		// TODO Auto-generated method stub
		return adminDAO.selectDeletePage();
	}
	
	public List<HashMap<String, Object>>  selectDeleteBoard() {
		// TODO Auto-generated method stub
		return adminDAO.selectDeleteBoard();
	}

	public List<HashMap<String, Object>> selectPageBenefitList() {
		// TODO Auto-generated method stub
		return adminDAO.selectPageBenefitList();
	}

	public List<HashMap<String, Object>> selectCoinList() {
		// TODO Auto-generated method stub
		return adminDAO.selectCoinList();
	}

	public List<HashMap<String, Object>> selectAdminList() {
		// TODO Auto-generated method stub
		return adminDAO.selectAdminList();
	}

	public int deleteAdminAcc(String id) {
		// TODO Auto-generated method stub
		return adminDAO.deleteAdminAcc(id);
	}

	public int addAdminAcc(UserVO userVO) {
		// TODO Auto-generated method stub
		return adminDAO.addAdminAcc(userVO);
	}

	public UserVO checkId(String id) {
		// TODO Auto-generated method stub
		return adminDAO.dupId(id);
	}


}
