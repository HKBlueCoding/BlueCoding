package com.hk.author.controller;

import java.net.URI;
import java.net.URISyntaxException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.view.RedirectView;

import com.hk.kakaopayreader.vo.KakaoPayReadyVO;

@Controller
public class AuthorController {
	
	private static final Logger logger = LoggerFactory.getLogger(AuthorController.class);
	
	@GetMapping("/openbanking/withdraw")
	public RedirectView banking() throws Exception {
		RestTemplate restTemplate = new RestTemplate();
		
		RedirectView redirectView = new RedirectView();
		logger.debug("[오픈뱅킹 결제 들어옴]");
		redirectView.setUrl("http://localhost:8888/kakaopay/fail");
		
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "Bearer <access_token>");
		headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
		headers.add("Content-Type", "application/json; charset=UTF-8");		
		
		// required는 모두 넣음
		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		params.add("bank_tran_id", "F123456789U4BC34239Z");
		params.add("cntr_account_type", "N");
		params.add("cntr_account_num", 	"1101230000678");
		params.add("dps_print_content", "현금화");
		params.add("fintech_use_num", "123456789012345678901234"); 
		params.add("tran_amt", "3000"); // 거래 금액
		params.add("tran_dtime", "20190910101921"); //요청일시
		params.add("req_client_name", "홍길동"); // 요청 고객성명
		params.add("req_client_num", "HONGGILDONG1234"); // 요청고객 회원 번호
		params.add("transfer_purpose", "TR");
		
		HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
		Object fs = restTemplate.postForObject(new URI("https://openapi.openbanking.or.kr/v2.0/transfer/withdraw/fin_num"), body, Object.class);
		
		logger.debug("fs =="+fs);
		return redirectView;
	}
	
}
