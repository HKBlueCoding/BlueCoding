package com.hk.qna.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.hk.qna.service.QnaService;
import com.hk.qna.vo.QnaVO;

@Controller
public class QnaController {

   private static final Logger logger = LoggerFactory.getLogger(QnaController.class);
   private static final String QNA_FILE_PATH = "C:\\bluecoding\\qna"; // QNA 파일은 이곳에
   @Autowired
   QnaService qnaService;

   // 상담원 페이지
   @GetMapping("/qna")
   public String qna(@RequestParam(value="section", required=false)int section, 
         @RequestParam(value="pageNum", required=false)int pageNum, Model model) {
   
      // section
      
      
      // QNA 목록 전체
      List<QnaVO> qnaList = qnaService.adminSelectAllQna();
      model.addAttribute("qnaList",qnaList);
            
      
      // 신고 접수(만약 넣을거면)
      return "qna";
   }

   // 일반유저 문의게시판
   @GetMapping("/qna/home")
   public String qnaList(@RequestParam("id") String id, Model model) {

      List<QnaVO> qnaList = qnaService.listQna(id);
      model.addAttribute("qnaList", qnaList);
      return "qnaHome";
   }

   // 일반유저 게시글 추가
   @GetMapping("/qna/add")
   public String qnaAdd() {
      
      return "qnaAdd";
   }

   // [실제로 DB에 게시글 추가]
   @PostMapping("/qna/add")
   public String qnaAddDone(Model model, @ModelAttribute QnaVO qnaVO, @RequestParam("uploadFile") MultipartFile file)
         throws Exception {

      logger.debug("[qnaVO] = " + qnaVO);
      logger.debug("[이미지 이름]" + file.getOriginalFilename());

      // 미리 qnaImage이름을 받음
      String fileName = file.getOriginalFilename();
      qnaVO.setQnaImage(fileName);

      // DB에 게시글 추가 후, select 하여 해당 게시글 조회후 PK를 받음
      int qnaNO = qnaService.addQna(qnaVO);

      if (!file.getOriginalFilename().isEmpty()) {
         logger.debug("null 아님!!");

         // qnaNO(PK)로 폴더 설정
         File folder = new File(QNA_FILE_PATH + "\\" + qnaNO);

         if (!folder.exists()) {
            try {
               folder.mkdir();
               logger.debug("폴더가 생성됨!!");
            } catch (Exception e) {
               e.getStackTrace();
            }
         } else {
            logger.debug("[QNA 글쓰기]폴더가 이미 존재합니다!!");
         }
         // c:\\bluecoding\\qna\\해당 qnaNO\\파일명.png
         file.transferTo(new File(QNA_FILE_PATH + "\\" + qnaNO, fileName));
      }

      model.addAttribute("ret", qnaNO);

      return "done/qnaAddDone";
   }

   // 일반유저 게시글 상세보기
   @GetMapping("/qna/view")
   public String qnaView(Model model, @RequestParam("qnaNO") int qnaNO) {
      logger.debug("[qnaNO] = " + qnaNO);
      QnaVO qnaVO = qnaService.viewQna(qnaNO);
      model.addAttribute("qna", qnaVO);
      return "qnaView";
   }

   // 일반유저 게시글 수정
   @PostMapping("/qna/update")
   public String qnaUpdate(Model model, @ModelAttribute QnaVO qnaVO, @RequestParam("uploadFile") MultipartFile file)
         throws Exception {

      logger.debug("Get Attribute [qnaVO] = " + qnaVO);

      // 새로운 파일이 추가 되었을때..
      if (!file.getOriginalFilename().isEmpty()) {
         String fileName = file.getOriginalFilename();

         // 추가전, 이미지 삭제(처음부터 이미지가 없을수도 있으니 if로 걸러냄
         if (!qnaVO.getQnaImage().isEmpty()) {
            File fileDel = new File(QNA_FILE_PATH + "\\" + qnaVO.getQnaNO() + "\\" + qnaVO.getQnaImage());
            if (fileDel.exists()) {
               fileDel.delete();
            }
         }

         File folder = new File(QNA_FILE_PATH + "\\" + qnaVO.getQnaNO());

         if (!folder.exists()) {
            try {
               folder.mkdir();
               logger.debug("폴더가 생성됨!!");
            } catch (Exception e) {
               e.getStackTrace();
            }
         } else {
            logger.debug("[QNA 수정] 폴더가 이미 존재합니다!!");
         }
         // 생성한 newsNO 폴더 안에 파일을 넣음
         file.transferTo(new File(QNA_FILE_PATH + "\\" + qnaVO.getQnaNO(), fileName));

         // 넣은게 성공한거니, VO에 추가
         qnaVO.setQnaImage(fileName);
      }

      int ret = qnaService.modQna(qnaVO);

      model.addAttribute("ret", ret);
      model.addAttribute("qnaNO", qnaVO.getQnaNO());

      return "/done/qnaUpdateDone";
   }

}