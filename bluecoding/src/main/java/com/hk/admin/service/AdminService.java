package com.hk.admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminService {

	@Autowired
	AdminDAO adminDAO;

	public List<HashMap>  selectDeleteBook() {
		// TODO Auto-generated method stub
		return adminDAO.selectDeleteBook();
	}
	
	public List<HashMap> selectDeletePage() {
		// TODO Auto-generated method stub
		return adminDAO.selectDeletePage();
	}
	
	public List<HashMap>  selectDeleteBoard() {
		// TODO Auto-generated method stub
		return adminDAO.selectDeleteBoard();
	}


}
