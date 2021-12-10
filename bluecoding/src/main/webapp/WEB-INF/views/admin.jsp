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
      <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
  	  <!-- Nucleo Icons -->
  	  <link href="../resources/material/assets/css/nucleo-icons.css" rel="stylesheet" />
  	  <link href="../resources/material/assets/css/nucleo-svg.css" rel="stylesheet" />
  	  <!-- Font Awesome Icons -->
  	  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  	  <!-- Material Icons -->
  	  <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
  	  <!-- CSS Files -->
  	  <link id="pagestyle" href="../resources/material/assets/css/material-dashboard.css?v=3.0.0" rel="stylesheet" />
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
         color: DarkGray;
         }
         .txt_line { 
         overflow:hidden; 
         text-overflow:ellipsis;
         white-space:nowrap;  
         }
         .hero-area-set {
    		background-color: black;
    		background-size: cover;
    		background-position: center center;
    		background-repeat: no-repeat;
    		z-index: 2;
    		padding-top: 250px;
    		padding-bottom: 300px;
    		z-index: 2;
		 }
      </style>
   </head>
<body>

      <jsp:include page="/WEB-INF/views/include/header.jsp"/>
      <section class="hero-area-set overlay">
         <div class="row">
            <div class="col-lg-10 offset-lg-1 col-md-12 col-12">
               <div>
                  <!-- Start Hero Text -->
                  <div class="section-heading">
                  <!-- [첫번째 row(관리자 접속수 등)] -->
<div class="row">
        <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
          <div class="card">
            <div class="card-header p-3 pt-2">
              <div class="icon icon-lg icon-shape bg-gradient-dark shadow-dark text-center border-radius-xl mt-n4 position-absolute">
                <i class="material-icons opacity-10" align="left">weekend</i>
              </div>
              <div class="text-end pt-1">
                <h4 class="mb-0">관리자 접속수</h4>
              </div>
            </div>
            <hr class="dark horizontal my-0">
            <div class="card-footer p-3">
              <p class="mb-0" align="right">9999명</p>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
        <!-- *상담원조회* -->
          <div class="card">
            <div class="card-footer p-3">
              &nbsp;<button type="button" class="btn btn-secondary">관리자/상담원 아이디 생성</button>
              &nbsp;<button type="button" class="btn btn-secondary">관리자/상담원 아이디 조회</button>
            </div>
          </div>
        </div>
        <!-- *뉴스쓰기* -->
        <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
          <div class="card">
            <div class="card-header p-3 pt-2">
  				<button type="button" class="btn btn-secondary" style="height: auto; width: 100%;">&nbsp;&nbsp;&nbsp;뉴스쓰기&nbsp;&nbsp;&nbsp;</button>	
            </div>
          </div>
        </div>
        <!-- *결제내역*
        	 *이달의 수익* -->
        <div class="col-xl-3 col-sm-6">
          <div class="card">
            <div class="card-header p-3 pt-2">
				<button type="button" class="btn btn-secondary" style="height: auto; width: 100%;">&nbsp;결제 내역&nbsp;</button>	
          		<button type="button" class="btn btn-secondary" style="height: auto; width: 100%;">&nbsp;이달의 수익&nbsp;</button>	
          </div>
        </div>
      </div>
      		<!-- [여기까지 첫번째 row] -->
                  </div>
        
        
                  </div>
                  <br>
                  <!-- End Search Form -->
                  <!-- Start Search Form -->
                  <!-- 끝 -->   
               </div>
              </div>
               <br>
               
               <!-- [1번째 줄] -->
			  <div class="container-fluid py-4">
			  <!-- [삭제된 책] -->
<div class="row mb-4" align="center">
        <div class="col-lg-6 col-md-6 mb-md-0 mb-4" style=" margin-left: 60px; height:auto; width:30%;" align="right">
          <div class="card" >
            <div class="card-header pb-0" >
              <div class="row">
                <div class="col-lg-6 col-7" >
                  <h6>삭제된 책의 정보</h6>
                </div>
                <div class="col-lg-6 col-5 my-auto text-end">
                  <div class="dropdown float-lg-end pe-4">
                    <a class="cursor-pointer" id="dropdownTable" data-bs-toggle="dropdown" aria-expanded="false">
                      <i class="fa fa-ellipsis-v text-secondary" aria-hidden="true"></i>
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <div class="card-body px-0 pb-2" >
              <div class="table-responsive">
                <table class="table align-items-center mb-0">
                  <thead>
                    <tr>
                      <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">책이름</th>
                      <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">저자</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>  
                      <td align="center">
                        <span class="text-xs font-weight-bold"> 책이름 </span>
                      </td>
                      <td align="center">
                        <span class="text-xs font-weight-bold"> 저자 </span>
                      </td>                      
                    </tr>
                    <tr align="center">
					  <td class="align-middle text-center text-sm">
                        <span class="text-xs font-weight-bold"> 위대한 개츠비3 </span>
                      </td>
					  <td class="align-middle text-center text-sm">
                        <span class="text-xs font-weight-bold"> 홍길동 </span>
                      </td>                      
  					 </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
        <!-- [삭제된 책 끝] -->
        
        <!-- [삭제된 게시글] -->
        <div class="col-lg-6 col-md-6 mb-md-0 mb-4" style="height:auto; width:30%;" align="right">
          <div class="card" >
            <div class="card-header pb-0" >
              <div class="row">
                <div class="col-lg-6 col-7" >
                  <h6>삭제된 게시글</h6>                
                </div>
 					<div class="dropdown float-lg-end pe-4" align="center">
					  <div class="search-input">
                     	<label for="keyword"><i class="lni lni-search-alt theme-color"></i></label>
                     	<input type="text" name="keyword" id="keyword" placeholder="검색하세요.">
                  	 </div>
                  </div>                 
              </div>
            </div>
            <div class="card-body px-0 pb-2" >
              <div class="table-responsive">
                <table class="table align-items-center mb-0">
                  <thead>
                    <tr>
                      <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">책이름</th>
                      <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">저자</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>  
                      <td align="center">
                        <span class="text-xs font-weight-bold"> 책이름 </span>
                      </td>
                      <td align="center">
                        <span class="text-xs font-weight-bold"> 저자 </span>
                      </td>                      
                    </tr>
                    <tr align="center">
					  <td class="align-middle text-center text-sm">
                        <span class="text-xs font-weight-bold"> 위대한 개츠비3 </span>
                      </td>
					  <td class="align-middle text-center text-sm">
                        <span class="text-xs font-weight-bold"> 홍길동 </span>
                      </td>                      
  					 </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      	<!-- [삭제된 게시글 끝] -->
      	
      	<!-- [수수료 내역] -->
        <div class="col-lg-6 col-md-6 mb-md-0 mb-4" style="height:auto; width:30%;" align="right">
          <div class="card" >
            <div class="card-header pb-0" >
              <div class="row">
                <div class="col-lg-6 col-7" >
                  <h6>삭제된 책의 정보</h6>
                </div>
                <div class="col-lg-6 col-5 my-auto text-end">
                  <div class="dropdown float-lg-end pe-4">
                    <a class="cursor-pointer" id="dropdownTable" data-bs-toggle="dropdown" aria-expanded="false">
                      <i class="fa fa-ellipsis-v text-secondary" aria-hidden="true"></i>
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <div class="card-body px-0 pb-2" >
              <div class="table-responsive">
                <table class="table align-items-center mb-0">
                  <thead>
                    <tr>
                      <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">책이름</th>
                      <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">저자</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>  
                      <td align="center">
                        <span class="text-xs font-weight-bold"> 책이름 </span>
                      </td>
                      <td align="center">
                        <span class="text-xs font-weight-bold"> 저자 </span>
                      </td>                      
                    </tr>
                    <tr align="center">
					  <td class="align-middle text-center text-sm">
                        <span class="text-xs font-weight-bold"> 위대한 개츠비3 </span>
                      </td>
					  <td class="align-middle text-center text-sm">
                        <span class="text-xs font-weight-bold"> 홍길동 </span>
                      </td>                      
  					 </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>      	
      	<!-- [수수료 내역 끝] -->
      </div>
      
      			  	
			  </div>               
			   <!-- [1번째 줄 끝] -->              
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
         
      </section>
      <jsp:include page="/WEB-INF/views/include/footer.jsp"/>
      <!-- ========================= JS here ========================= -->
      <script src="../resources/assets/js/bootstrap.min.js"></script>
      <script src="../resources/assets/js/wow.min.js"></script>
      <script src="../resources/assets/js/tiny-slider.js"></script>
      <script src="../resources/assets/js/glightbox.min.js"></script>
      <script src="../resources/assets/js/main.js"></script>
 <!--   Core JS Files   -->
  <script src="../resources/material/assets/js/core/popper.min.js"></script>
  <script src="../resources/material/assets/js/core/bootstrap.min.js"></script>
  <script src="../resources/material/assets/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="../resources/material/assets/js/plugins/smooth-scrollbar.min.js"></script>
  <script src="../resources/material/assets/js/plugins/chartjs.min.js"></script>
  <script>
    var ctx = document.getElementById("chart-bars").getContext("2d");

    new Chart(ctx, {
      type: "bar",
      data: {
        labels: ["M", "T", "W", "T", "F", "S", "S"],
        datasets: [{
          label: "Sales",
          tension: 0.4,
          borderWidth: 0,
          borderRadius: 4,
          borderSkipped: false,
          backgroundColor: "rgba(255, 255, 255, .8)",
          data: [50, 20, 10, 22, 50, 10, 40],
          maxBarThickness: 6
        }, ],
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
          legend: {
            display: false,
          }
        },
        interaction: {
          intersect: false,
          mode: 'index',
        },
        scales: {
          y: {
            grid: {
              drawBorder: false,
              display: true,
              drawOnChartArea: true,
              drawTicks: false,
              borderDash: [5, 5],
              color: 'rgba(255, 255, 255, .2)'
            },
            ticks: {
              suggestedMin: 0,
              suggestedMax: 500,
              beginAtZero: true,
              padding: 10,
              font: {
                size: 14,
                weight: 300,
                family: "Roboto",
                style: 'normal',
                lineHeight: 2
              },
              color: "#fff"
            },
          },
          x: {
            grid: {
              drawBorder: false,
              display: true,
              drawOnChartArea: true,
              drawTicks: false,
              borderDash: [5, 5],
              color: 'rgba(255, 255, 255, .2)'
            },
            ticks: {
              display: true,
              color: '#f8f9fa',
              padding: 10,
              font: {
                size: 14,
                weight: 300,
                family: "Roboto",
                style: 'normal',
                lineHeight: 2
              },
            }
          },
        },
      },
    });


    var ctx2 = document.getElementById("chart-line").getContext("2d");

    new Chart(ctx2, {
      type: "line",
      data: {
        labels: ["Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
        datasets: [{
          label: "Mobile apps",
          tension: 0,
          borderWidth: 0,
          pointRadius: 5,
          pointBackgroundColor: "rgba(255, 255, 255, .8)",
          pointBorderColor: "transparent",
          borderColor: "rgba(255, 255, 255, .8)",
          borderColor: "rgba(255, 255, 255, .8)",
          borderWidth: 4,
          backgroundColor: "transparent",
          fill: true,
          data: [50, 40, 300, 320, 500, 350, 200, 230, 500],
          maxBarThickness: 6

        }],
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
          legend: {
            display: false,
          }
        },
        interaction: {
          intersect: false,
          mode: 'index',
        },
        scales: {
          y: {
            grid: {
              drawBorder: false,
              display: true,
              drawOnChartArea: true,
              drawTicks: false,
              borderDash: [5, 5],
              color: 'rgba(255, 255, 255, .2)'
            },
            ticks: {
              display: true,
              color: '#f8f9fa',
              padding: 10,
              font: {
                size: 14,
                weight: 300,
                family: "Roboto",
                style: 'normal',
                lineHeight: 2
              },
            }
          },
          x: {
            grid: {
              drawBorder: false,
              display: false,
              drawOnChartArea: false,
              drawTicks: false,
              borderDash: [5, 5]
            },
            ticks: {
              display: true,
              color: '#f8f9fa',
              padding: 10,
              font: {
                size: 14,
                weight: 300,
                family: "Roboto",
                style: 'normal',
                lineHeight: 2
              },
            }
          },
        },
      },
    });

    var ctx3 = document.getElementById("chart-line-tasks").getContext("2d");

    new Chart(ctx3, {
      type: "line",
      data: {
        labels: ["Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
        datasets: [{
          label: "Mobile apps",
          tension: 0,
          borderWidth: 0,
          pointRadius: 5,
          pointBackgroundColor: "rgba(255, 255, 255, .8)",
          pointBorderColor: "transparent",
          borderColor: "rgba(255, 255, 255, .8)",
          borderWidth: 4,
          backgroundColor: "transparent",
          fill: true,
          data: [50, 40, 300, 220, 500, 250, 400, 230, 500],
          maxBarThickness: 6

        }],
      },
      options: {
        responsive: true,
        maintainAspectRatio: false,
        plugins: {
          legend: {
            display: false,
          }
        },
        interaction: {
          intersect: false,
          mode: 'index',
        },
        scales: {
          y: {
            grid: {
              drawBorder: false,
              display: true,
              drawOnChartArea: true,
              drawTicks: false,
              borderDash: [5, 5],
              color: 'rgba(255, 255, 255, .2)'
            },
            ticks: {
              display: true,
              padding: 10,
              color: '#f8f9fa',
              font: {
                size: 14,
                weight: 300,
                family: "Roboto",
                style: 'normal',
                lineHeight: 2
              },
            }
          },
          x: {
            grid: {
              drawBorder: false,
              display: false,
              drawOnChartArea: false,
              drawTicks: false,
              borderDash: [5, 5]
            },
            ticks: {
              display: true,
              color: '#f8f9fa',
              padding: 10,
              font: {
                size: 14,
                weight: 300,
                family: "Roboto",
                style: 'normal',
                lineHeight: 2
              },
            }
          },
        },
      },
    });
  </script>
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
  <script src="../resource/material/assets/js/material-dashboard.min.js?v=3.0.0"></script>      
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