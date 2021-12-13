<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <!-- Material Icons -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
    <!-- CSS Files -->
    <link id="pagestyle" href="../resources/material/assets/css/material-dashboard.css?v=3.0.0" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <jsp:include page="/WEB-INF/views/include/header.jsp" />
    <br>
    <br>
    <br>
    <div class="container-fluid px-2 px-md-4">
      <div class="page-header min-height-300 border-radius-xl mt-4" style="background-image: url('https://images.unsplash.com/photo-1531512073830-ba890ca4eba2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&amp;ixlib=rb-1.2.1&amp;auto=format&amp;fit=crop&amp;w=1920&amp;q=80');">
        <span class="mask  bg-gradient-primary  opacity-6"></span>
      </div>
      <div class="card card-body mx-3 mx-md-4 mt-n6">
        <div class="row gx-4 mb-2">
          <div class="col-auto">
            <div class="avatar avatar-xl position-relative">
              <img src="../../resources/material/assets/img/bruce-mars.jpg" alt="profile_image" class="w-100 border-radius-lg shadow-sm">
            </div>
          </div>
          <div class="col-auto my-auto">
            <div class="h-100">
              <h5 class="mb-1"> 유저 닉네임123 </h5>
              <p class="mb-0 font-weight-normal text-sm"> lv 99 </p>
            </div>
          </div>
          <br>
        </div>
        <div class="row" style="margin-bottom:15px;">
          <div class="col-12" align="right">
            <div class="card">
              <div class="card-body px-0 pb-2">
                <div class="table-responsive">
                  <table class="table align-items-center mb-0">
                    <thead>
                      <tr>
                        <td>
                          <h6 style="margin-left: 20px"> 내 정보 </h6>
                        </td>
                      </tr>
                    </thead>
                    <tbody>
                      <tr align="left">
                        <td>
                          <span class="txt_line text-xs font-weight-bold" style="margin-left: 20px;">아이디: <input type="text" value="qwe(아이디)" disabled>
                          </span>
                        </td>
                      </tr>
                      <tr align="left">
                        <td>
                          <span class="txt_line text-xs font-weight-bold" style="margin-left: 20px;">비밀번호 : <input type="password" value="Que123" disabled>
                          </span>
                        </td>
                      </tr>
                      <tr align="left">
                        <td>
                          <span class="txt_line text-xs font-weight-bold" style="margin-left: 20px;">이름(실명): <input type="text" value="홍길동" disabled>
                          </span>
                        </td>
                      </tr>
                      <tr align="left">
                        <td>
                          <span class="txt_line text-xs font-weight-bold" style="margin-left: 20px;">가입일: <input type="date" value="2021-12-01" disabled>
                          </span>
                        </td>
                      </tr>
                      <tr align="right">
                        <td>
                          <button type="button" class="btn btn-primary" style="margin-left: 20px;">수정하기</button>
                          <button type="button" class="btn btn-info" style="margin-left: 20px;" data-bs-toggle="modal" data-bs-target="#myBkList">연재목록</button>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="row">
            <div class="col-12">
              <div class="row">
                <div class="col-12">
                  <div class="card my-4">
                    <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                      <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                        <h6 class="text-white text-capitalize ps-3">작성한 게시글</h6>
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
                                    <a href="view" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
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
                                    <a href="view" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
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
                                  <div> [댓글] </div>
                                  <div class="d-flex flex-column justify-content-center">
                                    <a href="view" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
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
                  <a href="#">회원 탈퇴</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- CSS MODAL -->
    <!-- [연제 목록 by modal] -->
    <!-- The Modal -->
    <div class="modal" id="myBkList">
      <div class="modal-dialog modal-xl">
        <div class="modal-content">
          <!-- Modal Header -->
          <div class="modal-header">
            <h4 class="modal-title">나의 연재 목록</h4>
            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
          </div>
          <!-- Modal body -->
          <div class="modal-body">
            <table class="table">
              <thead>
                <tr>
                  <td>제목</td>
                  <td>회차 횟수</td>
                  <td>연재 시작일</td>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>야성의 부름</td>
                  <td>15 페이지</td>
                  <td>2021-03-31</td>
                </tr>
                <tr>
                  <td>야성의 부름</td>
                  <td>15 페이지</td>
                  <td>2021-03-31</td>
                </tr>
                <tr>
                  <td>야성의 부름</td>
                  <td>15 페이지</td>
                  <td>2021-03-31</td>
                </tr>
              </tbody>
            </table>
            <div class="search-input">
              <label for="keyword">
                <i class="lni lni-search-alt theme-color"></i>
              </label>
              <input type="text" name="keyword" id="keyword" placeholder="검색하세요." align="center">
            </div>
          </div>
          <!-- Modal footer -->
          <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
          </div>
        </div>
      </div>
    </div>
    <!-- [연제 목록 by modal 끝] -->
    <!-- CSS MODAL -->
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
        controlsText: [' < i class = "lni lni-chevron-left" >< /i>', ' < i class = "lni lni-chevron-right" >< /i>'],
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