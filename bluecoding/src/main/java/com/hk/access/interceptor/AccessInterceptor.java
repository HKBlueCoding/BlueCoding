package com.hk.access.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.hk.user.vo.UserVO;

public class AccessInterceptor implements HandlerInterceptor {

	private static final Logger logger = LoggerFactory.getLogger(AccessInterceptor.class);

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		logger.debug("====================[제재 2단계 실행](2)====================");
		HttpSession session = request.getSession(false);

		if(session == null || session.getAttribute("login") == null) {
			return true;
		}
		
		UserVO userVO = (UserVO) session.getAttribute("login");		
		Integer prohibit = userVO.getProhibitLV();
		// 제재 단계 2단계면 모든 글쓰기 비활성화
		if(prohibit != null) {			
			if(prohibit == 2) {
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
