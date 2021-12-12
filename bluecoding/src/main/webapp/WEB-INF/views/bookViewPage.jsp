<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8" />
      <meta http-equiv="x-ua-compatible" content="ie=edge" />
      <title>회차 글보기</title>
      <meta name="description" content="" />
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <link rel="shortcut icon" type="image/x-icon"
         href="../assets/images/favicon.svg" />
      <!-- Place favicon.ico in the root directory -->
      <!-- 1  -->
      <!-- Web Font -->
      <link
         href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
         rel="stylesheet">
      <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap"
         rel="stylesheet">
      <!-- ========================= CSS here ========================= -->
      <link rel="stylesheet" href="../resources/assets/css/bootstrap.min.css" />
      <link rel="stylesheet" href="../resources/assets/css/LineIcons.2.0.css" />
      <link rel="stylesheet" href="../resources/assets/css/animate.css" />
      <link rel="stylesheet" href="../resources/assets/css/tiny-slider.css" />
      <link rel="stylesheet" href="../resources/assets/css/glightbox.min.css" />
      <link rel="stylesheet" href="../resources/assets/css/main.css" />
      <!-- ============================== 글쓰기(startbootstrap-clean-blog-gh-pages) ============================== -->
      <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
      <!-- Font Awesome icons (free version)-->
      <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
      <!-- Google fonts-->
      <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css" />
      <!-- Core theme CSS (includes Bootstrap)-->
      <link href="../resources/assets/css/styles.css" rel="stylesheet" />
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
      <!-- ============================== 글쓰기(startbootstrap-clean-blog-gh-pages) ============================== -->
      <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
      <!-- Font Awesome icons (free version)-->
      <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
      <!-- Google fonts-->
      <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css" />
      <!-- Core theme CSS (includes Bootstrap)-->
      <link href="../resources/assets/css/styles.css" rel="stylesheet" />
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" />
            <!-- Material Icons -->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
            <!-- CSS Files -->
      <link id="pagestyle" href="../../resources/assets/css/material-dashboard.css?v=3.0.0" rel="stylesheet" />
      <!-- marerial CSS END -->  
            	  <!-- ====================== 페이징 ====================== -->
      <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
      <!-- ====================== 페이징 끝 ====================== -->
      <style>
         .search-form{
         /* all: unset; */
         }
      </style>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>

   </head>
   
   <body>
      <!-- header -->
      <jsp:include page="/WEB-INF/views/include/header.jsp"/>
      <br><br><br><br><br><br><br><br>
      <!-- =================== 글쓰기 폼 ===================== -->
      <!-- Main Content-->
      <main class="mb-4">
         <div class="container px-4 px-lg-5">
            <div class="row gx-4 gx-lg-5 justify-content-center">
               <div class="col-md-10 col-lg-8 col-xl-7">
                  <p id="title">회차 보기</p>
                  <hr class="my-4">
                  <p id="title2">&nbsp;&nbsp;제목</p>
                  <div id="qna">
                    <div class="button header-button">
                        <a href="../view/update" class="btn">수정</a>
                     </div>
                    <div class="button header-button">
						<a onClick="funok2()" class="btn" style="background-color: #30d8e0;">삭제</a>
                     </div>    
          			<div class="button header-button">
                        <a onClick="funbtn()" class="btn">별점주기</a>
                        </div>
                    <div class="button header-button">
                        <a onClick="funbtn()" class="btn">신고하기</a>
                    </div>

                  <br><br>
                  <div class="my-5">
                     <!-- * * * * * * * * * * * * * * *-->
                     <!-- * * SB Forms Contact Form * *-->
                     <!-- * * * * * * * * * * * * * * *-->
                     <!-- This form is pre-integrated with SB Forms.-->
                     <!-- To make this form functional, sign up at-->
                     <!-- https://startbootstrap.com/solution/contact-forms-->
                     <!-- to get an API token!-->
               		</div>
                     <form id="contactForm" data-sb-form-api-token="API_TOKEN">
                        <div class="form-floating">
                           <input class="form-control" id="name" type="text" placeholder="Enter your name..." data-sb-validations="required" />
                           <label for="name">1화 제목</label>                          
                           <div class="invalid-feedback" data-sb-feedback="name:required">제목을 입력하세요.</div>
                        </div>
                        <br>
                        <div class="form-floating" id="formMag">
                           <textarea class="form-control" id="message" placeholder="Enter your message here..." style="height: 35rem" data-sb-validations="required"></textarea>
                           <div class="invalid-feedback" data-sb-feedback="message:required">내용을 입력하세요.</div>
                           <br><br>
                           <div id="Writer">
                              &nbsp;작가의 말
                           </div>
                           <textarea class="form-control" placeholder="Enter your message here..." style="height: 15rem"></textarea>
                           <label for="message">본문</label>
                        </div>
                        <br />
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

                   		<div class="button header-button">
                           <a onClick="funbtn()" class="btn">이전 화</a>
                        </div>
						<div class="button header-button">
                           <a onClick="funbtn()" class="btn">다음 화</a>
                        </div>
                        
                        <!-- ======================= 버튼 끝 ========================== -->
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </main>
      <!-- =================== 글쓰기 폼 끝===================== -->
        <!-- ====================== 리뷰(댓글) ====================== -->     
       <div class="container-fluid py-4" style="height:75%; width:60%;">
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
                                          <p class="text-xs text-secondary mb-0" style="font-size: 15px;">닉네임 : 홍길동<br>재밌게 잘 봤습니다.</p>
                                          <p class="text-xs text-secondary mb-0">YYYY/MM/DD / hh:mm</p>
                                       </div>
                                    </div>
                                 </td>
                                 <!-- ======================= 버튼 ========================== -->
                                 <td>
                                    <div align="right"  style="width: 100%;">
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
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div class="d-flex flex-column justify-content-center">
                                          <p class="text-xs text-secondary mb-0" style="font-size: 15px;">닉네임 : 홍길동<br>재밌게 잘 봤습니다.</p>
                                          <p class="text-xs text-secondary mb-0">YYYY/MM/DD / hh:mm</p>
                                       </div>
                                    </div>
                                 </td>
                                 <!-- ======================= 버튼 ========================== -->
                                 <td>
                                    <div align="right"  style="width: 100%;">
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
							  <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1">
                                       <div class="d-flex flex-column justify-content-center">
                                          <p class="text-xs text-secondary mb-0" style="font-size: 15px;">닉네임 : 홍길동<br>재밌게 잘 봤습니다.</p>
                                          <p class="text-xs text-secondary mb-0">YYYY/MM/DD / hh:mm</p>
                                       </div>
                                    </div>
                                 </td>
                                 <!-- ======================= 버튼 ========================== -->
                                 <td>
                                    <div align="right"  style="width: 100%;">
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
	  <!-- ====================== 리뷰(댓글) 끝====================== -->        
      <!-- ==================== footer ====================== -->      
      <!-- footer -->
      <jsp:include page="/WEB-INF/views/include/footer.jsp"/>
      <!-- Bootstrap core JS-->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
      <!-- Core theme JS-->
      <script src="../resources/assets/js/scripts.js"></script>
      <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
      <!-- * *                               SB Forms JS                               * *-->
      <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
      <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
      <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
      <!-- ========================= JS here ========================= -->
      <script src="../resources/assets/js/bootstrap.min.js"></script>
      <script src="../resources/assets/js/wow.min.js"></script>
      <script src="../resources/assets/js/tiny-slider.js"></script>
      <script src="../resources/assets/js/glightbox.min.js"></script>
      <script src="../resources/assets/js/main.js"></script>
      <script type="text/javascript">
         //========= Category Slider 
         tns({
             container: '.category-slider',
             items: 3,
             slideBy: 'page',
             autoplay: false,
             mouseDrag: true,
             gutter: 0,
             nav: false,
             controls: true,
             controlsText: ['<i class="lni lni-chevron-left"></i>', '<i class="lni lni-chevron-right"></i>'],
             responsive: {
                 0: {
                     items: 1,
                 },
                 540: {
                     items: 2,
                 },
                 768: {
                     items: 4,
                 },
                 992: {
                     items: 5,
                 },
                 1170: {
                     items: 6,
                 }
             }
         });
      </script>
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