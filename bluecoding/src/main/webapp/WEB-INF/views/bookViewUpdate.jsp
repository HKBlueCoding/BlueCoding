<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8" />
      <meta http-equiv="x-ua-compatible" content="ie=edge" />
      <title>회차 글 수정하기</title>
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
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
      <script src="https://code.jquery.com/jquery-3.6.0.min.js" 
              integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
              crossorigin="anonymous"></script>
   </head>
   <body>
      <!-- header -->
      <jsp:include page="/WEB-INF/views/include/header.jsp"/>
      <br><br><br><br><br><br><br><br><br>
      <!-- =================== 글쓰기 폼 ===================== -->
      <!-- Main Content-->
      <form id="contactForm" data-sb-form-api-token="API_TOKEN" action="update" method="post">
         <main class="mb-4">
            <div class="container px-4 px-lg-5">
               <div class="row gx-4 gx-lg-5 justify-content-center">
                  <div class="col-md-10 col-lg-8 col-xl-7" style="width: 80%">
                     <p id="title">회차 수정하기</p>
                     <hr class="my-4">
					 <br>
                     <p id="title2">&nbsp;&nbsp;${pageVO.series }화, ${pageVO.pageTitle }</p>
                     <br><br>
                     <div class="my-5">
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- * * SB Forms Contact Form * *-->
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- This form is pre-integrated with SB Forms.-->
                        <!-- To make this form functional, sign up at-->
                        <!-- https://startbootstrap.com/solution/contact-forms-->
                        <!-- to get an API token!-->
                        <div class="form-floating">
                           <input class="form-control text_input" name="pageTitle" id="name" type="text" value="${pageVO.pageTitle }" data-sb-validations="required" />
                           <label for="name">제목</label>
                           <input type="hidden" value="${pageVO.pageNO }" name="pageNO">
                           <div class="invalid-feedback" data-sb-feedback="name:required">제목을 입력하세요.</div>
                        </div>
                        <br>
                        <div class="form-floating" id="formMag" style="width: 100%">
                           <textarea class="form-control text_input" name="pageText" id="message" style="height: 35rem" data-sb-validations="required">${pageVO.pageText }</textarea>
                           <label for="name">본문</label>
                           <div class="invalid-feedback" data-sb-feedback="message:required">내용을 입력하세요.</div>
                           <br><br>
                           <div id="Writer">
                              &nbsp;작가의 말
                           </div>
                           <textarea class="form-control text_input" name="comment" style="height: 15rem">${pageVO.comment }</textarea>
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
                           <p>유료화 여부:<select name="charge" id="charge">
                            			 	<option value="">무료</option>
                                         	<option value="Y">유료화</option>
                           				  </select>
                           </p>
                        </div>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                           <div class="button header-button">
                              <input type="submit" value="수정하기" class="btn">
                              <a onClick="funok2()" class="btn">삭제</a>
                           </div>
                        <div class="button header-button">
                           <a onClick="funbtn()" class="btn">돌아가기</a>
                        </div>
                        <!-- ======================= 버튼 끝 ========================== -->
                     </div>
                  </div>
               </div>
            </div>
         </main>
      </form>
      <!-- =================== 글쓰기 폼 끝===================== -->
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
      <script src="../../resources/bluecoding/header.js"></script>
      <script> 	
         $(document).ready(function() {
        	
        	// 제목
  	        $('.text_input:eq(0)').change(function() {	
  	    	    if($.trim($('.text_input:eq(0)').val())==''){
  	                alert("제목을 입력해주세요.");
  	                $('.text_input:eq(0)').val('');
  	                return;
  	    	    }     	
  	        }); //end change
  	        
  	   		// 내용
  	        $('.text_input:eq(1)').change(function() {       	
  	    	    if($.trim($('.text_input:eq(1)').val())==''){
  	                alert("내용을 입력해주세요.");
  	                $('.text_input:eq(1)').val('');
  	                return;
  	    	    }       	
  	        }); //end change  

  	   		// 작가의 말
  	        $('.text_input:eq(2)').change(function() {       	  	        	
  	    	    if($.trim($('.text_input:eq(2)').val())==''){
  	                alert("작가의 말을 입력해주세요.");
  	                $('.text_input:eq(2)').val('');
  	                return;
  	    	    }  	        	
  	        }); //end change
  	        
  	     }); // end ready
  	     
         function funbtn() {
           if (confirm("이전 페이지로 돌아가시겠습니까??")) {
             javascript:history.back();
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
   </body>
</html>