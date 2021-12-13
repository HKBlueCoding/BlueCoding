<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>공지사항 상세 보기</title>
      <!-- Web Font -->
      <link
         href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
         rel="stylesheet">
      <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap"
         rel="stylesheet">
      <!-- ========================= ClassiGrids CSS HERE ========================= -->
      <link rel="stylesheet" href="../../resources/assets/css/bootstrap.min.css" />
      <link rel="stylesheet" href="../../resources/assets/css/LineIcons.2.0.css" />
      <link rel="stylesheet" href="../../resources/assets/css/animate.css" />
      <link rel="stylesheet" href="../../resources/assets/css/tiny-slider.css" />
      <link rel="stylesheet" href="../../resources/assets/css/glightbox.min.css" />
      <link rel="stylesheet" href="../../resources/assets/css/main.css" />
      <!-- SBAdmin2 CSS START -->
      <!-- Custom fonts for this template -->
      <link href="../../resources/sbadmin2/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
      <link
         href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
         rel="stylesheet">
      <!-- Custom styles for this template -->
      <link href="../../resources/sbadmin2/css/sb-admin-2.min.css" rel="stylesheet">
      <!-- Custom styles for this page -->
      <link href="../../resources/sbadmin2/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
      <!-- SBAdmin2 CSS END -->
      <!--     Fonts and icons     -->
      <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
      <!-- Nucleo Icons -->
      <link href="../../resources/assets/css/nucleo-icons.css" rel="stylesheet" />
      <link href="../../resources/assets/css/nucleo-svg.css" rel="stylesheet" />
      <!-- Font Awesome Icons -->
      <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
      <!-- Material Icons -->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
      <!-- CSS Files -->
      <link id="pagestyle" href="../../resources/assets/css/material-dashboard.css?v=3.0.0" rel="stylesheet" />
      <!-- marerial CSS END -->    	
      <!-- ====================== 페이징 ====================== -->
      <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
      <!-- ====================== 페이징 끝 ====================== -->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" />    
      <style>
         body{
         background-image: url(../../resources/assets/images/here/noticeBG.jpg);
         }
         #tbPadd{
         padding-left: 1.5rem;
         padding-right: 1.5rem;
         }
      </style>
	  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>        
   </head>
   <body>
      <jsp:include page="/WEB-INF/views/include/header.jsp" />
      <br><br><br><br><br><br><br>
      <div class="container-fluid py-4" style="height:auto; width:60%;">
         <div class="row">
            <div class="col-12">
               <!-- Main Content-->
               <main class="mb-4" style="width: 100%; padding: 1px;">
                  <div style="width: 100%; padding: 1px;">
                     <div style="width: 100%; padding: 1px;">
                        <div style="width: 100%; padding: 1px;">
                           <p id="title" style="font-size: 40px;">공지사항 상세 보기</p>
                           <hr class="my-4" style="width: 70%;">
                           <p id="title2" style="font-size: 30px;">&nbsp;&nbsp;${news.newsTitle }</p>
                        </div>
                     </div>
                  </div>
               </main>
               <div class="card my-4">
                  <div id="tbPadd" class="card-body px-0 pb-2">
                     <div class="table-responsive p-0">
                        <table class="table align-items-center mb-0">
                           <thead>
                              <tr>
                                 <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">작성자 : ${news.id }</th>
                                 <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">작성일 : ${news.newsDate }</th>
                                 <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">조회수 : ${news.nViewCnt }</th>
                                 <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">댓글 : 50건</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1" style="width: 200%;" >
                                       <div>
                                          <img src="../../resources/assets/images/mainPage/board1.png" width="400" height="200" class="avatar avatar-sm me-3 border-radius-lg" alt="user1"  style="float: left">${news.newsText }
                                       </div>
                                    </div>
                                 </td>
                              </tr>
                           </tbody>
                        </table>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- ======================= 버튼 ========================== -->
         <div align="right" style="width: 100%;">
            <div class="button header-button">
               <a href="../notice/update" class="btn">수정</a>
            </div>
            <div class="button header-button">
               <a onClick="funok()" class="btn">삭제</a>
            </div>
            <div class="button header-button">
               <a href="javascript:void(0)" class="btn">신고하기</a>
            </div>
         </div>
         <!-- ======================= 버튼 끝 ========================== -->
      </div>
      <div class="container-fluid py-4" style="height:auto; width:60%;">
         <hr class="my-4" style="width: 100%;">
         <div class="row">
            <div class="col-12">
               <div class="card my-4">
                  <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                     <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                        <h6 class="text-white text-capitalize ps-3">댓글</h6>
                     </div>
                  </div>
                  <div id="tbPadd" class="card-body px-0 pb-2">
                     <div class="table-responsive p-0">
                        <table class="table align-items-center mb-0">
                           <tbody>
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div class="d-flex flex-column justify-content-center">
                                          <p class="text-xs text-secondary mb-0" style="font-size: 15px;">작성자명 : 홍길동,&nbsp;&nbsp;&nbsp;&nbsp;YYYY-MM-DD / HH-MM</p>
                                          <p class="text-xs text-secondary mb-0">댓글 내용</p>
                                       </div>
                                    </div>
                                 </td>
                                 <!-- ======================= 버튼 ========================== -->
                                 <td>
                                    <div align="right"  style="width: 100%;">
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">답글 쓰기</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">수정</a>
                                       </div>
                                       <div class="button header-button">
                                          <a onClick="funok2()" class="btn" style="background-color: #30d8e0;">삭제</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">신고하기</a>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 끝 ========================== -->
                                 </td>
                              </tr>
                              <!-- ========================== 답글 ========================== -->
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div class="d-flex flex-column justify-content-center">
                                          <p class="text-xs text-secondary mb-0" style="font-size: 15px;">&nbsp;&nbsp;&nbsp;&nbsp; ⤷ 작성자명 : 홍길동,&nbsp;&nbsp;&nbsp;&nbsp;YYYY-MM-DD / HH-MM</p>
                                          <p class="text-xs text-secondary mb-0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;답글 내용</p>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 ========================== -->
                                 <td>
                                    <div align="right"  style="width: 100%;">
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">답글 쓰기</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">수정</a>
                                       </div>
                                       <div class="button header-button">
                                          <a onClick="funok2()" class="btn" style="background-color: #30d8e0;">삭제</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">신고하기</a>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 끝 ========================== -->
                                 </td>
                              </tr>
                              <!-- ========================== 답글 끝 ========================== -->
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div class="d-flex flex-column justify-content-center">
                                          <p class="text-xs text-secondary mb-0" style="font-size: 15px;">작성자명 : 홍길동,&nbsp;&nbsp;&nbsp;&nbsp;YYYY-MM-DD / HH-MM</p>
                                          <p class="text-xs text-secondary mb-0">댓글 내용</p>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 ========================== -->
                                 <td>
                                    <div align="right"  style="width: 100%;">
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">답글 쓰기</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">수정</a>
                                       </div>
                                       <div class="button header-button">
                                          <a onClick="funok2()" class="btn" style="background-color: #30d8e0;">삭제</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">신고하기</a>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 끝 ========================== -->
                                 </td>
                              </tr>
                              <!-- ========================== 답글 ========================== -->
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div class="d-flex flex-column justify-content-center">
                                          <p class="text-xs text-secondary mb-0" style="font-size: 15px;">&nbsp;&nbsp;&nbsp;&nbsp; ⤷ 작성자명 : 홍길동,&nbsp;&nbsp;&nbsp;&nbsp;YYYY-MM-DD / HH-MM</p>
                                          <p class="text-xs text-secondary mb-0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;답글 내용</p>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 ========================== -->
                                 <td>
                                    <div align="right"  style="width: 100%;">
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">답글 쓰기</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">수정</a>
                                       </div>
                                       <div class="button header-button">
                                          <a onClick="funok2()" class="btn" style="background-color: #30d8e0;">삭제</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">신고하기</a>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 끝 ========================== -->
                                 </td>
                              </tr>
                              <!-- ========================== 답글 끝 ========================== -->
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div class="d-flex flex-column justify-content-center">
                                          <p class="text-xs text-secondary mb-0" style="font-size: 15px;">작성자명 : 홍길동,&nbsp;&nbsp;&nbsp;&nbsp;YYYY-MM-DD / HH-MM</p>
                                          <p class="text-xs text-secondary mb-0">댓글 내용</p>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 ========================== -->
                                 <td>
                                    <div align="right"  style="width: 100%;">
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">답글 쓰기</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">수정</a>
                                       </div>
                                       <div class="button header-button">
                                          <a onClick="funok2()" class="btn" style="background-color: #30d8e0;">삭제</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">신고하기</a>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 끝 ========================== -->
                                 </td>
                              </tr>
                              <!-- ========================== 답글 ========================== -->
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div class="d-flex flex-column justify-content-center">
                                          <p class="text-xs text-secondary mb-0" style="font-size: 15px;">&nbsp;&nbsp;&nbsp;&nbsp; ⤷ 작성자명 : 홍길동,&nbsp;&nbsp;&nbsp;&nbsp;YYYY-MM-DD / HH-MM</p>
                                          <p class="text-xs text-secondary mb-0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;답글 내용</p>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 ========================== -->
                                 <td>
                                    <div align="right"  style="width: 100%;">
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">답글 쓰기</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">수정</a>
                                       </div>
                                       <div class="button header-button">
                                          <a onClick="funok2()" class="btn" style="background-color: #30d8e0;">삭제</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">신고하기</a>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 끝 ========================== -->
                                 </td>
                              </tr>
                              <!-- ========================== 답글 끝 ========================== -->
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div class="d-flex flex-column justify-content-center">
                                          <p class="text-xs text-secondary mb-0" style="font-size: 15px;">작성자명 : 홍길동,&nbsp;&nbsp;&nbsp;&nbsp;YYYY-MM-DD / HH-MM</p>
                                          <p class="text-xs text-secondary mb-0">댓글 내용</p>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 ========================== -->
                                 <td>
                                    <div align="right"  style="width: 100%;">
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">답글 쓰기</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">수정</a>
                                       </div>
                                       <div class="button header-button">
                                          <a onClick="funok2()" class="btn" style="background-color: #30d8e0;">삭제</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">신고하기</a>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 끝 ========================== -->
                                 </td>
                              </tr>
                              <!-- ========================== 답글 ========================== -->
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div class="d-flex flex-column justify-content-center">
                                          <p class="text-xs text-secondary mb-0" style="font-size: 15px;">&nbsp;&nbsp;&nbsp;&nbsp; ⤷ 작성자명 : 홍길동,&nbsp;&nbsp;&nbsp;&nbsp;YYYY-MM-DD / HH-MM</p>
                                          <p class="text-xs text-secondary mb-0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;답글 내용</p>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 ========================== -->
                                 <td>
                                    <div align="right"  style="width: 100%;">
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">답글 쓰기</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">수정</a>
                                       </div>
                                       <div class="button header-button">
                                          <a onClick="funok2()" class="btn" style="background-color: #30d8e0;">삭제</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">신고하기</a>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 끝 ========================== -->
                                 </td>
                              </tr>
                              <!-- ========================== 답글 끝 ========================== -->
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div class="d-flex flex-column justify-content-center">
                                          <p class="text-xs text-secondary mb-0" style="font-size: 15px;">작성자명 : 홍길동,&nbsp;&nbsp;&nbsp;&nbsp;YYYY-MM-DD / HH-MM</p>
                                          <p class="text-xs text-secondary mb-0">댓글 내용</p>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 ========================== -->
                                 <td>
                                    <div align="right"  style="width: 100%;">
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">답글 쓰기</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">수정</a>
                                       </div>
                                       <div class="button header-button">
                                          <a onClick="funok2()" class="btn" style="background-color: #30d8e0;">삭제</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">신고하기</a>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 끝 ========================== -->
                                 </td>
                              </tr>
                              <!-- ========================== 답글 ========================== -->
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div class="d-flex flex-column justify-content-center">
                                          <p class="text-xs text-secondary mb-0" style="font-size: 15px;">&nbsp;&nbsp;&nbsp;&nbsp; ⤷ 작성자명 : 홍길동,&nbsp;&nbsp;&nbsp;&nbsp;YYYY-MM-DD / HH-MM</p>
                                          <p class="text-xs text-secondary mb-0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;답글 내용</p>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 ========================== -->
                                 <td>
                                    <div align="right"  style="width: 100%;">
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">답글 쓰기</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">수정</a>
                                       </div>
                                       <div class="button header-button">
                                          <a onClick="funok2()" class="btn" style="background-color: #30d8e0;">삭제</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">신고하기</a>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 끝 ========================== -->
                                 </td>
                              </tr>
                              <!-- ========================== 답글 끝 ========================== -->
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div class="d-flex flex-column justify-content-center">
                                          <p class="text-xs text-secondary mb-0" style="font-size: 15px;">작성자명 : 홍길동,&nbsp;&nbsp;&nbsp;&nbsp;YYYY-MM-DD / HH-MM</p>
                                          <p class="text-xs text-secondary mb-0">댓글 내용</p>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 ========================== -->
                                 <td>
                                    <div align="right"  style="width: 100%;">
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">답글 쓰기</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">수정</a>
                                       </div>
                                       <div class="button header-button">
                                          <a onClick="funok2()" class="btn" style="background-color: #30d8e0;">삭제</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">신고하기</a>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 끝 ========================== -->
                                 </td>
                              </tr>
                              <!-- ========================== 답글 ========================== -->
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div class="d-flex flex-column justify-content-center">
                                          <p class="text-xs text-secondary mb-0" style="font-size: 15px;">&nbsp;&nbsp;&nbsp;&nbsp; ⤷ 작성자명 : 홍길동,&nbsp;&nbsp;&nbsp;&nbsp;YYYY-MM-DD / HH-MM</p>
                                          <p class="text-xs text-secondary mb-0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;답글 내용</p>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 ========================== -->
                                 <td>
                                    <div align="right"  style="width: 100%;">
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">답글 쓰기</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">수정</a>
                                       </div>
                                       <div class="button header-button">
                                          <a onClick="funok2()" class="btn" style="background-color: #30d8e0;">삭제</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">신고하기</a>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 끝 ========================== -->
                                 </td>
                              </tr>
                              <!-- ========================== 답글 끝 ========================== -->
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div class="d-flex flex-column justify-content-center">
                                          <p class="text-xs text-secondary mb-0" style="font-size: 15px;">작성자명 : 홍길동,&nbsp;&nbsp;&nbsp;&nbsp;YYYY-MM-DD / HH-MM</p>
                                          <p class="text-xs text-secondary mb-0">댓글 내용</p>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 ========================== -->
                                 <td>
                                    <div align="right"  style="width: 100%;">
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">답글 쓰기</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">수정</a>
                                       </div>
                                       <div class="button header-button">
                                          <a onClick="funok2()" class="btn" style="background-color: #30d8e0;">삭제</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">신고하기</a>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 끝 ========================== -->
                                 </td>
                              </tr>
                              <!-- ========================== 답글 ========================== -->
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div class="d-flex flex-column justify-content-center">
                                          <p class="text-xs text-secondary mb-0" style="font-size: 15px;">&nbsp;&nbsp;&nbsp;&nbsp; ⤷ 작성자명 : 홍길동,&nbsp;&nbsp;&nbsp;&nbsp;YYYY-MM-DD / HH-MM</p>
                                          <p class="text-xs text-secondary mb-0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;답글 내용</p>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 ========================== -->
                                 <td>
                                    <div align="right"  style="width: 100%;">
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">답글 쓰기</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">수정</a>
                                       </div>
                                       <div class="button header-button">
                                          <a onClick="funok2()" class="btn" style="background-color: #30d8e0;">삭제</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">신고하기</a>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 끝 ========================== -->
                                 </td>
                              </tr>
                              <!-- ========================== 답글 끝 ========================== -->
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div class="d-flex flex-column justify-content-center">
                                          <p class="text-xs text-secondary mb-0" style="font-size: 15px;">작성자명 : 홍길동,&nbsp;&nbsp;&nbsp;&nbsp;YYYY-MM-DD / HH-MM</p>
                                          <p class="text-xs text-secondary mb-0">댓글 내용</p>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 ========================== -->
                                 <td>
                                    <div align="right"  style="width: 100%;">
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">답글 쓰기</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">수정</a>
                                       </div>
                                       <div class="button header-button">
                                          <a onClick="funok2()" class="btn" style="background-color: #30d8e0;">삭제</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">신고하기</a>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 끝 ========================== -->
                                 </td>
                              </tr>
                              <!-- ========================== 답글 ========================== -->
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div class="d-flex flex-column justify-content-center">
                                          <p class="text-xs text-secondary mb-0" style="font-size: 15px;">&nbsp;&nbsp;&nbsp;&nbsp; ⤷ 작성자명 : 홍길동,&nbsp;&nbsp;&nbsp;&nbsp;YYYY-MM-DD / HH-MM</p>
                                          <p class="text-xs text-secondary mb-0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;답글 내용</p>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 ========================== -->
                                 <td>
                                    <div align="right"  style="width: 100%;">
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">답글 쓰기</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">수정</a>
                                       </div>
                                       <div class="button header-button">
                                          <a onClick="funok2()" class="btn" style="background-color: #30d8e0;">삭제</a>
                                       </div>
                                       <div class="button header-button">
                                          <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">신고하기</a>
                                       </div>
                                    </div>
                                    <!-- ======================= 버튼 끝 ========================== -->
                                 </td>
                              </tr>
                              <!-- ========================== 답글 끝 ========================== -->
                           </tbody>
                        </table>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <form id="contactForm" data-sb-form-api-token="API_TOKEN">
            <br>
            <div class="form-floating" id="formMag">
               <textarea class="form-control" id="message" placeholder="Enter your message here..." style="height: 15rem" data-sb-validations="required"></textarea>
               <div class="invalid-feedback" data-sb-feedback="message:required">내용을 입력하세요.</div>
               <br><br>
               <label for="message">댓글 쓰기</label>
            </div>
            <!-- Submit success message-->
            <!---->
            <!-- This is what your users will see when the form-->
            <!-- has successfully submitted-->
            <div class="d-none" id="submitSuccessMessage">
               <div class="text-center mb-3">
                  <div class="fw-bolder">Form submission successful!</div>
                  To activate this form, sign up at
                  <br />
                  <a href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
               </div>
            </div>
            <!-- Submit error message-->
            <!---->
            <!-- This is what your users will see when there is-->
            <!-- an error submitting the form-->
            <div class="d-none" id="submitErrorMessage">
               <div class="text-center text-danger mb-3">Error sending message!</div>
            </div>
            <!-- ======================= 버튼 ========================== -->
            <div align="center">
               <div class="button header-button">
                  <a onClick="funok3()"  id="submitButton"  class="btn">댓글 등록</a>
               </div>
               <div class="button header-button">
                  <a onClick="funbtn()" class="btn">돌아가기</a>
               </div>
            </div>
            <!-- ======================= 버튼 끝 ========================== -->
         </form>
      </div>
      <!-- ====================== 페이징 ====================== -->
      <div class="w3-center">
         <div class="w3-bar">
            <a href="#" class="w3-button">«</a>
            <a href="#" class="w3-button w3-blue">1</a>
            <a href="#" class="w3-button">2</a>
            <a href="#" class="w3-button">3</a>
            <a href="#" class="w3-button">4</a>
            <a href="#" class="w3-button">5</a>
            <a href="#" class="w3-button">»</a>
         </div>
      </div>
      <!-- ====================== 페이징 끝 ====================== -->
      <br>
      <br>
      <jsp:include page="/WEB-INF/views/include/footer.jsp" />
      <!-- ========================= ClassiGrids JS HERE ========================= -->
      <script src="../../resources/assets/js/bootstrap.min.js"></script>
      <script src="../../resources/assets/js/wow.min.js"></script>
      <script src="../../resources/assets/js/tiny-slider.js"></script>
      <script src="../../resources/assets/js/glightbox.min.js"></script>
      <script src="../../resources/assets/js/main.js"></script>
      <script type="text/javascript">
         //========= Category Slider 
         tns({
         	container : '.category-slider',
         	items : 3,
         	slideBy : 'page',
         	autoplay : false,
         	mouseDrag : true,
         	gutter : 0,
         	nav : false,
         	controls : true,
         	controlsText : [ '<i class="lni lni-chevron-left"></i>',
         			'<i class="lni lni-chevron-right"></i>' ],
         	responsive : {
         		0 : {
         			items : 1,
         		},
         		540 : {
         			items : 2,
         		},
         		768 : {
         			items : 4,
         		},
         		992 : {
         			items : 5,
         		},
         		1170 : {
         			items : 6,
         		}
         	}
         });
         </div>
         
         
         <div align="center"><a align="center">1</a>&nbsp;&nbsp;<a align="center">2</a>&nbsp;&nbsp;<a align="center">3</a>&nbsp;&nbsp;<a align="center">4</a>&nbsp;&nbsp;<a align="center">5</a></div>
         <br>
         <br>
         <jsp:include page="/WEB-INF/views/include/footer.jsp" />
         <!-- ========================= ClassiGrids JS HERE ========================= -->
         <script src="../../resources/assets/js/bootstrap.min.js">
      </script>
      <script src="../../resources/assets/js/wow.min.js"></script>
      <script src="../../resources/assets/js/tiny-slider.js"></script>
      <script src="../../resources/assets/js/glightbox.min.js"></script>
      <script src="../../resources/assets/js/main.js"></script>
      <script type="text/javascript">
         //========= Category Slider 
         tns({
         	container : '.category-slider',
         	items : 3,
         	slideBy : 'page',
         	autoplay : false,
         	mouseDrag : true,
         	gutter : 0,
         	nav : false,
         	controls : true,
         	controlsText : [ '<i class="lni lni-chevron-left"></i>',
         			'<i class="lni lni-chevron-right"></i>' ],
         	responsive : {
         		0 : {
         			items : 1,
         		},
         		540 : {
         			items : 2,
         		},
         		768 : {
         			items : 4,
         		},
         		992 : {
         			items : 5,
         		},
         		1170 : {
         			items : 6,
         		}
         	}
         });
      </script>
      <!-- SBAdmin2 JS START -->
      <!-- Bootstrap core JavaScript-->
      <script src="../../resources/sbadmin2/vendor/jquery/jquery.min.js"></script>
      <script src="../../resources/sbadmin2/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
      <!-- Core plugin JavaScript-->
      <script src="../../resources/sbadmin2/vendor/jquery-easing/jquery.easing.min.js"></script>
      <!-- Custom scripts for all pages-->
      <script src="../../resources/sbadmin2/js/sb-admin-2.min.js"></script>
      <!-- Page level plugins -->
      <script src="../../resources/sbadmin2/vendor/datatables/jquery.dataTables.min.js"></script>
      <script src="../../resources/sbadmin2/vendor/datatables/dataTables.bootstrap4.min.js"></script>
      <!-- Page level custom scripts -->
      <script src="../../resources/sbadmin2/js/demo/datatables-demo.js"></script>
      <!-- SBAdmin2 JS END -->
      <!--   Core JS Files   -->
      <script src="../../resources/assets/js/core/popper.min.js"></script>
      <script src="../../resources/assets/js/core/bootstrap.min.js"></script>
      <script src="../../resources/assets/js/plugins/perfect-scrollbar.min.js"></script>
      <script src="../../resources/assets/js/plugins/smooth-scrollbar.min.js"></script>
      <script>
         var win = navigator.platform.indexOf('Win') > -1;
         if (win && document.querySelector('#sidenav-scrollbar')) {
           var options = {
             damping: '0.5'
           }
           Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
         }
      </script>
      <!-- Github buttons -->
      <script async defer src="https://buttons.github.io/buttons.js"></script>
      <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
      <script src="../../resources/assets/js/material-dashboard.min.js?v=3.0.0"></script>
      <script>
         function funbtn() {
           if (confirm("이전 페이지로 돌아가시겠습니까??")) {
             javascript:history.back();
           } else {
           	return;
           }
         }
      </script>  
      <script>
         function funok() {
           if (confirm("글을 정말 삭제하시겠습니까??")) {
            alert("정상적으로 삭제되었습니다.")
           } else {
           	return;
           }
         }
      </script>
      <script>
         function funok2() {
           if (confirm("글을 정말 삭제하시겠습니까??")) {
            alert("정상적으로 삭제되었습니다.")
           } else {
           	return;
           }
         }
      </script>
      <script>
         function funok3() {
           if (alert("정상적으로 등록되었습니다.") == true) {
            
           } else {
            alert("등록에 실패하였습니다.")
           	   return;
           }
         }
      </script>
   </body>
</html>