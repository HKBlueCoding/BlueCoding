<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8" />
      <meta http-equiv="x-ua-compatible" content="ie=edge" />
      <title>ClassiGrids - Classified Ads and Listing Website
         Template.
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
      <link rel="stylesheet" href="../resources/assets/css/bootstrap.min.css" />
      <link rel="stylesheet" href="../resources/assets/css/LineIcons.2.0.css" />
      <link rel="stylesheet" href="../resources/assets/css/animate.css" />
      <link rel="stylesheet" href="../resources/assets/css/tiny-slider.css" />
      <link rel="stylesheet" href="../resources/assets/css/glightbox.min.css" />
      <link rel="stylesheet" href="../resources/assets/css/main.css" />
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
      </style>
   </head>
<body>
      <jsp:include page="/WEB-INF/views/include/header.jsp"/>
      <section class="hero-area overlay">
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
                           <button type="button" class="btn btn-outline-primary">판타지</button>
                           <button type="button" class="btn btn-outline-primary">청소년</button>    								    								
                           <button type="button" class="btn btn-outline-secondary">고전</button>
                           <button type="button" class="btn btn-outline-dark">공포/호러</button>
                           <button type="button" class="btn btn-outline-dark">미스터리/스릴러</button>
                           <button type="button" class="btn btn-outline-danger">로맨스</button>
                           <button type="button" class="btn btn-outline-info">SF/과학</button>  									
                           <button type="button" class="btn btn-outline-primary">드라마/영화</button>
                        </div>
                        <!-- End Search Form -->
                     </div>
                  </div>
                  <!-- 끝 -->   
               </div>
               <br>
               <!-- [Content 책] -->
               <div id="demo2" class="carousel slide" data-wow-delay=".10s" style="visibility: visible; animation-delay: 0.10s; animation-name: fadeInUp;">
                  <!-- 책 list -->
                  <div class="carousel-inner">
                     <div class="carousel-item active"align="center">
                        <img src="resources/assets/images/mainPage/book1.jfif" alt="Los Angeles" width="221" height="300">
                        <img src="resources/assets/images/mainPage/book2.jfif" alt="Los Angeles" width="221" height="300">
                        <img src="resources/assets/images/mainPage/book3.jfif" alt="Los Angeles" width="221" height="300">
                     </div>
                     <div class="carousel-item"align="center">
                        <img src="resources/assets/images/mainPage/book4.jfif" alt="Los Angeles" width="221" height="300">
                        <img src="resources/assets/images/mainPage/book5.png" alt="Los Angeles" width="221" height="300">
                        <img src="resources/assets/images/mainPage/book6.jpg" alt="Los Angeles" width="221" height="300">
                     </div>
                     <div class="carousel-item" align="center">
                        <img src="resources/assets/images/mainPage/book4.jfif" alt="Los Angeles" width="221" height="300">
                        <img src="resources/assets/images/mainPage/book2.jfif" alt="Los Angeles" width="221" height="300">
                        <img src="resources/assets/images/mainPage/book7.jpg" alt="Los Angeles" width="221" height="300">
                     </div>
                     <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
    					<span class="carousel-control-prev-icon"></span>
  					 </button>
  					 <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
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
            <!-- [Content 책] -->  
            <section class="how-works section" style="background-color: #fff;">
               <div class="container">
                  <div class="row">
                     <div class="col-lg-8 col-md-8 col-12">
                        <!-- Start Single Work -->
                        <div class="single-work wow fadeInUp" data-wow-delay=".2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
                           <span class="serial">인기</span>
                           <br>                       		
                           <img src="resources/assets/images/mainPage/board1.png" alt="Los Angeles" width="175" height="150" >
                           <h3>게시글 제목</h3>
                           <br>
                           <p class="txt_line">느리고 흐물흐물하지만 덕분에 절대로 부러지지 않는, 무심한 듯 씩씩하게 살아온 김필영 씨의 삶과 결혼 이야기.
                              백 명의 사람에겐 백 가지의 사정이 있듯, 김필영 씨에게도 자신만의 사연이 있다. 휴대폰 가게와 성형외과와 아파트 분양 사무실에서 일했을 때도, 경찰 공무원 수험생으로 3년을 보내고 낙방했을 때도, 만난 지 두 달이 안 된 남자와 결혼하고 두 아이를 낳은 후에도, 필영의 삶은 오롯이 그 자신의 이야기만으로 채워졌다.
                              에세이가 범람하는 이 시대에도 그의 이야기는 선명한 개성을 갖고 있다. 대부분의 독자가 만나 보지 못했을 풍경이 담겨 있기 때문이다. 이 책에는 많은 독자가 ‘닮고 싶은’ 삶을 사는 롤 모델이 등장하지 않는다. 똑똑하고 당찬 사람도 없고, 상처 입은 자기 자신을 오래도록 위로하는 섬세한 영혼도 없다. 대신에 실패로 물든 시간 속을 무심히 거닐던 사람이 마주했던 독특한 광경들이 독립영화의 한 장면처럼 펼쳐진다.
                           </p>
                        </div>
                        <!-- End Single Work -->
                     </div>
                     <div class="col-lg-4 col-md-4 col-12">
                        <!-- Start Single Work -->
                        <div class="single-work wow fadeInUp" data-wow-delay=".4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;">
                           <span class="serial">1위</span>
                           <img src="resources/assets/images/mainPage/book7.jpg" alt="Los Angeles" width="180" height="195">
                           <h3>언스크립티드</h3>
                        </div>
                        <!-- End Single Work -->
                     </div>
                  </div>
                  <!-- 2 순위 -->
                  <br>
                  <div class="row">
                     <div class="col-lg-8 col-md-8 col-12">
                        <!-- Start Single Work -->
                        <div class="single-work wow fadeInUp" data-wow-delay=".2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
                           <span class="serial">인기</span>
                           <br>                       		
                           <img src="resources/assets/images/mainPage/board1.png" alt="Los Angeles" width="175" height="150" >
                           <h3>게시글 제목</h3>
                           <br>
                           <p class="txt_line">느리고 흐물흐물하지만 덕분에 절대로 부러지지 않는, 무심한 듯 씩씩하게 살아온 김필영 씨의 삶과 결혼 이야기.
                              백 명의 사람에겐 백 가지의 사정이 있듯, 김필영 씨에게도 자신만의 사연이 있다. 휴대폰 가게와 성형외과와 아파트 분양 사무실에서 일했을 때도, 경찰 공무원 수험생으로 3년을 보내고 낙방했을 때도, 만난 지 두 달이 안 된 남자와 결혼하고 두 아이를 낳은 후에도, 필영의 삶은 오롯이 그 자신의 이야기만으로 채워졌다.
                              에세이가 범람하는 이 시대에도 그의 이야기는 선명한 개성을 갖고 있다. 대부분의 독자가 만나 보지 못했을 풍경이 담겨 있기 때문이다. 이 책에는 많은 독자가 ‘닮고 싶은’ 삶을 사는 롤 모델이 등장하지 않는다. 똑똑하고 당찬 사람도 없고, 상처 입은 자기 자신을 오래도록 위로하는 섬세한 영혼도 없다. 대신에 실패로 물든 시간 속을 무심히 거닐던 사람이 마주했던 독특한 광경들이 독립영화의 한 장면처럼 펼쳐진다.
                           </p>
                        </div>
                        <!-- End Single Work -->
                     </div>
                     <div class="col-lg-4 col-md-4 col-12">
                        <!-- Start Single Work -->
                        <div class="single-work wow fadeInUp" data-wow-delay=".4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;">
                           <span class="serial">2위</span>
                           <img src="resources/assets/images/mainPage/book5.png" alt="Los Angeles" width="180" height="195">
                           <h3>비밀의 화원</h3>
                        </div>
                        <!-- End Single Work -->
                     </div>
                  </div>
                  
                  <!-- 3순위 -->
                  <br>
                  <div class="row">
                     <div class="col-lg-8 col-md-8 col-12">
                        <!-- Start Single Work -->
                        <div class="single-work wow fadeInUp" data-wow-delay=".2s" style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
                           <span class="serial">인기</span>
                           <br>                       		
                           <img src="resources/assets/images/mainPage/board1.png" alt="Los Angeles" width="175" height="150" >
                           <h3>게시글 제목</h3>
                           <br>
                           <p class="txt_line">느리고 흐물흐물하지만 덕분에 절대로 부러지지 않는, 무심한 듯 씩씩하게 살아온 김필영 씨의 삶과 결혼 이야기.
                              백 명의 사람에겐 백 가지의 사정이 있듯, 김필영 씨에게도 자신만의 사연이 있다. 휴대폰 가게와 성형외과와 아파트 분양 사무실에서 일했을 때도, 경찰 공무원 수험생으로 3년을 보내고 낙방했을 때도, 만난 지 두 달이 안 된 남자와 결혼하고 두 아이를 낳은 후에도, 필영의 삶은 오롯이 그 자신의 이야기만으로 채워졌다.
                              에세이가 범람하는 이 시대에도 그의 이야기는 선명한 개성을 갖고 있다. 대부분의 독자가 만나 보지 못했을 풍경이 담겨 있기 때문이다. 이 책에는 많은 독자가 ‘닮고 싶은’ 삶을 사는 롤 모델이 등장하지 않는다. 똑똑하고 당찬 사람도 없고, 상처 입은 자기 자신을 오래도록 위로하는 섬세한 영혼도 없다. 대신에 실패로 물든 시간 속을 무심히 거닐던 사람이 마주했던 독특한 광경들이 독립영화의 한 장면처럼 펼쳐진다.
                           </p>
                        </div>
                        <!-- End Single Work -->
                     </div>
                     <div class="col-lg-4 col-md-4 col-12">
                        <!-- Start Single Work -->
                        <div class="single-work wow fadeInUp" data-wow-delay=".4s" style="visibility: visible; animation-delay: 0.4s; animation-name: fadeInUp;">
                           <span class="serial">3위</span>
                           <img src="resources/assets/images/mainPage/book1.jfif" alt="Los Angeles" width="180" height="195">
                           <h3>위대한 개츠비</h3>
                        </div>
                        <!-- End Single Work -->
                     </div>
                  </div>                  
               </div>
            </section>
         </div>
      </section>
      <jsp:include page="/WEB-INF/views/include/footer.jsp"/>
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
</body>
</html>