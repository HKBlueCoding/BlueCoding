<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8" />
      <meta http-equiv="x-ua-compatible" content="ie=edge" />
      <title>공지사항 수정</title>
      <meta name="description" content="" />
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <link rel="shortcut icon" type="image/x-icon"
         href="../../assets/images/favicon.svg" />
      <!-- Place favicon.ico in the root directory -->
      <!-- 1  -->
      <!-- Web Font -->
      <link
         href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
         rel="stylesheet">
      <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap"
         rel="stylesheet">
      <!-- ========================= CSS here ========================= -->
      <link rel="stylesheet" href="../../resources/assets/css/bootstrap.min.css" />
      <link rel="stylesheet" href="../../resources/assets/css/LineIcons.2.0.css" />
      <link rel="stylesheet" href="../../resources/assets/css/animate.css" />
      <link rel="stylesheet" href="../../resources/assets/css/tiny-slider.css" />
      <link rel="stylesheet" href="../../resources/assets/css/glightbox.min.css" />
      <link rel="stylesheet" href="../../resources/assets/css/main.css" />
      <!-- ============================== 글쓰기(startbootstrap-clean-blog-gh-pages) ============================== -->
      <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
      <!-- Font Awesome icons (free version)-->
      <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
      <!-- Google fonts-->
      <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css" />
      <!-- Core theme CSS (includes Bootstrap)-->
      <link href="../../resources/assets/css/styles.css" rel="stylesheet" />
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" />
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
      <c:choose>
         <c:when test="${empty newsVO }">
            <tr>
               <td>null입니다.</td>
            </tr>
         </c:when>
         <c:when test="${!empty newsVO }">
            <!-- =================== 글쓰기 폼 ===================== -->
            <!-- Main Content-->
            <form id="contactForm" data-sb-form-api-token="API_TOKEN" action="update" method="post" encType="multipart/form-data">
               <main class="mb-4">
                  <div class="container px-4 px-lg-5">
                     <div class="row gx-4 gx-lg-5 justify-content-center">
                        <div class="col-md-10 col-lg-8 col-xl-7" style="width: 80%">
                           <p id="title">공지사항 수정</p>
                           <hr class="my-4">
                           <!-- ================== 카테고리 ======================= -->
                           <div class="categorise search-form wow fadeInUp">
                              <div class="row">
                                 <div class="col-lg-3 col-md-3 col-12 p-0" style="width: 20%">
                                    <div class="search-input">
                                       <select name="category" id="category" title="카테고리를 선택하세요" required>
                                          <option value="" >카테고리</option>
                                          <option value="notice">공지사항</option>
                                          <option value="event">이벤트</option>
                                       </select>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <br>
                           <!-- ================== 카테고리 끝 ======================= -->
                           <div class="my-5">
                              <!-- * * * * * * * * * * * * * * *-->
                              <!-- * * SB Forms Contact Form * *-->
                              <!-- * * * * * * * * * * * * * * *-->
                              <!-- This form is pre-integrated with SB Forms.-->
                              <!-- To make this form functional, sign up at-->
                              <!-- https://startbootstrap.com/solution/contact-forms-->
                              <!-- to get an API token!-->
                              <div class="form-floating">
                                 <input name="newsTitle" class="form-control" id="name" type="text" value="${newsVO.newsTitle }" title="제목을 입력하세요" required/>
                                 <label for="name">제목</label>  
                                 <input type="hidden" value="${newsVO.newsNO }" name="newsNO">           
                              </div>
                              <br>
                              <div class="form-floating" id="formMag" style="width: 100%">
                                 <textarea name="newsText" class="form-control" id="message" style="height: 35rem" title="내용을 입력하세요" required>${newsVO.newsText }</textarea>
                                 <label for="message">내용</label>
                              </div>
                              <br>
                              <!-- 이미지 미리보기 -->
                              <div align="center">
                              	<!-- 1. 기존에 이미지 이름을 저장 -->
                 			  	<input type="hidden" name="newsImage" value="${newsVO.newsImage }" />
							  	<!-- 2. 기존에 이미지 표시 or id를 preview로 해서 이미지 파일이 등록이되면 src를 변경함 -->
							  	<img id="preview" src="../../download?uploadFile=${newsVO.newsImage }&inFolder=news&pk=${newsVO.newsNO}" width="400" height="200" class="avatar avatar-sm me-3 border-radius-lg" alt="user1" >
					          </div>
					          <!-- 이미지 미리보기 끝 -->   
                              <br>
                              이미지 선택: <input type="file" name="uploadFile" onchange="readURL(this)" />
                              <!-- ======================= 버튼 ========================== -->
                              <c:if test="${login.admin eq 'A'}">
                              <div class="button header-button">
                                 <input type="submit" class="btn" value="수정">
                              </div>
                              </c:if>
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
         </c:when>
      </c:choose>
      <!-- =================== 글쓰기 폼 끝===================== -->
      <!-- ==================== footer ====================== -->      
      <!-- footer -->
      <jsp:include page="/WEB-INF/views/include/footer.jsp"/>
      <!-- Bootstrap core JS-->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
      <!-- Core theme JS-->
      <script src="../../resources/assets/js/scripts.js"></script>
      <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
      <!-- * *                               SB Forms JS                               * *-->
      <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
      <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
      <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
      <!-- ========================= JS here ========================= -->
      <script src="../../resources/assets/js/bootstrap.min.js"></script>
      <script src="../../resources/assets/js/wow.min.js"></script>
      <script src="../../resources/assets/js/tiny-slider.js"></script>
      <script src="../../resources/assets/js/glightbox.min.js"></script>
      <script src="../../resources/assets/js/main.js"></script>
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
   </body>
</html>