package com.hk.author.controller;

import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hk.author.service.AuthorService;
import com.hk.user.vo.UserVO;

@Controller
public class AuthorController {

	private static final Logger logger = LoggerFactory.getLogger(AuthorController.class);

	@Autowired
	AuthorService authorService;

	@Autowired
	MailSender mailSender;

	@GetMapping("/ahthor/email")
	public String athorMail(HttpSession session, Model model) throws Exception {

		UserVO userVO = (UserVO) session.getAttribute("login");

		// 아이디 접속자를 차단
		if (userVO == null) {
			return "done/authorMailFail";
		}

		Integer profit = authorService.selectProfit(userVO.getId());

		logger.debug(userVO.getId() + "의[유저의 수익]==" + profit);

		// 5000원 이하는 보내버림 (테스트 할때는 300원부터)
		if (profit == null && profit == 0 || profit < 300) {
			model.addAttribute("ret", 0);
			return "done/authorMailFail";
		}

		// 이상일 경우 이메일 입력 창으로 보냄
		model.addAttribute("id", userVO.getId());
		model.addAttribute("profit", profit);
		return "authorMail";
	}
	
	@PostMapping("/ahthor/email")
	public String ahtorProfitDone(@ModelAttribute UserVO userVO, 
								  @RequestParam("profitEmail") String profitEmail,
								  @RequestParam("accountNumber") String account, 
								  @RequestParam("accountHolder") String holder, 
								  @RequestParam("bank") String bank ,Model model) {
		// 확인 절차 밑 현금 삭제
		int profit = authorService.pressProfit(userVO);
		
		logger.debug("[들어온 결과]");
		
		if(profit >= 300) {
			// UUID로 접수 번호 설정( 나중에 환불이나 계좌번호 변경을 요청 받을때 유저의 신원을 확인할 예정 )
			UUID proessCode = UUID.randomUUID();
			SimpleMailMessage message = new SimpleMailMessage();
			
			// [유저에게 메일을 보냄]
			message.setTo(profitEmail); // 유저에게 받은 이메일을 수신자로 설정
			message.setSubject("[블루코딩] 환영합니다. 현금화 결제가 접수중입니다.");// 제목 설정
			message.setText("[블루코딩] 현금화가 접수되었습니다. 당신의 접수번호는 "+proessCode+"입니다." // 내용 설정
							 + "(flenion10@gamil.com이외에는 모두 사칭 이메일입니다. 개인정보를 주지 마세요)"); 
			message.setFrom("flenion1@gamil.com"); // 발신자 설정
			
			mailSender.send(message);
			
			// [관리자에게 계좌번호와 메일을 보냄]
			message.setTo("flenion10@gmail.com"); // 관리자주소로 이메일을 보냄
			message.setSubject("[거래 접수] 현금화 거래가 접수 되었습니다.");// 제목 설정
			message.setText(holder+"님의 거래가 접수 되었습니다. \n"+"계좌번호:"+account
							 +"\n 예금주:"+holder
							 +"\n 은행:"+bank// 내용 설정
							 +"\n 입금할 금액:"+profit
							 +"\n pressCode:"+proessCode
							 +"\n (flenion10@gamil.com이외에는 모두 사칭 이메일입니다. 개인정보를 주지 마세요)"); 
			message.setFrom("flenion1@gamil.com"); // 발신자 설정
			
			mailSender.send(message);
			
			logger.debug("[메일 발송 완료?]---"+profit);
		}
		
		model.addAttribute("profit", profit);
		model.addAttribute("email", profitEmail);
		
		return "done/authorProfitDone";
	}

}
