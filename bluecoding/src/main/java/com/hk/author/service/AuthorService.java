package com.hk.author.service;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hk.author.dao.AuthorDAO;
import com.hk.user.dao.UserDAO;
import com.hk.user.vo.UserVO;

@Service
public class AuthorService {
	
	private static final Logger logger = LoggerFactory.getLogger(AuthorService.class);
	
	@Autowired
	AuthorDAO authorDAO;

	@Autowired
	UserDAO userDAO;

	public Integer selectProfit(String id) {
		// TODO Auto-generated method stub
		return authorDAO.selectOneProfit(id);
	}
	
	@Transactional
	public int pressProfit(UserVO userVO) {
		// TODO Auto-generated method stub
		userVO = userDAO.isExisted(userVO);

		// 로그인 안될시 0을 리턴
		if (userVO == null) {
			return 0;
		}
		
		// mapper에서 if문을 통해 유저의 profit 확인 후, 
		// 5000원 이상이면 해당 유저의 PISREFUND를 모두 빈칸으로 만듬
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", userVO.getId());
		map.put("AUTHORPROFIT", 0);
		
		int profitRs = authorDAO.pressProfit(map);
		Integer profit = profitRs*300;	
		logger.debug("[profitRS 결과]=="+profitRs);
		
		return profit;
	}

}
