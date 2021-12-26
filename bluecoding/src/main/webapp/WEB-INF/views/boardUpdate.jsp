<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8" />
      <meta http-equiv="x-ua-compatible" content="ie=edge" />
      <title>커뮤니티글 수정</title>
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
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" />
      <style>
         @media all and (max-width: 1500px){
	         .board_text {
	         	width:100%;
	         }
	         
	         .board_image_button {
	         	width:100%;
	         }
	         
	         .board_button {
	        	margin-top: 1em;
	         	margin-left: 0;
	         }
	         
	         .board_image {
	         	width:100%;
	         }
	         
	         .board_image2 {
	         	width:100%;
	         	height:100%;
	         }
         }
         
         @media all and (max-width: 300px){
	         .board_button2 {
	         	margin-top: 1em;
	         	margin-left: 0;
	         }
         }
      </style>
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
      <form id="contactForm" data-sb-form-api-token="API_TOKEN" action="update" method="post" enctype="multipart/form-data">
         <main class="mb-4">
            <div class="container px-4 px-lg-5">
               <div class="row gx-4 gx-lg-5 justify-content-center">
                  <div class="col-md-10 col-lg-8 col-xl-7">
                     <p id="title">커뮤니티글 수정</p>
                     <hr class="my-4">
                     <div class="my-5">
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- * * SB Forms Contact Form * *-->
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- This form is pre-integrated with SB Forms.-->
                        <!-- To make this form functional, sign up at-->
                        <!-- https://startbootstrap.com/solution/contact-forms-->
                        <!-- to get an API token!-->
                        <div class="form-floating">
                           <input class="form-control board_text_title" id="boardTitle" name="boardTitle" type="text" value="${boardVO.boardTitle }" maxlength="50" required />
                           <label for="name">제목</label>
                           <input type="hidden" value="${boardVO.articleNO }" name="articleNO">  
                        </div>
                        <br>
                        <div class="form-floating" id="formMag">
                           <textarea class="form-control board_text" id="boardText" name="boardText" style="height: 35rem" maxlength="4800" required>${boardVO.boardText }</textarea>
                           <label for="message">내용</label>
                        </div>
                        <br />
                        <!-- 이미지 미리보기 -->
                        <div class="board_image" align="left">
                           <!-- 1. 기존에 이미지 이름을 저장 -->
                           <input type="hidden" name="boardImage" value="${boardVO.boardImage }" />
                           <!-- 2. 기존에 이미지 표시 or id를 preview로 해서 이미지 파일이 등록이되면 src를 변경함 -->
                           <img id="preview" class="board_image2" src="../../download?uploadFile=${boardVO.boardImage }&inFolder=board&pk=${boardVO.articleNO}" width="400" height="200" class="avatar avatar-sm me-3 border-radius-lg" alt="user1" >
                        </div>
                        <!-- 이미지 미리보기 끝 -->   
                        <br>
                        이미지 선택: <input type="file" class="board_image_button" name="uploadFile" onchange="readURL(this)" />
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
                        <div class="d-none" id="submitErrorMessage">
                           <div class="text-center text-danger mb-3">Error sending message!</div>
                        </div>
                        <!-- ======================= 버튼 ========================== -->
                        <!-- [로그인시] -->
                        <c:if test="${!empty login.id && login.id ne '' }">
                           <div class="button header-button board_button">
                              <input type="submit" class="btn" value="수정">
                           </div>
                        </c:if>
                        <!-- [비 로그인시]] -->
                        <c:if test="${empty login.id || login.id  eq '' }">
                           <div class="button header-button board_button">
                              <a data-bs-toggle="modal"  data-bs-target="#login" class="btn">수정</a>
                           </div>
                        </c:if>
                        <div class="button header-button board_button2">
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
           if (alert("정상적으로 수정되었습니다.") == true) {
            
           } else {
            alert("수정에 실패하였습니다.")
           	   return;
           }
         }
         
         function readURL(input){
             if(input.files && input.files[0]){
                var reader = new FileReader();
                reader.onload = function (e){
                   $('#preview').attr('src',e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
             }
          }         
      </script>
      <script>
         $(document).ready(function() {
          $('.board_text_title').change(function() {
          	if($.trim($('.board_text_title').val())==''){
                  alert("공백 없이 제목을 입력해주세요.");
                  $('.board_text_title').val('')
          	}
          }); //end on
         });
      </script>
      <script>
         $(document).ready(function() {
            $('.board_text').change(function() {
            	if($.trim($('.board_text').val())==''){
                    alert("공백 없이 내용을 입력해주세요.");
                    $('.board_text').val('')
            	}
            }); //end on
         });
      </script>
   </body>
</html>