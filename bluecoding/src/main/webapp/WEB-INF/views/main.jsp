<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8" />
      <meta http-equiv="x-ua-compatible" content="ie=edge" />
      <title>BlueNovel
      </title>
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
      <link rel="stylesheet" href="../../assets/css/bootstrap.min.css" />
      <link rel="stylesheet" href="../resources/assets/css/LineIcons.2.0.css" />
      <link rel="stylesheet" href="../resources/assets/css/animate.css" />
      <link rel="stylesheet" href="../resources/assets/css/tiny-slider.css" />
      <link rel="stylesheet" href="../resources/assets/css/glightbox.min.css" />
      <link rel="stylesheet" href="../resources/assets/css/main.css" />
      <link href="../resources/assets/css/styles.css" rel="stylesheet" />
      <link href="../../resources/bluecoding/css/header.css" rel="stylesheet" />
      <style type="text/css">
         .hero-area.overlay::before {
         all: unset;
         }
         .theme{
         margin-top: 40px;
         /* background: #fff3; */
         background:#eee;
         border-radius: 6px;
         padding: 20px;
         padding-right: 45px;
         }
         #mainLogo{
         color: #0c74db;
         }
         .txt_line { 
         overflow:hidden; 
         text-overflow:ellipsis;
         white-space:nowrap;  
         }
         @media all and (max-width: 768px){

         	.popBoard_div{
         		display: none;
         	}
         }
      </style>
      <script src="https://code.jquery.com/jquery-3.6.0.min.js" 
      		  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
              crossorigin="anonymous"></script>
   </head>
   <body>
      <jsp:include page="/WEB-INF/views/include/header.jsp"/>
      <section class="hero-area overlay">
         <div class="container">
            <div class="row">
               <div class="col-lg-10 offset-lg-1 col-md-12 col-12">
                  <div class="hero-text text-center">
                     <!-- Start Hero Text -->
                     <div class="section-heading">
                        <h2 class="wow fadeInUp" id="mainLogo" data-wow-delay=".3s" style="visibility: visible; animation-delay: 0.3s; animation-name: fadeInUp;">Blue Novel</h2>
                     </div>
                     <!-- End Search Form -->
                     <!-- Start Search Form -->
                     <div class="theme wow fadeInUp" data-wow-delay=".7s" style="visibility: visible; animation-delay: 0.7s; animation-name: fadeInUp;">
                        <div class="row">
                           <div class="col-lg-12">
                              <!-- 버튼 fade -->
                              <button type="button" onClick="filterTheme('판타지')" class="btn btn-outline-primary">판타지</button>
                              <button type="button" onClick="filterTheme('청소년')" class="btn btn-outline-primary">청소년</button>    								    								
                              <button type="button" onClick="filterTheme('고전')" class="btn btn-outline-secondary">고전</button>
                              <button type="button" onClick="filterTheme('공포/호러')" class="btn btn-outline-dark">공포/호러</button>
                              <button type="button" onClick="filterTheme('미스터리/스릴러')" class="btn btn-outline-dark">미스터리/스릴러</button>
                              <button type="button" onClick="filterTheme('로맨스')" class="btn btn-outline-danger">로맨스</button>
                              <button type="button" onClick="filterTheme('SF/과학')" class="btn btn-outline-info">SF/과학</button>  									
                              <button type="button" onClick="filterTheme('드라마/영화')" class="btn btn-outline-primary">드라마/영화</button>
                           </div>
                           <!-- End Search Form -->
                        </div>
                     </div>
                     <!-- 끝 -->   
                  </div>
                  <br>
				  <!-- display를 설정하자... -->
                  <!-- [Content 책] -->
                  <div id="demo2" class="carousel slide cat-inner" data-wow-delay=".10s" style="visibility: visible; animation-delay: 0.10s; animation-name: fadeInUp;">
                     <!-- 책 list -->
                     <div class="carousel-inner">
                      <c:forEach var="i" begin="0" end="${fn:length(menuList)}">
                      
                       <c:if test="${i eq 0}"> 
                       	<div class="carousel-item active"align="center">
                       	    <c:if test="${empty menuList[i].bookNO }">
                       	     <img src="../../resources/assets/images/mainPage/null.jpg" alt="책이 없음" width="221" height="300">
                       	    </c:if>
                       	    <c:if test="${empty menuList[i].bookImage && !empty menuList[i+two].bookNO}">
                       	     <a href="/view?bookNO=${menuList[i].bookNO }">
                       	      <img src="../../resources/assets/images/mainPage/board1.png" alt="기본 책사진" width="221" height="300">
                       	     </a>
                       	    </c:if>
                       	  
                       	    <c:if test="${!empty menuList[i].bookImage}">
                       	     <a href="/view?bookNO=${menuList[i].bookNO }" class="menuBook">
                              <img src="../../download?uploadFile=${menuList[i].bookImage }&inFolder=book&pk=${menuList[i].bookNO}" alt="${menuList[i].bookTitle }책의 커버사진" width="221" height="300">
                             </a>
                            </c:if>                        		
                        </div>
                       </c:if>
                       
                       <c:if test="${i ne 0 }"> 
                       	<div class="carousel-item"align="center" >
                       	    <c:if test="${empty menuList[i].bookNO }">
                       	     <img src="../../resources/assets/images/mainPage/null.jpg" alt="책이 없음" width="221" height="300">
                       	    </c:if>
                       	    <c:if test="${empty menuList[i].bookImage && !empty menuList[i].bookNO}">
                       	     <a href="/view?bookNO=${menuList[i].bookNO }">
                       	      <img src="../../resources/assets/images/mainPage/board1.png" alt="기본 책사진" width="221" height="300">
                       	     </a>
                       	    </c:if>
                       	  
                       	    <c:if test="${!empty menuList[i].bookImage}">
                       	     <a href="/view?bookNO=${menuList[i].bookNO }" class="menuBook">
                              <img src="../../download?uploadFile=${menuList[i].bookImage }&inFolder=book&pk=${menuList[i].bookNO}" alt="${menuList[i].bookTitle }책의 커버사진" width="221" height="300">
                             </a>
                            </c:if>                        	
                        </div>
                       </c:if>                       
                       
                      </c:forEach>
                        <button class="carousel-control-prev" type="button" data-bs-target="#demo2" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#demo2" data-bs-slide="next">
                        <span class="carousel-control-next-icon"></span>
                        </button>
                     </div>
                  </div>
                  <!-- 책 list -->  
                  <button class="carousel-control-prev" type="button" data-bs-target="#demo2" data-bs-slide="prev" style="cursor:pointer">
                  <span class="carousel-control-prev-icon"></span>
                  </button>
                  <button class="carousel-control-next" type="button" data-bs-target="#demo2" data-bs-slide="next" style="cursor:pointer">
                  <span class="carousel-control-next-icon"></span>
                  </button>
               </div>
               <hr>
               <!-- [인기 종류 2개] -->  
               <section class="how-works section" style="background-color: #fff;">
                  <div class="container">
                   <c:forEach var="bookPop" items="${popBList }" end="2" varStatus="popCnt">
                     <div class="row">
                        <div class="col-lg-8 col-md-8 col-12 popBoard_div">
                           <div class="single-work wow fadeInUp" data-wow-delay=".2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
                              <span class="serial">인기</span>
                              <br>
                              <a href="board/view?articleNO=${popBDList[popCnt.index].articleNO }">
                               <c:if test="${empty popBDList[popCnt.index].boardImage }">
                                <img src="resources/assets/images/mainPage/board1.png" alt="기본 이미지" width="175" height="150" >
                               </c:if>
                               <c:if test="${!empty popBDList[popCnt.index].boardImage }">
                                <img src="../../download?uploadFile=${popBDList[popCnt.index].boardImage }&inFolder=board&pk=${popBDList[popCnt.index].articleNO}" alt="${popBDList[popCnt.index].boardTitle }게시글 이미지" width="175" height="150" >
                               </c:if>		
                              </a>
                              <h3>게시글 제목</h3>
                              <br>
                              <p class="txt_line">${popBDList[popCnt.index].boardText }
                              </p>
                           </div>
                        </div>
                        
                        <div class="col-lg-4 col-md-4 col-12">
                           <div class="single-work wow fadeInUp" data-wow-delay=".4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;">
                              <span class="serial">${popCnt.count }위</span><br>
                             <a href="view?bookNO=${bookPop.bookNO }">
                              <c:if test="${empty bookPop.bookImage }">
                               <img src="../../resources/assets/images/mainPage/board1.png" alt="기본 이미지" width="180" height="220">
                              </c:if>
                              <c:if test="${!empty bookPop.bookImage }">
                               <img src="../../download?uploadFile=${bookPop.bookImage }&inFolder=book&pk=${bookPop.bookNO}" alt="${bookPop.bookTitle }의 책" width="180" height="220">
                              </c:if> 
                             </a>                                                         
                              <h3>${bookPop.bookTitle }</h3>
                           </div>
                           <!-- End Single Work -->
                        </div>
                     </div>
                     <br>
         			</c:forEach>
                  </div>
               </section>
            </div>
         </div>
      </section>
      <jsp:include page="/WEB-INF/views/include/footer.jsp"/>
      <!-- ========================= JS here ========================= -->
      <script src="../resources/assets/js/bootstrap.min.js"></script>
      <script src="../resources/assets/js/wow.min.js"></script>
      <script src="../resources/assets/js/tiny-slider.js"></script>
      <script src="../resources/assets/js/glightbox.min.js"></script>
      <script src="../resources/assets/js/main.js"></script>
      <script src="../../resources/bluecoding/header.js"></script>
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
      <script src="../../resources/bluecoding/menu.js"></script>
   </body>
</html>