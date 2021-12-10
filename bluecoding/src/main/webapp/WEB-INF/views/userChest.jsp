<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>보관함</title>
      <!-- Web Font -->
      <link
         href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
         rel="stylesheet">
      <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap"
         rel="stylesheet">
      <!-- ========================= ClassiGrids CSS HERE ========================= -->
      <link rel="stylesheet" href="../resources/assets/css/bootstrap.min.css" />
      <link rel="stylesheet" href="../resources/assets/css/LineIcons.2.0.css" />
      <link rel="stylesheet" href="../resources/assets/css/animate.css" />
      <link rel="stylesheet" href="../resources/assets/css/tiny-slider.css" />
      <link rel="stylesheet" href="../resources/assets/css/glightbox.min.css" />
      <link rel="stylesheet" href="../resources/assets/css/main.css" />
      <!-- SBAdmin2 CSS START -->
      <!-- Custom fonts for this template -->
      <link href="../resources/sbadmin2/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
      <link
         href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
         rel="stylesheet">
      <!-- Custom styles for this template -->
      <link href="../resources/sbadmin2/css/sb-admin-2.min.css" rel="stylesheet">
      <!-- Custom styles for this page -->
      <link href="../resources/sbadmin2/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
      <!-- SBAdmin2 CSS END -->
      <!--     Fonts and icons     -->
      <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
      <!-- Nucleo Icons -->
      <link href="../resources/assets/css/nucleo-icons.css" rel="stylesheet" />
      <link href="../resources/assets/css/nucleo-svg.css" rel="stylesheet" />
      <!-- Font Awesome Icons -->
      <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
      <!-- Material Icons -->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
      <!-- CSS Files -->
      <link id="pagestyle" href="../resources/assets/css/material-dashboard.css?v=3.0.0" rel="stylesheet" />
      <!-- marerial CSS END -->
      <style>
         body{
         background-image: url(../resources/assets/images/here/noticeBG.jpg);
         }
         #tbPadd{
         padding-left: 1.5rem;
         padding-right: 1.5rem;
         }
      </style>
   </head>
   <body>
      <jsp:include page="/WEB-INF/views/include/header.jsp" />
      <br><br><br><br><br><br><br><br>
      <!-- ========================= 관심 작품 끝 ========================= -->
      <div id="aa">
      <div class="container-fluid py-4" style="height:auto; width:60%;">
         <!-- ======================= 버튼 ========================== -->
         <div class="button header-button">
            <a href="javascript:void(0)" class="btn" style="background-color: #30c8e0" id="show">관심 작품</a>
         </div>
         <div class="button header-button">
            <a href="javascript:void(0)" class="btn" style="background-color: #30c8e0" id="show2">구매 내역</a>
         </div>
         <div class="button header-button">
            <a href="javascript:void(0)" class="btn" style="background-color: #30c8e0" id="show3">결제 내역</a>
         </div>
         <div class="button header-button">
            <a href="javascript:void(0)" class="btn" style="background-color: #30c8e0" id="show4">수익 관리</a>
         </div>
         <!-- ======================= 버튼 끝 ========================== -->
         <br><br>
         <div class="row">
            <div class="col-12">
               <div class="card my-4">
                  <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                     <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                        <h6 class="text-white text-capitalize ps-3">관심 작품</h6>
                     </div>
                  </div>
                  <div id="tbPadd" class="card-body px-0 pb-2">
                     <div class="table-responsive p-0">
                        <table class="table align-items-center mb-0">
                           <thead>
                              <tr>
                                 <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">&nbsp;&nbsp;작성한 글</th>
                                 <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">작성자</th>
                                 <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">조회수</th>
                                 <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">작성일</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div>
                                          <img src="../resources/assets/images/mainPage/board1.png" width="100" height="70" class="avatar avatar-sm me-3 border-radius-lg" alt="user1">
                                       </div>
                                       <div class="d-flex flex-column justify-content-center">
                                          <a href="add" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
                                          <p class="text-xs text-secondary mb-0">장르</p>
                                          <p class="text-xs text-secondary mb-0">댓글(개수)</p>
                                       </div>
                                    </div>
                                 </td>
                                 <td class="align-middle">
                                    <span class="text-secondary text-xs font-weight-bold">이름</span>
                                 </td>
                                 <td class="align-middle text-center text-sm">
                                    <span class="badge badge-sm bg-gradient-success" style="background-image: linear-gradient(180deg,#419cef 10%,#106ec3 100%);">100</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">23/04/18</span>
                                 </td>
                              </tr>
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div>
                                          <img src="../resources/assets/images/mainPage/board1.png" width="100" height="70" class="avatar avatar-sm me-3 border-radius-lg" alt="user1">
                                       </div>
                                       <div class="d-flex flex-column justify-content-center">
                                          <a href="add" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
                                          <p class="text-xs text-secondary mb-0">장르</p>
                                          <p class="text-xs text-secondary mb-0">댓글(개수)</p>
                                       </div>
                                    </div>
                                 </td>
                                 <td class="align-middle">
                                    <span class="text-secondary text-xs font-weight-bold">이름</span>
                                 </td>
                                 <td class="align-middle text-center text-sm">
                                    <span class="badge badge-sm bg-gradient-success" style="background-image: linear-gradient(180deg,#419cef 10%,#106ec3 100%);">100</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">23/04/18</span>
                                 </td>
                              </tr>
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div>
                                          <img src="../resources/assets/images/mainPage/board1.png" width="100" height="70" class="avatar avatar-sm me-3 border-radius-lg" alt="user1">
                                       </div>
                                       <div class="d-flex flex-column justify-content-center">
                                          <a href="add" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
                                          <p class="text-xs text-secondary mb-0">장르</p>
                                          <p class="text-xs text-secondary mb-0">댓글(개수)</p>
                                       </div>
                                    </div>
                                 </td>
                                 <td class="align-middle">
                                    <span class="text-secondary text-xs font-weight-bold">이름</span>
                                 </td>
                                 <td class="align-middle text-center text-sm">
                                    <span class="badge badge-sm bg-gradient-success" style="background-image: linear-gradient(180deg,#419cef 10%,#106ec3 100%);">100</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">23/04/18</span>
                                 </td>
                              </tr>
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div>
                                          <img src="../resources/assets/images/mainPage/board1.png" width="100" height="70" class="avatar avatar-sm me-3 border-radius-lg" alt="user1">
                                       </div>
                                       <div class="d-flex flex-column justify-content-center">
                                          <a href="add" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
                                          <p class="text-xs text-secondary mb-0">장르</p>
                                          <p class="text-xs text-secondary mb-0">댓글(개수)</p>
                                       </div>
                                    </div>
                                 </td>
                                 <td class="align-middle">
                                    <span class="text-secondary text-xs font-weight-bold">이름</span>
                                 </td>
                                 <td class="align-middle text-center text-sm">
                                    <span class="badge badge-sm bg-gradient-success" style="background-image: linear-gradient(180deg,#419cef 10%,#106ec3 100%);">100</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">23/04/18</span>
                                 </td>
                              </tr>
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div>
                                          <img src="../resources/assets/images/mainPage/board1.png" width="100" height="70" class="avatar avatar-sm me-3 border-radius-lg" alt="user1">
                                       </div>
                                       <div class="d-flex flex-column justify-content-center">
                                          <a href="add" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
                                          <p class="text-xs text-secondary mb-0">장르</p>
                                          <p class="text-xs text-secondary mb-0">댓글(개수)</p>
                                       </div>
                                    </div>
                                 </td>
                                 <td class="align-middle">
                                    <span class="text-secondary text-xs font-weight-bold">이름</span>
                                 </td>
                                 <td class="align-middle text-center text-sm">
                                    <span class="badge badge-sm bg-gradient-success" style="background-image: linear-gradient(180deg,#419cef 10%,#106ec3 100%);">100</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">23/04/18</span>
                                 </td>
                              </tr>
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div>
                                          <img src="../resources/assets/images/mainPage/board1.png" width="100" height="70" class="avatar avatar-sm me-3 border-radius-lg" alt="user1">
                                       </div>
                                       <div class="d-flex flex-column justify-content-center">
                                          <a href="add" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
                                          <p class="text-xs text-secondary mb-0">장르</p>
                                          <p class="text-xs text-secondary mb-0">댓글(개수)</p>
                                       </div>
                                    </div>
                                 </td>
                                 <td class="align-middle">
                                    <span class="text-secondary text-xs font-weight-bold">이름</span>
                                 </td>
                                 <td class="align-middle text-center text-sm">
                                    <span class="badge badge-sm bg-gradient-success" style="background-image: linear-gradient(180deg,#419cef 10%,#106ec3 100%);">100</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">23/04/18</span>
                                 </td>
                              </tr>
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div>
                                          <img src="../resources/assets/images/mainPage/board1.png" width="100" height="70" class="avatar avatar-sm me-3 border-radius-lg" alt="user1">
                                       </div>
                                       <div class="d-flex flex-column justify-content-center">
                                          <a href="add" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
                                          <p class="text-xs text-secondary mb-0">장르</p>
                                          <p class="text-xs text-secondary mb-0">댓글(개수)</p>
                                       </div>
                                    </div>
                                 </td>
                                 <td class="align-middle">
                                    <span class="text-secondary text-xs font-weight-bold">이름</span>
                                 </td>
                                 <td class="align-middle text-center text-sm">
                                    <span class="badge badge-sm bg-gradient-success" style="background-image: linear-gradient(180deg,#419cef 10%,#106ec3 100%);">100</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">23/04/18</span>
                                 </td>
                              </tr>
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div>
                                          <img src="../resources/assets/images/mainPage/board1.png" width="100" height="70" class="avatar avatar-sm me-3 border-radius-lg" alt="user1">
                                       </div>
                                       <div class="d-flex flex-column justify-content-center">
                                          <a href="add" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
                                          <p class="text-xs text-secondary mb-0">장르</p>
                                          <p class="text-xs text-secondary mb-0">댓글(개수)</p>
                                       </div>
                                    </div>
                                 </td>
                                 <td class="align-middle">
                                    <span class="text-secondary text-xs font-weight-bold">이름</span>
                                 </td>
                                 <td class="align-middle text-center text-sm">
                                    <span class="badge badge-sm bg-gradient-success" style="background-image: linear-gradient(180deg,#419cef 10%,#106ec3 100%);">100</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">23/04/18</span>
                                 </td>
                              </tr>
                           </tbody>
                        </table>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- Start Search Form -->
         <div class="search-form wow fadeInUp" style="margin: 1px; padding: 1px;">
            <div class="row">
               <div class="col-lg-4 col-md-4 col-12 p-0"  style="width: 30%; margin-left: 550px;">
                  <div class="search-input">
                     <label for="keyword"><i class="lni lni-search-alt theme-color"></i></label>
                     <input type="text" name="keyword" id="keyword" placeholder="검색하세요.">
                  </div>
               </div>
               <div class="col-lg-2 col-md-2 col-12 p-0">
                  <div class="search-btn button">
                     <button class="btn"><i class="lni lni-search-alt"></i> 검색</button>
                  </div>
               </div>
            </div>
         </div>
         <!-- End Search Form -->
      </div>
      <div align="center"><a align="center">1</a>&nbsp;&nbsp;<a align="center">2</a>&nbsp;&nbsp;<a align="center">3</a>&nbsp;&nbsp;<a align="center">4</a>&nbsp;&nbsp;<a align="center">5</a></div>
      <br>
      <br>
      </div>
      <!-- ========================= 관심 작품 끝 ========================= -->
      <!-- ========================== 구매 내역 ========================== -->
      <div id="bb">
      <div class="container-fluid py-4" style="height:auto; width:60%;">
         <!-- ======================= 버튼 ========================== -->
         <div class="button header-button">
            <a href="javascript:void(0)" class="btn" style="background-color: #30c8e0">관심 작품</a>
         </div>
         <div class="button header-button">
            <a href="javascript:void(0)" class="btn" style="background-color: #30c8e0">구매 내역</a>
         </div>
         <div class="button header-button">
            <a href="javascript:void(0)" class="btn" style="background-color: #30c8e0">결제 내역</a>
         </div>
         <div class="button header-button">
            <a href="javascript:void(0)" class="btn" style="background-color: #30c8e0">수익 관리</a>
         </div>
         <div class="button header-button" style="margin-left: 200px;">
            <p style=" border-width:3px; border-style:inset; font-family: 돋움; font-weight: bold; color: #546699;">현재 코인 : 100개</p>
         </div>
         <div class="button header-button">
            <a href="javascript:void(0)" class="btn" style="background-color: #6e707e">충전하기</a>
         </div>
         <!-- ======================= 버튼 끝 ========================== -->
         <br><br>
         <div class="row">
            <div class="col-12">
               <div class="card my-4">
                  <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                     <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                        <h6 class="text-white text-capitalize ps-3">구매 내역</h6>
                     </div>
                  </div>
                  <div id="tbPadd" class="card-body px-0 pb-2">
                     <div class="table-responsive p-0">
                        <table class="table align-items-center mb-0">
                           <thead>
                              <tr>
                                 <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">&nbsp;&nbsp;작품 제목</th>
                                 <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">회차</th>
                                 <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">사용한 코인</th>
                                 <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">구매일</th>
                                 <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">환불</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div>
                                          <img src="../resources/assets/images/mainPage/board1.png" width="100" height="70" class="avatar avatar-sm me-3 border-radius-lg" alt="user1">
                                       </div>
                                       <div class="d-flex flex-column justify-content-center">
                                          <a href="add" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
                                          <p class="text-xs text-secondary mb-0">장르</p>
                                          <p class="text-xs text-secondary mb-0">작성자</p>
                                       </div>
                                    </div>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">1화</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">-200코인</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">23/04/18</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <div class="button header-button">
                                       <a href="javascript:void(0)" class="btn" style="background-color: #ab0dd7">환불하기</a>
                                    </div>
                                 </td>
                              </tr>
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div>
                                          <img src="../resources/assets/images/mainPage/board1.png" width="100" height="70" class="avatar avatar-sm me-3 border-radius-lg" alt="user1">
                                       </div>
                                       <div class="d-flex flex-column justify-content-center">
                                          <a href="add" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
                                          <p class="text-xs text-secondary mb-0">장르</p>
                                          <p class="text-xs text-secondary mb-0">작성자</p>
                                       </div>
                                    </div>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">1화</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">-200코인</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">23/04/18</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <div class="button header-button">
                                       <a href="javascript:void(0)" class="btn" style="background-color: #ab0dd7">환불하기</a>
                                    </div>
                                 </td>
                              </tr>
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div>
                                          <img src="../resources/assets/images/mainPage/board1.png" width="100" height="70" class="avatar avatar-sm me-3 border-radius-lg" alt="user1">
                                       </div>
                                       <div class="d-flex flex-column justify-content-center">
                                          <a href="add" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
                                          <p class="text-xs text-secondary mb-0">장르</p>
                                          <p class="text-xs text-secondary mb-0">작성자</p>
                                       </div>
                                    </div>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">1화</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">-200코인</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">23/04/18</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <div class="button header-button">
                                       <a href="javascript:void(0)" class="btn" style="background-color: #ab0dd7">환불하기</a>
                                    </div>
                                 </td>
                              </tr>
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div>
                                          <img src="../resources/assets/images/mainPage/board1.png" width="100" height="70" class="avatar avatar-sm me-3 border-radius-lg" alt="user1">
                                       </div>
                                       <div class="d-flex flex-column justify-content-center">
                                          <a href="add" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
                                          <p class="text-xs text-secondary mb-0">장르</p>
                                          <p class="text-xs text-secondary mb-0">작성자</p>
                                       </div>
                                    </div>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">1화</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">-200코인</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">23/04/18</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <div class="button header-button">
                                       <a href="javascript:void(0)" class="btn" style="background-color: #ab0dd7">환불하기</a>
                                    </div>
                                 </td>
                              </tr>
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div>
                                          <img src="../resources/assets/images/mainPage/board1.png" width="100" height="70" class="avatar avatar-sm me-3 border-radius-lg" alt="user1">
                                       </div>
                                       <div class="d-flex flex-column justify-content-center">
                                          <a href="add" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
                                          <p class="text-xs text-secondary mb-0">장르</p>
                                          <p class="text-xs text-secondary mb-0">작성자</p>
                                       </div>
                                    </div>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">1화</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">-200코인</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">23/04/18</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <div class="button header-button">
                                       <a href="javascript:void(0)" class="btn" style="background-color: #ab0dd7">환불하기</a>
                                    </div>
                                 </td>
                              </tr>
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div>
                                          <img src="../resources/assets/images/mainPage/board1.png" width="100" height="70" class="avatar avatar-sm me-3 border-radius-lg" alt="user1">
                                       </div>
                                       <div class="d-flex flex-column justify-content-center">
                                          <a href="add" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
                                          <p class="text-xs text-secondary mb-0">장르</p>
                                          <p class="text-xs text-secondary mb-0">작성자</p>
                                       </div>
                                    </div>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">1화</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">-200코인</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">23/04/18</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <div class="button header-button">
                                       <a href="javascript:void(0)" class="btn" style="background-color: #ab0dd7">환불하기</a>
                                    </div>
                                 </td>
                              </tr>
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div>
                                          <img src="../resources/assets/images/mainPage/board1.png" width="100" height="70" class="avatar avatar-sm me-3 border-radius-lg" alt="user1">
                                       </div>
                                       <div class="d-flex flex-column justify-content-center">
                                          <a href="add" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
                                          <p class="text-xs text-secondary mb-0">장르</p>
                                          <p class="text-xs text-secondary mb-0">작성자</p>
                                       </div>
                                    </div>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">1화</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">-200코인</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">23/04/18</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <div class="button header-button">
                                       <a href="javascript:void(0)" class="btn" style="background-color: #ab0dd7">환불하기</a>
                                    </div>
                                 </td>
                              </tr>
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div>
                                          <img src="../resources/assets/images/mainPage/board1.png" width="100" height="70" class="avatar avatar-sm me-3 border-radius-lg" alt="user1">
                                       </div>
                                       <div class="d-flex flex-column justify-content-center">
                                          <a href="add" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
                                          <p class="text-xs text-secondary mb-0">장르</p>
                                          <p class="text-xs text-secondary mb-0">작성자</p>
                                       </div>
                                    </div>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">1화</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">-200코인</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">23/04/18</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <div class="button header-button">
                                       <a href="javascript:void(0)" class="btn" style="background-color: #ab0dd7">환불하기</a>
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
         <!-- Start Search Form -->
         <div class="search-form wow fadeInUp" style="margin: 1px; padding: 1px;">
            <div class="row">
               <div class="col-lg-4 col-md-4 col-12 p-0"  style="width: 30%; margin-left: 550px;">
                  <div class="search-input">
                     <label for="keyword"><i class="lni lni-search-alt theme-color"></i></label>
                     <input type="text" name="keyword" id="keyword" placeholder="검색하세요.">
                  </div>
               </div>
               <div class="col-lg-2 col-md-2 col-12 p-0">
                  <div class="search-btn button">
                     <button class="btn"><i class="lni lni-search-alt"></i> 검색</button>
                  </div>
               </div>
            </div>
         </div>
         <!-- End Search Form -->
      </div>
      <div align="center"><a align="center">1</a>&nbsp;&nbsp;<a align="center">2</a>&nbsp;&nbsp;<a align="center">3</a>&nbsp;&nbsp;<a align="center">4</a>&nbsp;&nbsp;<a align="center">5</a></div>
      <br>
      <br>
      </div>
      <!-- ========================== 구매 내역 끝 ========================== -->
      <!-- ========================== 결제 내역 ========================== -->
      <div id="cc">
      <div class="container-fluid py-4" style="height:auto; width:60%;">
         <!-- ======================= 버튼 ========================== -->
         <div class="button header-button">
            <a href="javascript:void(0)" class="btn" style="background-color: #30c8e0">관심 작품</a>
         </div>
         <div class="button header-button">
            <a href="javascript:void(0)" class="btn" style="background-color: #30c8e0">구매 내역</a>
         </div>
         <div class="button header-button">
            <a href="javascript:void(0)" class="btn" style="background-color: #30c8e0">결제 내역</a>
         </div>
         <div class="button header-button">
            <a href="javascript:void(0)" class="btn" style="background-color: #30c8e0">수익 관리</a>
         </div>
         <div class="button header-button" style="margin-left: 200px;">
            <p style=" border-width:3px; border-style:inset; font-family: 돋움; font-weight: bold; color: #546699;">현재 코인 : 100개</p>
         </div>
         <div class="button header-button">
            <a href="javascript:void(0)" class="btn" style="background-color: #6e707e">충전하기</a>
         </div>
         <!-- ======================= 버튼 끝 ========================== -->
         <br><br>
         <div class="row">
            <div class="col-12">
               <div class="card my-4">
                  <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                     <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                        <h6 class="text-white text-capitalize ps-3">결제 내역</h6>
                     </div>
                  </div>
                  <div id="tbPadd" class="card-body px-0 pb-2">
                     <div class="table-responsive p-0">
                        <table class="table align-items-center mb-0">
                           <thead>
                              <tr>
                                 <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">&nbsp;&nbsp;결제 방식</th>
                                 <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">결제한 코인</th>
                                 <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">구매일</th>
                                 <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">환불</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <td class="align-middle text-center">
                                    <div>
                                       <div class="d-flex flex-column justify-content-center">
                                          <span class="text-secondary text-xs font-weight-bold">카드 or 이벤트</span>
                                       </div>
                                    </div>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">+200코인</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">21/12/10</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <div class="button header-button">
                                       <a href="javascript:void(0)" class="btn" style="background-color: #ab0dd7">환불하기</a>
                                    </div>
                                 </td>
                              </tr>
                              <tr>
                                 <td class="align-middle text-center">
                                    <div>
                                       <div class="d-flex flex-column justify-content-center">
                                          <span class="text-secondary text-xs font-weight-bold">카드 or 이벤트</span>
                                       </div>
                                    </div>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">+200코인</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">21/12/10</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <div class="button header-button">
                                       <a href="javascript:void(0)" class="btn" style="background-color: #ab0dd7">환불하기</a>
                                    </div>
                                 </td>
                              </tr>
                              <tr>
                                 <td class="align-middle text-center">
                                    <div>
                                       <div class="d-flex flex-column justify-content-center">
                                          <span class="text-secondary text-xs font-weight-bold">카드 or 이벤트</span>
                                       </div>
                                    </div>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">+200코인</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">21/12/10</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <div class="button header-button">
                                       <a href="javascript:void(0)" class="btn" style="background-color: #ab0dd7">환불하기</a>
                                    </div>
                                 </td>
                              </tr>
                              <tr>
                                 <td class="align-middle text-center">
                                    <div>
                                       <div class="d-flex flex-column justify-content-center">
                                          <span class="text-secondary text-xs font-weight-bold">카드 or 이벤트</span>
                                       </div>
                                    </div>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">+200코인</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">21/12/10</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <div class="button header-button">
                                       <a href="javascript:void(0)" class="btn" style="background-color: #ab0dd7">환불하기</a>
                                    </div>
                                 </td>
                              </tr>
                              <tr>
                                 <td class="align-middle text-center">
                                    <div>
                                       <div class="d-flex flex-column justify-content-center">
                                          <span class="text-secondary text-xs font-weight-bold">카드 or 이벤트</span>
                                       </div>
                                    </div>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">+200코인</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">21/12/10</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <div class="button header-button">
                                       <a href="javascript:void(0)" class="btn" style="background-color: #ab0dd7">환불하기</a>
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
      </div>
      <div align="center"><a align="center">1</a>&nbsp;&nbsp;<a align="center">2</a>&nbsp;&nbsp;<a align="center">3</a>&nbsp;&nbsp;<a align="center">4</a>&nbsp;&nbsp;<a align="center">5</a></div>
      <br>
      <br>
      </div>
      <!-- ========================== 결제 내역 끝 ========================== -->
      <!-- ========================== 수익 관리 ========================== -->
      <div id="dd">
      <div class="container-fluid py-4" style="height:auto; width:60%;">
         <!-- ======================= 버튼 ========================== -->
         <div class="button header-button">
            <a href="javascript:void(0)" class="btn" style="background-color: #30c8e0">관심 작품</a>
         </div>
         <div class="button header-button">
            <a href="javascript:void(0)" class="btn" style="background-color: #30c8e0">구매 내역</a>
         </div>
         <div class="button header-button">
            <a href="javascript:void(0)" class="btn" style="background-color: #30c8e0">결제 내역</a>
         </div>
         <div class="button header-button">
            <a href="javascript:void(0)" class="btn" style="background-color: #30c8e0">수익 관리</a>
         </div>
         <div class="button header-button" style="margin-left: 200px;">
            <p style=" border-width:3px; border-style:inset; font-family: 돋움; font-weight: bold; color: #546699;">현재 코인 : 100개</p>
         </div>
         <div class="button header-button">
            <a href="javascript:void(0)" class="btn" style="background-color: #6e707e">현금화 하기</a>
         </div>
         <!-- ======================= 버튼 끝 ========================== -->
         <br><br>
         <div class="row">
            <div class="col-12">
               <div class="card my-4">
                  <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                     <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                        <h6 class="text-white text-capitalize ps-3">수익 관리</h6>
                     </div>
                  </div>
                  <div id="tbPadd" class="card-body px-0 pb-2">
                     <div class="table-responsive p-0">
                        <table class="table align-items-center mb-0">
                           <thead>
                              <tr>
                                 <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">&nbsp;&nbsp;작품 제목</th>
                                 <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">회차</th>
                                 <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">받은 코인</th>
                                 <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">판매일</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div>
                                          <img src="../resources/assets/images/mainPage/board1.png" width="100" height="70" class="avatar avatar-sm me-3 border-radius-lg" alt="user1">
                                       </div>
                                       <div class="d-flex flex-column justify-content-center">
                                          <a href="add" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
                                          <p class="text-xs text-secondary mb-0">장르</p>
                                          <p class="text-xs text-secondary mb-0">작성자</p>
                                       </div>
                                    </div>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">1화</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">+200코인</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">21/12/10</span>
                                 </td>
                              </tr>
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div>
                                          <img src="../resources/assets/images/mainPage/board1.png" width="100" height="70" class="avatar avatar-sm me-3 border-radius-lg" alt="user1">
                                       </div>
                                       <div class="d-flex flex-column justify-content-center">
                                          <a href="add" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
                                          <p class="text-xs text-secondary mb-0">장르</p>
                                          <p class="text-xs text-secondary mb-0">작성자</p>
                                       </div>
                                    </div>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">1화</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">+200코인</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">21/12/10</span>
                                 </td>
                              </tr>
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div>
                                          <img src="../resources/assets/images/mainPage/board1.png" width="100" height="70" class="avatar avatar-sm me-3 border-radius-lg" alt="user1">
                                       </div>
                                       <div class="d-flex flex-column justify-content-center">
                                          <a href="add" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
                                          <p class="text-xs text-secondary mb-0">장르</p>
                                          <p class="text-xs text-secondary mb-0">작성자</p>
                                       </div>
                                    </div>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">1화</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">+200코인</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">21/12/10</span>
                                 </td>
                              </tr>
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div>
                                          <img src="../resources/assets/images/mainPage/board1.png" width="100" height="70" class="avatar avatar-sm me-3 border-radius-lg" alt="user1">
                                       </div>
                                       <div class="d-flex flex-column justify-content-center">
                                          <a href="add" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
                                          <p class="text-xs text-secondary mb-0">장르</p>
                                          <p class="text-xs text-secondary mb-0">작성자</p>
                                       </div>
                                    </div>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">1화</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">+200코인</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">21/12/10</span>
                                 </td>
                              </tr>
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div>
                                          <img src="../resources/assets/images/mainPage/board1.png" width="100" height="70" class="avatar avatar-sm me-3 border-radius-lg" alt="user1">
                                       </div>
                                       <div class="d-flex flex-column justify-content-center">
                                          <a href="add" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
                                          <p class="text-xs text-secondary mb-0">장르</p>
                                          <p class="text-xs text-secondary mb-0">작성자</p>
                                       </div>
                                    </div>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">1화</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">+200코인</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">21/12/10</span>
                                 </td>
                              </tr>
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div>
                                          <img src="../resources/assets/images/mainPage/board1.png" width="100" height="70" class="avatar avatar-sm me-3 border-radius-lg" alt="user1">
                                       </div>
                                       <div class="d-flex flex-column justify-content-center">
                                          <a href="add" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
                                          <p class="text-xs text-secondary mb-0">장르</p>
                                          <p class="text-xs text-secondary mb-0">작성자</p>
                                       </div>
                                    </div>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">1화</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">+200코인</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">21/12/10</span>
                                 </td>
                              </tr>
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div>
                                          <img src="../resources/assets/images/mainPage/board1.png" width="100" height="70" class="avatar avatar-sm me-3 border-radius-lg" alt="user1">
                                       </div>
                                       <div class="d-flex flex-column justify-content-center">
                                          <a href="add" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
                                          <p class="text-xs text-secondary mb-0">장르</p>
                                          <p class="text-xs text-secondary mb-0">작성자</p>
                                       </div>
                                    </div>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">1화</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">+200코인</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">21/12/10</span>
                                 </td>
                              </tr>
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div>
                                          <img src="../resources/assets/images/mainPage/board1.png" width="100" height="70" class="avatar avatar-sm me-3 border-radius-lg" alt="user1">
                                       </div>
                                       <div class="d-flex flex-column justify-content-center">
                                          <a href="add" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
                                          <p class="text-xs text-secondary mb-0">장르</p>
                                          <p class="text-xs text-secondary mb-0">작성자</p>
                                       </div>
                                    </div>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">1화</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">+200코인</span>
                                 </td>
                                 <td class="align-middle text-center">
                                    <span class="text-secondary text-xs font-weight-bold">21/12/10</span>
                                 </td>
                              </tr>
                           </tbody>
                        </table>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- Start Search Form -->
         <div class="search-form wow fadeInUp" style="margin: 1px; padding: 1px;">
            <div class="row">
               <div class="col-lg-4 col-md-4 col-12 p-0"  style="width: 30%; margin-left: 550px;">
                  <div class="search-input">
                     <label for="keyword"><i class="lni lni-search-alt theme-color"></i></label>
                     <input type="text" name="keyword" id="keyword" placeholder="검색하세요.">
                  </div>
               </div>
               <div class="col-lg-2 col-md-2 col-12 p-0">
                  <div class="search-btn button">
                     <button class="btn"><i class="lni lni-search-alt"></i> 검색</button>
                  </div>
               </div>
            </div>
         </div>
         <!-- End Search Form -->
      </div>
      <div align="center"><a align="center">1</a>&nbsp;&nbsp;<a align="center">2</a>&nbsp;&nbsp;<a align="center">3</a>&nbsp;&nbsp;<a align="center">4</a>&nbsp;&nbsp;<a align="center">5</a></div>
      <br>
      <br>
      </div>
      <!-- ========================== 수익 관리 끝 ========================== -->
      <jsp:include page="/WEB-INF/views/include/footer.jsp" />
      <!-- ========================= ClassiGrids JS HERE ========================= -->
      <script src="../resources/assets/js/bootstrap.min.js"></script>
      <script src="../resources/assets/js/wow.min.js"></script>
      <script src="../resources/assets/js/tiny-slider.js"></script>
      <script src="../resources/assets/js/glightbox.min.js"></script>
      <script src="../resources/assets/js/main.js"></script>
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
      <script src="../resources/sbadmin2/vendor/jquery/jquery.min.js"></script>
      <script src="../resources/sbadmin2/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
      <!-- Core plugin JavaScript-->
      <script src="../resources/sbadmin2/vendor/jquery-easing/jquery.easing.min.js"></script>
      <!-- Custom scripts for all pages-->
      <script src="../resources/sbadmin2/js/sb-admin-2.min.js"></script>
      <!-- Page level plugins -->
      <script src="../resources/sbadmin2/vendor/datatables/jquery.dataTables.min.js"></script>
      <script src="../resources/sbadmin2/vendor/datatables/dataTables.bootstrap4.min.js"></script>
      <!-- Page level custom scripts -->
      <script src="../resources/sbadmin2/js/demo/datatables-demo.js"></script>
      <!-- SBAdmin2 JS END -->
      <!--   Core JS Files   -->
      <script src="../resources/assets/js/core/popper.min.js"></script>
      <script src="../resources/assets/js/core/bootstrap.min.js"></script>
      <script src="../resources/assets/js/plugins/perfect-scrollbar.min.js"></script>
      <script src="../resources/assets/js/plugins/smooth-scrollbar.min.js"></script>
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
      <script src="../resources/assets/js/material-dashboard.min.js?v=3.0.0"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <script>
         $(document).ready(function(){
            
           // #aa -> 관심 작품
           // #bb -> 구매 내역
           // #cc -> 결제 내역
           // #dd -> 수익 관리
             
           // 구매 내역을 닫음
           $("#bb").hide();
         
           // 결제 내역을 닫음
           $("#cc").hide();
         
           // 수익 관리를 닫음
           $("#dd").hide();
         
            
           // 관심 작품 열기
           $("#show").click(function(){
              $("#aa").show();
             $("#bb").hide();
             $("#cc").hide();
             $("#dd").hide();
           });
           
           // 구매 내역 열기
           $("#show2").click(function(){
              $("#bb").show();
             $("#aa").hide();
             $("#cc").hide();
             $("#dd").hide();    
           });
           
           // 결제 내역 열기
           $("#show3").click(function(){
              $("#cc").show();
             $("#aa").hide();
             $("#bb").hide();
             $("#dd").hide();
           });
           
           // 수익 관리 열기
           $("#show4").click(function(){
              $("#dd").show();
             $("#aa").hide();
             $("#bb").hide();
             $("#cc").hide();
           });  
         });
      </script>      
   </body>
</html>