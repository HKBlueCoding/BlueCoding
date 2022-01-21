package com.hk.spec.advice;

import org.aspectj.lang.ProceedingJoinPoint;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StopWatch;


public class LoadTimeAdvice {
	
	private static final Logger logger = LoggerFactory.getLogger(LoadTimeAdvice.class);
	
	public Object loadTime(ProceedingJoinPoint pjp) throws Throwable {
		// Around 어드 바이스는 무조건 ProceedingJoinPoint 반드시 매개 변수로 받아야 함 
		
		String pointCut = pjp.getSignature().getName();
		
		// 스톱워치
		StopWatch stopWatch = new StopWatch();
		stopWatch.start();
		
		// BEFORE
		
		Object obj = pjp.proceed();
		
		// AFTER
		stopWatch.stop();
		logger.debug("=======[Advice] 성능 체크=======");
		logger.debug("→→→ 포인트 컷 메소드:"+pointCut);
		logger.debug("총 걸린 시간:"+stopWatch.getTotalTimeMillis()+"(ms)초");
		return obj;
	}
}
