package com.hk.news.controller;

import java.io.File;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.hk.news.service.NewsService;
import com.hk.news.vo.NewsVO;
import com.hk.newsreply.vo.NewsReplyVO;

@Controller
public class NewsController {

   private static final Logger logger = LoggerFactory.getLogger(NewsController.class);
   private static final String NEWS_FILE_PATH = "C:\\bluecoding\\news"; // 뉴스 파일은 이곳에

   @Autowired
   NewsService newsService;

   @GetMapping("/news/add")
   public String newsAdd() {
      // 11
      return "newsAdd";
   }

   @PostMapping("/news/add")
   public String newsAddDone(Model model, @ModelAttribute NewsVO newsVO,
         @RequestParam("uploadFile") MultipartFile file) throws Exception {
      logger.debug("[newsVO] = " + newsVO);
      logger.debug("[file]" + file.getOriginalFilename());

      // 먼저 newsImage파일명을 미리 받음
      String fileName = file.getOriginalFilename();
      newsVO.setNewsImage(fileName);

      // 기존 mybatis 활용 DB에 글쓰기 넣기
      // 추가된 newsNO를 받고, insert된 결과 값도 받고
      int newsNO = newsService.addNews(newsVO);

      // [이미지 파일 업로드]... pk 값을 뽑아야 해서 정상적으로 추가 됫을때 실행됨..
      // 파일삭제는 안해도 되고...(어차피 게시글 삭제는 안하고 표시만하니..)
      // + newsNO가 있어서 제대로 조회되었을때만..
      if (!file.getOriginalFilename().isEmpty() && newsNO > 0) {
         logger.debug("null 아님!!");
         // newsNO(PK)로 폴더 설정
         File folder = new File(NEWS_FILE_PATH + "\\" + newsNO);

         if (!folder.exists()) {
            try {
               folder.mkdir();
               logger.debug("폴더가 생성됨!!");
            } catch (Exception e) {
               e.getStackTrace();
            }
         } else {
            logger.debug("[뉴스 글쓰기]폴더가 이미 존재합니다!!");
         }
         // 생성한 newsNO 폴더 안에 파일을 넣음
         file.transferTo(new File(NEWS_FILE_PATH + "\\" + newsNO, fileName));
      }

      // 어차피 성공결과는 1이상이면 되는거니...
      model.addAttribute("ret", newsVO.getNewsNO());

      // 해당 게시판으로 이동하려면
      model.addAttribute("category", newsVO.getCategory());
      logger.debug("[ret] = " + newsVO.getNewsNO());

      return "done/newsAddDone";
   }
   
   // [공지시항 리스트]
   @RequestMapping(value = "/news/notice", method = RequestMethod.GET)
   public String notice(@RequestParam(value="section", required=false, defaultValue = "1")Integer section, 
		   				@RequestParam(value="pageNum", required=false, defaultValue = "1")Integer pageNum, Model model) {

	  // section = 12345678910까지가 기본 섹션
	  // pageNum = 사용자가 보려하는 페이지 번호
	  // 혹여나 만약 0이하를 치면..
	  if(section <= 0) { ++section; }
      if(pageNum <= 0) { ++pageNum; }
      Map<String, Integer> pageMap = new HashMap<String, Integer>();
      pageMap.put("section", section);
      pageMap.put("pageNum", pageNum);
      
	  // 리스트
      Map<String, Object> map = newsService.listNewsNotice(pageMap);
      model.addAttribute("noticeList", map.get("noticeList"));
      model.addAttribute("totNoticeNO",map.get("totNoticeNO"));
      model.addAttribute("section",section);
      model.addAttribute("pageNum",pageNum);
      
      logger.debug("[newsList] = " + map.get("noticeList"));
      logger.debug("[newsList] = " + map.get("noticeList"));
      return "notice";
   }

   @RequestMapping(value = "/news/event", method = RequestMethod.GET)
   public String event(@RequestParam(value="section", required=false, defaultValue = "1")Integer section, 
					   @RequestParam(value="pageNum", required=false, defaultValue = "1")Integer pageNum, Model model) {

	  if(section <= 0) { ++section; }
	  if(pageNum <= 0) { ++pageNum; }
	   
      Map<String, Integer> pageMap = new HashMap<String, Integer>();
      pageMap.put("section", section);
      pageMap.put("pageNum", pageNum);	  
	  
      Map<String, Object> map = newsService.listNewsEvent(pageMap);
      
      model.addAttribute("eventList", map.get("eventList"));
      model.addAttribute("totEventNO", map.get("totEventNO"));
      model.addAttribute("section",section);
      model.addAttribute("pageNum",pageNum);      
      logger.debug("[eventList] = " + map.get("eventList"));
      return "event";
   }

   @GetMapping("/news/notice/view")
   public String noticeView(Model model, @RequestParam("newsNO") int newsNO) {
      Map<String, Object> map = newsService.newsList(newsNO);
      logger.debug("[map] = " + map);
      logger.debug("[newsNO] = " + newsNO);
      model.addAttribute("newsVO", map.get("newsVO"));
      model.addAttribute("newsReplyVO", map.get("newsReplyVO"));

      return "noticeView";
   }

   @GetMapping("/news/event/view")
   public String eventView(Model model, @RequestParam("newsNO") int newsNO) {
      Map<String, Object> map = newsService.newsList(newsNO);
      logger.debug("[map] = " + map);
      logger.debug("[newsNO] = " + newsNO);
      model.addAttribute("newsVO", map.get("newsVO"));
      model.addAttribute("newsReplyVO", map.get("newsReplyVO"));

      return "eventView";
   }

   // [업데이트 view]
   @GetMapping("/news/notice/update")
   public String newsNoticeUpdate(Model model, @RequestParam("newsNO") int newsNO) {
      logger.debug("[newsNO11] = " + newsNO);

      NewsVO newsVO = newsService.newsOne(newsNO);
      model.addAttribute("newsVO", newsVO);
      logger.debug("[newsVO11] = " + newsVO);

      return "noticeUpdate";
   }

   // [업데이트 done]
   @PostMapping("/news/notice/update")
   public String newsNoticeUpdateDone(Model model, @ModelAttribute NewsVO newsVO,
         @RequestParam("uploadFile") MultipartFile file) throws Exception {
      logger.debug("[추가의 VO] = " + newsVO);
      logger.debug("[이미지 이름]" + file.getOriginalFilename());
      // 받는건.. newsVO(기존의 이미지이름을 가진 newsImage),
      // (혹시나 선택 되었다면) uploadFile에 변경된 이미지파일

      // uploadFile이 null이 아니면 파일이 변경된 거니까 작동해야함
      if (!file.getOriginalFilename().isEmpty()) {
         logger.debug("null 아님!!");
         String fileName = file.getOriginalFilename();

         // 추가전 이미지 파일을 삭제
         // 기존에 이미지를 안넣었을 수도 있으니...
         if (!newsVO.getNewsImage().isEmpty()) {
            // C:\\bluecoding\\news\\(해당 newsNO)\\파일명.png
            File fileDel = new File(NEWS_FILE_PATH + "\\" + newsVO.getNewsNO() + "\\" + newsVO.getNewsImage());
            if (fileDel.exists()) {
               fileDel.delete();
            }
         }

         // newsNO(PK)로 폴더 설정(이미지를 새로 추가할수도 있으니까..)
         File folder = new File(NEWS_FILE_PATH + "\\" + newsVO.getNewsNO());

         if (!folder.exists()) {
            try {
               folder.mkdir();
               logger.debug("폴더가 생성됨!!");
            } catch (Exception e) {
               e.getStackTrace();
            }
         } else {
            logger.debug("[뉴스 수정] 폴더가 이미 존재합니다!!");
         }

         // 생성한 newsNO 폴더 안에 파일을 넣음
         file.transferTo(new File(NEWS_FILE_PATH + "\\" + newsVO.getNewsNO(), fileName));

         // 넣은게 성공한거니, VO에 추가
         newsVO.setNewsImage(fileName);
      }

      // 기존의 update 쿼리 실행
      int ret = newsService.updateNews(newsVO);
      model.addAttribute("ret", ret);
      logger.debug("[ret] = " + ret);

      model.addAttribute("category", newsVO.getCategory());
      return "done/noticeUpdateDone";
   }

   @GetMapping("/news/event/update")
   public String newsEventUpdate(Model model, @RequestParam("newsNO") int newsNO) {
      logger.debug("[newsNO11] = " + newsNO);

      NewsVO newsVO = newsService.newsOne(newsNO);
      model.addAttribute("newsVO", newsVO);
      logger.debug("[newsVO11] = " + newsVO);

      return "eventUpdate";
   }

   @PostMapping("/news/event/update")
   public String newsEventUpdateDone(Model model, @ModelAttribute NewsVO newsVO,
         @RequestParam("uploadFile") MultipartFile file) throws IOException {
      logger.debug("[newsVO22] = " + newsVO);
      logger.debug("[이미지 이름]" + file.getOriginalFilename());
      if (!file.getOriginalFilename().isEmpty()) {
         logger.debug("null 아님!!");
         String fileName = file.getOriginalFilename();

         // 추가전 이미지 파일을 삭제
         // 기존에 이미지를 안넣었을 수도 있으니...
         if (!newsVO.getNewsImage().isEmpty()) {
            // C:\\bluecoding\\news\\(해당 newsNO)\\파일명.png
            File fileDel = new File(NEWS_FILE_PATH + "\\" + newsVO.getNewsNO() + "\\" + newsVO.getNewsImage());
            if (fileDel.exists()) {
               fileDel.delete();
            }
         }

         // newsNO(PK)로 폴더 설정(이미지를 새로 추가할수도 있으니까..)
         File folder = new File(NEWS_FILE_PATH + "\\" + newsVO.getNewsNO());

         if (!folder.exists()) {
            try {
               folder.mkdir();
               logger.debug("폴더가 생성됨!!");
            } catch (Exception e) {
               e.getStackTrace();
            }
         } else {
            logger.debug("[뉴스 수정] 폴더가 이미 존재합니다!!");
         }

         // 생성한 newsNO 폴더 안에 파일을 넣음
         file.transferTo(new File(NEWS_FILE_PATH + "\\" + newsVO.getNewsNO(), fileName));

         // 넣은게 성공한거니, VO에 추가
         newsVO.setNewsImage(fileName);
      }
      int ret = newsService.updateNews(newsVO);
      model.addAttribute("ret", ret);
      logger.debug("[ret] = " + ret);

      model.addAttribute("category", newsVO.getCategory());
      return "done/eventUpdateDone";
   }

	@RequestMapping(value = "/news/notice/newsReply/add", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody // --> ajax 사용할 때 사용
	public Map<String, Object> noticeReplyAdd(@ModelAttribute NewsReplyVO newsReplyVO, Model model) { // --> ajax에서 보낸 data
		logger.debug("[리뷰의 newsReplyVO] = " + newsReplyVO);
		
		int ret = newsService.addReply(newsReplyVO);
		logger.debug("[ret] = " + ret);
		
		model.addAttribute("ret", ret);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("newsReText", newsReplyVO.getNewsReText()); // 중복이면 true, 아니면 false라는 String반환
		map.put("ret", ret);
		return map;
	}
	
	@RequestMapping(value = "/news/event/newsReply/add", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody // --> ajax 사용할 때 사용
	public Map<String, Object> eventReplyAdd(@ModelAttribute NewsReplyVO newsReplyVO, Model model) { // --> ajax에서 보낸 data
		logger.debug("[리뷰의 newsReplyVO] = " + newsReplyVO);
		
		int ret = newsService.addReply(newsReplyVO);
		logger.debug("[ret] = " + ret);
		
		model.addAttribute("ret", ret);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("newsReText", newsReplyVO.getNewsReText()); // 중복이면 true, 아니면 false라는 String반환
		map.put("ret", ret);
		return map;
	}
	
	@RequestMapping(value = "/news/notice/newsReply/update", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody // --> ajax 사용할 때 사용
	public Map<String, Object> noticeReplyUpdate(@ModelAttribute NewsReplyVO newsReplyVO, Model model) { // --> ajax에서 보낸 data
		logger.debug("[댓글의 newsReplyVO] = " + newsReplyVO);
		
		int ret = newsService.updateReply(newsReplyVO);
		logger.debug("[ret] = " + ret);
		
		model.addAttribute("ret", ret);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("newsReText", newsReplyVO.getNewsReText()); // 중복이면 true, 아니면 false라는 String반환
		map.put("ret", ret);
		return map;
	}
	
	@RequestMapping(value = "/news/event/newsReply/update", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody // --> ajax 사용할 때 사용
	public Map<String, Object> eventReplyUpdate(@ModelAttribute NewsReplyVO newsReplyVO, Model model) { // --> ajax에서 보낸 data
		logger.debug("[댓글의 newsReplyVO] = " + newsReplyVO);
		
		int ret = newsService.updateReply(newsReplyVO);
		logger.debug("[ret] = " + ret);
		
		model.addAttribute("ret", ret);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("newsReText", newsReplyVO.getNewsReText()); // 중복이면 true, 아니면 false라는 String반환
		map.put("ret", ret);
		return map;
	}
	
	@RequestMapping(value = "/news/notice/newsReplyRe/add", method = RequestMethod.POST, produces = "application/json; charset=utf8")
	@ResponseBody // --> ajax 사용할 때 사용
	public Map<String, Object> noticeReplyReAdd(@ModelAttribute NewsReplyVO newsReplyVO, Model model) { // --> ajax에서 보낸 data
		logger.debug("[리뷰의 newsReplyVO] = " + newsReplyVO);
		
		int ret = newsService.addReply(newsReplyVO);
		logger.debug("[ret] = " + ret);
		
		model.addAttribute("ret", ret);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("newsReText", newsReplyVO.getNewsReText()); // 중복이면 true, 아니면 false라는 String반환
		map.put("ret", ret);
		return map;
	}
}