package com.hk.coinhistory.controller;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.view.RedirectView;

import com.hk.amount.vo.AmountVO;
import com.hk.coinhistory.service.CoinHistoryService;
import com.hk.coinhistory.vo.CoinHistoryVO;
import com.hk.kakaopayapproval.vo.KakaoPayApprovalVO;
import com.hk.kakaopayreader.vo.KakaoPayReadyVO;
import com.hk.kakaopayrefund.vo.KakaoPayRefundVO;
import com.hk.user.vo.UserVO;

@Controller
public class CoinHistoryController {

	private static final Logger logger = LoggerFactory.getLogger(CoinHistoryController.class);

	@Autowired
	CoinHistoryService coinHistoryService;

	// [결제금액을 입력받는 form]
	@RequestMapping(value = "/kakaopay/buy", method = RequestMethod.GET)
	public String kakaopayForm() {

		return "kakaopayForm";
	}

	// [kakao 결제창 띄우기]
	@RequestMapping(value = "/kakaopay/buy", method = { RequestMethod.POST })
	public RedirectView kakaopayBuy(@ModelAttribute CoinHistoryVO coinHistoryVO, HttpSession session) {
		RestTemplate restTemplate = new RestTemplate();

		// 다되면 외부 URL로 이동해야 하니.. // 혹시나 실패할지 모르니 미리 실패 URL 지정
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl("http://localhost/kakaopay/fail");
		logger.debug("[kakao 결제 들어옴]");

		// header에 Authorization, Accept 등등을 설정
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "KakaoAK 6e7f56c4944064ee7b694227d4b2e459");
		headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
		headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");

		// 꼭 넣어야 하는 값들을 넣어서 kakaopay한테 전달
		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		params.add("cid", "TC0ONETIME");
		params.add("partner_order_id", "partner_order_id");
		params.add("partner_user_id", "partner_user_id");
		params.add("item_name", "BlueNovel유료코인");
		params.add("quantity", "1");
		params.add("total_amount", Integer.toString(coinHistoryVO.getRechargeCoin())); // 결제금액 지정
		params.add("tax_free_amount", "0");
		params.add("approval_url", "http://localhost/kakaopay/done");
		params.add("cancel_url", "http://localhost/kakaopay/cancel");
		params.add("fail_url", "http://localhost/kakaopay/fail");

		HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);

		try { // 해당 정보들을 보내서, 값을 받아옴...
			KakaoPayReadyVO kakaoPayReadyVO = restTemplate
					.postForObject(new URI("https://kapi.kakao.com/v1/payment/ready"), body, KakaoPayReadyVO.class);
			logger.debug("next_redirect_pc_url==" + kakaoPayReadyVO.getNext_redirect_pc_url());
			logger.debug("tid==" + kakaoPayReadyVO.getTid());

			// map에 담아서 세션을 보냄...
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("kakaoPayReadyVO", kakaoPayReadyVO);
			map.put("coinHistoryVO", coinHistoryVO);
			session.setAttribute("coin", map);
			// 외부 URL이동 설정
			redirectView.setUrl(kakaoPayReadyVO.getNext_redirect_pc_url());

		} catch (RestClientException e) { // TODO Auto-generated catch block
			e.printStackTrace();
		} catch (URISyntaxException e) { // TODO Auto-generated
			e.printStackTrace();
		}

		// 외부 URL로 이동
		return redirectView;
	}

	// [결제 성공시 URL]
	@GetMapping("/kakaopay/done")
	public String kakaopayDone(@RequestParam("pg_token") String pg_token, Model model, HttpSession session) {
		RestTemplate restTemplate = new RestTemplate();

		// map에 담겨진 정보를 받음
		Map<String, Object> map = (Map<String, Object>) session.getAttribute("coin");

		// 받은 데이터를 변수에 옮겨 넣음
		KakaoPayReadyVO kakaoPayReadyVO = (KakaoPayReadyVO) map.get("kakaoPayReadyVO");
		// 사용자의 id와 입력받은 결제금액이 들어있음
		CoinHistoryVO coinHistoryVO = (CoinHistoryVO) map.get("coinHistoryVO");

		logger.debug("[결제 성공 페이지!!]");
		logger.debug("[pg_token]=" + pg_token);
		logger.debug("[tid]=" + kakaoPayReadyVO.getTid());

		// 서버로 요청할 header
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "KakaoAK 6e7f56c4944064ee7b694227d4b2e459");
		headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
		headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");

		// 서버에 보낼 param 설정
		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		params.add("cid", "TC0ONETIME");
		params.add("tid", kakaoPayReadyVO.getTid());
		params.add("partner_order_id", "partner_order_id");
		params.add("partner_user_id", "partner_user_id");
		params.add("pg_token", pg_token);
		params.add("total_amount", Integer.toString(coinHistoryVO.getRechargeCoin()));

		// 서버에 보냄
		HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);

		// 서버에 데이터를 VO로 받을 예정
		KakaoPayApprovalVO kakaoPayApprovalVO = null;
		int rs = 0;
		try {
			// kakao 서버에서 받은 결제완료 정보들을 VO로 받음
			kakaoPayApprovalVO = restTemplate.postForObject(new URI("https://kapi.kakao.com/v1/payment/approve"), body,
					KakaoPayApprovalVO.class);

			// 이미 VO에는 id와 rechargeCoin이 들어있음
			// 허나 혹시 모르니 결제된 금액 다시 설정
			// AmountVO: 결제금액과 관련된 정보가 들어있음
			AmountVO amount = (AmountVO) kakaoPayApprovalVO.getAmount();
			// 그중에 총금액을 충전한 금액으로 설정
			coinHistoryVO.setRechargeCoin(amount.getTotal());
			// 가장 중요한 tid(고유번호)를 설정 / 코인 충전 날짜 설정(결제 승인 날짜로 지정)
			coinHistoryVO.setTid(kakaoPayApprovalVO.getTid());

			coinHistoryVO.setCoinDate(kakaoPayApprovalVO.getCreated_at());

			// id, 충전한 금액
			rs = coinHistoryService.insertPayHistory(coinHistoryVO);

			// 세션의 값도 변경해야 사용자가 즉시 변경된 코인 값을 보니까...
			UserVO userVO = (UserVO) session.getAttribute("login");

			// 만약 insert에 성공시, 유저의 세션정보를 업데이트
			if (rs > 0) {
				// 기존 코인 + 충전된코인
				userVO.setCoin(userVO.getCoin() + amount.getTotal());
				session.setAttribute("login", userVO);
			}

		} catch (RestClientException e) {
			e.printStackTrace();

		} catch (URISyntaxException e) {
			e.printStackTrace();

		}

		logger.debug("전체 결제 금액==" + kakaoPayApprovalVO.getAmount());
		model.addAttribute("rs", rs);
		model.addAttribute("total", coinHistoryVO.getRechargeCoin());

		return "done/kakaopayDone";
	}

	// [결제 취소시 URL]
	@GetMapping("/kakaopay/cancel")
	public String kakaopayCancel() {

		return "done/kakaopayCancel";
	}

	// [결제 실패시 URL]
	@GetMapping("/kakaopay/fail")
	public String kakaopayFail() {

		return "done/kakaopayFail";
	}

	// [환불 URL]
	@GetMapping("/kakaopay/refund")
	public String kakaoPayRefund(@RequestParam("cDate") String cDate,
									 HttpSession session, Model model) throws Exception {
		logger.debug("[cDate]=="+cDate);
		
		UserVO userVO = (UserVO) session.getAttribute("login");
		if(userVO == null) {
			return "done/kakaopayFail";
		}
		Map<String, Object> map = new HashMap<String, Object>();
		// 받은 데이터를 토대로 DB에서 select 후 맞으면 kakao 환불 페이지를 표시할 거임
		map.put("id", userVO.getId());
		map.put("cDate", cDate);
		CoinHistoryVO coinHistoryVO = coinHistoryService.selectOneHistory(map);
		if(coinHistoryVO == null) {
			return "done/kakaopayFail";
		}
		
		// userVO의 값을 새로 업데이트...
		userVO.setCoin(userVO.getCoin()-coinHistoryVO.getRechargeCoin());
		session.setAttribute("login", userVO);
		
		// 서버로 요청할 header
		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "KakaoAK 6e7f56c4944064ee7b694227d4b2e459");
		headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
		headers.add("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");
		
		// String 변수로 설정
		String coin = Integer.toString(coinHistoryVO.getRechargeCoin());
		
		// 서버에 보낼 param 설정
		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		params.add("cid", "TC0ONETIME");
		params.add("tid", coinHistoryVO.getTid()); // 결제 했을때의 TID
		params.add("cancel_amount", coin); // 취소 금액
		params.add("cancel_tax_free_amount", "0");
		
		// 서버에 전송
		RestTemplate restTemplate = new RestTemplate();
		HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
		KakaoPayRefundVO kakaoPayRefundVO = null;
		
		// response를 받아옴
		try {
			kakaoPayRefundVO = restTemplate.postForObject(new URI("https://kapi.kakao.com/v1/payment/cancel"), body, KakaoPayRefundVO.class);
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		logger.debug("[결제 취소 성공]=="+ kakaoPayRefundVO.getApproved_cancel_amount());
		
		model.addAttribute("cancel_amount", kakaoPayRefundVO.getApproved_cancel_amount());
		
		return "done/kakaoPayRefundDone";
	}

}