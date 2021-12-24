<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8" />
      <meta http-equiv="x-ua-compatible" content="ie=edge" />
      <title>ClassiGrids - Classified Ads and Listing Website Template. </title>
      <meta name="description" content="" />
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <link rel="shortcut icon" type="image/x-icon" href="../assets/images/favicon.svg" />
      <!-- Place favicon.ico in the root directory -->
      <!-- 1  -->
      <!-- Web Font -->
      <link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
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
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" />
      <style type="text/css">
         .hero-area.overlay::before {
         all: unset;
         }
         .theme {
         margin-top: 40px;
         /* background: #fff3; */
         background: #eee;
         border-radius: 6px;
         padding: 20px;
         padding-right: 45px;
         }
         #mainLogo {
         color: DarkGray;
         }
         .txt_line {
         overflow: hidden;
         text-overflow: ellipsis;
         white-space: nowrap;
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
         .overlay::before {
         all: unset;
         }
         .card .card-body {
         all: unset;
         }
      </style>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
      <script src="https://code.jquery.com/jquery-3.6.0.min.js" 
         integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
         crossorigin="anonymous"></script>
   </head>
   <body>
      <jsp:include page="/WEB-INF/views/include/header.jsp" />
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
                                 <div class="icon icon-lg icon-shape bg-gradient-primary shadow-primary text-center border-radius-xl mt-n4 position-absolute">
                                    <i class="material-icons opacity-10">person</i>
                                 </div>
                                 <div class="text-end pt-1">
                                    <h4 class="mb-0">상담원 페이지</h4>
                                 </div>
                              </div>
                              <hr class="dark horizontal my-0">
                              <div class="card-footer p-3">
                                 <p class="mb-0" align="right"></p>
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
            <div class="row" style="margin-left:250px">
               <div class="col-8" >
                  <div class="card my-4">
                     <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                        <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                           <h6 class="text-white text-capitalize ps-3">고객센터</h6>
                        </div>
                     </div>
                     <div id="tbPadd" class="card-body px-0 pb-2">
                        <div class="table-responsive p-0">
                           <table class="table align-items-center mb-0">
                              <thead>
                                 <tr>
                                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">&nbsp;문의 종류</th>
                                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">제목</th>
                                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">아이디</th>
                                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">접수일</th>
                                    <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">답변완료 여부</th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <c:if test="${empty qnaList }">
                                    <tr>
                                       <td class="align-middle text-center">등록된 게시글이 없습니다...</td>
                                    </tr>
                                 </c:if>
                                 <c:if test="${!empty qnaList }">
                                    <c:forEach var="qna" items="${qnaList }">
                                       <tr>
                                          <td class="align-middle text-center">
                                             <div>
                                                <div class="d-flex flex-column justify-content-center">
                                                   <p class="mb-0 text-sm" style="color: black">${qna.qnaList }</p>
                                                </div>
                                             </div>
                                          </td>
                                          <td class="align-middle text-center">
                                             <a href="/qna/view?qnaNO=${qna.qnaNO }"><span class="text-secondary text-xs font-weight-bold">${qna.qnaTitle }</span></a>
                                          </td>
                                          <td class="align-middle text-center">
                                             <span class="text-secondary text-xs font-weight-bold">${qna.id }</span>
                                          </td>
                                          <td class="align-middle text-center">
                                             <span class="text-secondary text-xs font-weight-bold">${qna.qnaDate }</span>
                                          </td>
                                          <c:if test="${qna.isProcess ne 'Y' }">
                                             <td class="align-middle text-center text-sm">
                                                <span class="badge badge-sm bg-gradient-success" style="background-image: linear-gradient(180deg,#419cef 10%,#106ec3 100%);">답변 대기</span>
                                             </td>
                                          </c:if>
                                          <c:if test="${qna.isProcess eq 'Y' }">
                                             <td class="align-middle text-center text-sm">
                                                <span class="text-secondary text-xs font-weight-bold">답변 완료</span>
                                             </td>
                                          </c:if>
                                       </tr>
                                    </c:forEach>
                                 </c:if>
                              </tbody>
                           </table>
                           <ul class="pagination justify-content-center">
                              <c:if test="${!empty totQna }">
                                 <c:choose>
                                    <c:when test="${ totQna > 100 }">
                                       <c:forEach var="page" begin="1" end="10" step="1">
                                          <c:if test="${section >1 && page == 1 }">
                                             <li class="page-item"><a class="page-link" href="qna?section=${section-1 }&pageNum=10">이전</a></li>
                                          </c:if>
                                          <c:choose>
                                             <c:when test="${page == pageNum }">
                                                <li class="page-item active"><a class="page-link" href="qna?section=${section }&pageNum=${page}">${(section-1)*10+page }</a></li>
                                             </c:when>
                                             <c:otherwise>
                                                <li class="page-item"><a class="page-link" href="qna?section=${section }&pageNum=${page}">${(section-1)*10+page }</a></li>
                                             </c:otherwise>
                                          </c:choose>
                                          <c:if test="${page == 10 }">
                                             <li class="page-item"><a class="page-link" href="qna?section=${section+1}&pageNum=1">다음</a></li>
                                          </c:if>
                                       </c:forEach>
                                    </c:when>
                                    <c:when test="${totQna == 100 }">
                                       <c:forEach var="page" begin="1" end="10" step="1">
                                          <c:choose>
                                             <c:when test="${page == pageNum}">
                                                <li class="page-item active"><a class="page-link" href="qna?section=${section }&pageNum=${page}">${page}</a></li>
                                             </c:when>
                                             <c:otherwise>
                                                <li class="page-item"><a class="page-link" href="qna?section=${section }&pageNum=${page}">${page}</a></li>
                                             </c:otherwise>
                                          </c:choose>
                                       </c:forEach>
                                    </c:when>
                                    <c:when test="${totQna < 100 }">
                                       <c:forEach var="page" begin="1" end="${totQna/10 +1 }" step="1">
                                          <c:choose>
                                             <c:when test="${page == pageNum }">
                                                <li class="page-item active"><a class="page-link" href="qna?section=${section }&pageNum=${page}">${page }</a></li>
                                             </c:when>
                                             <c:otherwise>
                                                <li class="page-item"><a class="page-link" href="qna?section=${section }&pageNum=${page}">${page }</a></li>
                                             </c:otherwise>
                                          </c:choose>
                                       </c:forEach>
                                    </c:when>
                                 </c:choose>
                              </c:if>
                           </ul>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-lg-4 col-md-4 col-12 p-0" style="width: 30%; margin-left: 100px;">
                        <div class="search-input">
                           <label for="keyword"><i class="lni lni-search-alt theme-color"></i></label>
                           <input type="text" name="keyword" id="keyword" placeholder="검색하세요.">
                           <button class="btn btn-primary"><i class="lni lni-search-alt"></i> 검색</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <jsp:include page="/WEB-INF/views/include/footer.jsp" />
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
      <script src="../resources/material/assets/js/material-dashboard.min.js?v=3.0.0"></script>
      <script src="../resources/bluecoding/admin.js"></script>
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
               controlsText: [' < i class = "lni lni-chevron-left" > < /i>', ' < i class = "lni lni-chevron-right" > < /i>'],
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
      <c:if test="${totQna > 1 && empty qnaList }">
         <script> 
            window.onload = function(){
            alert('해당 페이지가 비어 있습니다.');
            javascript:history.back();
            }
         </script>
      </c:if>
      <script src="../../resources/bluecoding/header.js"></script> 
   </body>
</html>