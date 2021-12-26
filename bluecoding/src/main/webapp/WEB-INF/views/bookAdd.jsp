<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8" />
      <meta http-equiv="x-ua-compatible" content="ie=edge" />
      <title>작품 글쓰기</title>
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
      <!-- Google fonts-->
      <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css" />
      <!-- Core theme CSS (includes Bootstrap)-->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" />
      <link href="../resources/assets/css/styles.css" rel="stylesheet" />
      <style>
      	#message{
      		height: 10rem;
      	}
      	.line_td {
   			width: 400px;
   			overflow:hidden; 
  			text-overflow:ellipsis;
   			white-space:nowrap;  
		}
      	@media all and (max-width: 450px){
      		.all_main{
      			margin-top: 50px;
      		}
      	}
      	
      </style>
      <script src="https://code.jquery.com/jquery-3.6.0.min.js" 
              integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
              crossorigin="anonymous"></script>    
   </head>
   <body>
      <!-- header -->
      <jsp:include page="/WEB-INF/views/include/header.jsp"/>
      <br><br><br><br><br><br><br><br>
      <!-- =================== 글쓰기 폼 ===================== -->
      <!-- Main Content-->
      <form id="contactForm" method="post" action="add" data-sb-form-api-token="API_TOKEN" encType="multipart/form-data">
         <main class="mb-4 all_main">
            <div class="container px-4 px-lg-5">
               <div class="row gx-4 gx-lg-5 justify-content-center">
                  <div class="col-md-10 col-lg-8 col-xl-7" >
                     <p id="title">작품 글쓰기</p>
                     <hr class="my-4">
                     <!-- ================== 카테고리 ======================= -->
                     <div class="categorise">
                        <div class="row">
                              <div class="category_div">
                                 <label for="category"></label>
                                 <select name="theme" id="category" title="테마를 선택하세요" required>
                                    <option value="" selected disabled>테마 선택</option>
                                    <option value="판타지">판타지</option>
                                    <option value="청소년">청소년</option>
                                    <option value="고전">고전</option>
                                    <option value="공포/호러">공포/호러</option>
                                    <option value="미스터리/스릴러">미스터리/스릴러</option>
                                    <option value="로맨스">로맨스</option>
                                    <option value="SF/과학">SF/과학</option>
                                    <option value="드라마/영화">드라마/영화</option>
                                 </select>
                              </div>
                        </div>
                     </div>
                     <!-- ================== 카테고리 끝 ======================= -->
                     <div class="my-5">
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- * * SB Forms Contact Form * *-->
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- This form is pre-integrated with SB Forms.-->
                        <!-- To make this form functional, sign up at-->
                        <!-- https://startbootstrap.com/solution/contact-forms-->
                        <!-- to get an API token!-->
                        <div class="form-floating" >
                           <input type="hidden" name="id" value="${login.id }">
                           <input type="hidden" name="name" value="${login.name }">
                           <input class="form-control text_input" id="name" name="bookTitle" type="text" minlength="1" maxlength="50" title="책 제목를 입력하세요(1자부터 50자까지)" required/>
                           <label for="name">제목</label>
                           <div class="invalid-feedback" data-sb-feedback="name:required">제목을 입력하세요.</div>
                        </div>
                        <br>
                        <br>   
                        <div class="form-floating" id="formMag" style="width: 100%; ">
                           <textarea name="intro" class="form-control text_input" id="message" minlength="10" maxlength="240" title="줄거리를 입력하세요(10자부터 240자까지)" required></textarea>
                           <label for="message">줄거리</label>
                        </div>
                        <br />
                        <!-- Submit Button-->
                        <input id="uploadFile" name="uploadFile" type="file">
                        <!-- ======================= 버튼 ========================== -->
                        <!-- [로그인시] -->
                        <br>
                        <br>
                        <!-- [비 로그인시]] -->
                        
                           <div class="button" >
                             <c:if test="${!empty login.id && login.id ne '' }">
                              <input type="submit" class="btn" value="등록">
                             </c:if>
                             <c:if test="${empty login.id || login.id  eq '' }">
                              <a data-bs-toggle="modal"  data-bs-target="#login" class="btn">등록</a>
                           	 </c:if> 
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

      <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
      <!-- * *                               SB Forms JS                               * *-->
      <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
      <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->

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
         // 1
      </script>
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
    	    
        	 // 줄거리
    	     $('.text_input:eq(1)').change(function() {
    	    	
    	    	 if($.trim($('.text_input:eq(1)').val())==''){
    	             alert("줄거리를 입력해주세요.");
    	             $('.text_input:eq(1)').val('');
    	             return;
    	    	 }    	    	
    	     }); //end change 
    	 
    	 });// end ready
      
         function funbtn() {
           if (confirm("이전 페이지로 돌아가시겠습니까??")) {
             javascript:history.back();
           } else {
           	return;
           }
         }
         function funok() {
           if (alert("정상적으로 등록되었습니다.") == true) {
            
           } else {
            alert("등록에 실패하였습니다.")
           	   return;
           }
         }
      </script>
      <script src="../../resources/bluecoding/header.js"></script>      
   </body>
</html>