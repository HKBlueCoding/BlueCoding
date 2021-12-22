package com.hk.Warring.interceptor;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.hk.user.vo.UserVO;

public class WarringInterceptor implements HandlerInterceptor {
	
	private static final Logger logger = LoggerFactory.getLogger(WarringInterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		logger.debug("====================[제재 1단계 실행](2)====================");
		HttpSession session = request.getSession(false);		
		if(session == null || session.getAttribute("login") == null) {
			// 비로그인 유저는 그냥 보냄
			return true;
		}
		
		UserVO userVO = (UserVO) session.getAttribute("login");
		// 만약 1단계면  커뮤니티 글쓰기 비활성화
		Integer prohibit = userVO.getProhibitLV();
		if(prohibit != null) {			
			if(prohibit == 1) {
				return false;
			}
			
		}			
		
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub

	}

}
