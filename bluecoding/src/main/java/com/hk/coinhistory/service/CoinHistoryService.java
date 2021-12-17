package com.hk.coinhistory.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.coinhistory.dao.CoinHistoryDAO;
import com.hk.coinhistory.vo.CoinHistoryVO;
import com.hk.user.dao.UserDAO;

@Service
public class CoinHistoryService {
	
	@Autowired
	CoinHistoryDAO coinHistoryDAO;
	
	@Autowired
	UserDAO userDAO;
	
	public int insertPayHistory(CoinHistoryVO coinHistoryVO) {
		// TODO Auto-generated method stub
		
		int retCharge = 0;
		
		int retHis = coinHistoryDAO.insertPayHistory(coinHistoryVO);
		
		if(retHis > 0) {
			
		}
		
		return 0; 
	}

}
