package com.hk.coinhistory.service;

import java.util.Map;

import org.slf4j.Logger;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import com.hk.coinhistory.dao.CoinHistoryDAO;
import com.hk.coinhistory.vo.CoinHistoryVO;
import com.hk.commission.dao.CommissionDAO;
import com.hk.user.dao.UserDAO;

@Service
public class CoinHistoryService {
	
	private static final Logger logger = LoggerFactory.getLogger(CoinHistoryService.class);
	
	@Autowired
	CoinHistoryDAO coinHistoryDAO;
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	CommissionDAO commissionDAO;
	
	public int insertPayHistory(CoinHistoryVO coinHistoryVO) {
		// TODO Auto-generated method stub
		
		// 먼저 사용자의 코인을 충전 (어차피 결제완료 되서 여기 온거니까)
		int retCharge = userDAO.updateCoin(coinHistoryVO);
		
		// 1. 만약 사용자의 코인을 충전했다면...
		int retHis = 0;
		if(retCharge > 0) {
			// 코인 충전 기록을 DB에 insert
			logger.debug("[유저에게 Coin 충전함]"+retCharge);
			retHis = coinHistoryDAO.insertPayHistory(coinHistoryVO);
		}
		logger.debug("[기록 결과]"+retHis);
		
		return retHis; 
	}
	
	@Transactional(propagation = Propagation.REQUIRED, rollbackFor = { Exception.class })
	public CoinHistoryVO selectOneHistory(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
		CoinHistoryVO coinHistoryVO = null;
		try {
			coinHistoryVO = coinHistoryDAO.selectOneHistory(map);
			// 만약 값이 잘 있으면 해당 값을 지움
			int ret = 0;
			if(coinHistoryVO != null) {
				ret = coinHistoryDAO.deleteOneHistory(coinHistoryVO);
				if (ret > 0) {
					logger.debug("[차감할 금액]=="+coinHistoryVO.getRechargeCoin());
					ret = userDAO.updateRefund(coinHistoryVO);
				}else {
					// 실패하면 그냥 null
					coinHistoryVO = null;
				}
			}
		}catch (Exception e){
			TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
			e.printStackTrace();
		}
		
		return coinHistoryVO;
	}

}
