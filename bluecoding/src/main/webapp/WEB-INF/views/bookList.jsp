<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%><%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>도서 정보</title>
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- Web Font -->
    <link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
    <!-- ========================= ClassiGrids CSS HERE ========================= -->
    <link rel="stylesheet" href="../resources/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../resources/assets/css/LineIcons.2.0.css" />
    <link rel="stylesheet" href="../resources/assets/css/animate.css" />
    <link rel="stylesheet" href="../resources/assets/css/tiny-slider.css" />
    <link rel="stylesheet" href="../resources/assets/css/glightbox.min.css" />
    <link rel="stylesheet" href="../resources/assets/css/main.css" />
    <!-- SBAdmin2 CSS START -->
    <!-- Custom fonts for this template -->
    <link href="../resources/sbadmin2/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="../resources/sbadmin2/css/sb-admin-2.min.css" rel="stylesheet">
    <!-- Custom styles for this page -->
    <link href="../resources/sbadmin2/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    <!-- SBAdmin2 CSS END -->
    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
    <!-- Nucleo Icons -->
    <link href="../resources/assets/css/nucleo-icons.css" rel="stylesheet" />
    <link href="../resources/assets/css/nucleo-svg.css" rel="stylesheet" />
    <!-- Material Icons -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
    <!-- CSS Files -->
    <link id="pagestyle" href="../resources/assets/css/material-dashboard.css?v=3.0.0" rel="stylesheet" />
    <!-- marerial CSS END -->
    <!-- ====================== 페이징 ====================== -->
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <!-- ====================== 페이징 끝 ====================== -->
    <!-- Font Awesome Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../resources/assets/css/styles.css" rel="stylesheet" />
    <style>
      body {
        background-image: url(../resources/assets/images/here/noticeBG.jpg);
      }
      
      .all_div_size{
      	height:auto; 
      	width:65%;
      }

      #tbPadd {
        padding-left: 1.5rem;
        padding-right: 1.5rem;
      }
      
      .txt_line {
		width: 400px;
		overflow:hidden; 
		text-overflow:ellipsis;
		white-space:nowrap;  
	  }
	  
	  .name_td{
	  	width: 30px;
      	overflow:hidden; 
		text-overflow:ellipsis;
		white-space:nowrap;
		margin-left: 20px;
      }
      
      .view_td{
      	overflow:hidden; 
		text-overflow:ellipsis;
		white-space:nowrap;      	
      }
      @media all and (max-width: 768px){
      	.boardImage_img{
      		width: 80px;
      		height: 150px;
      	}
      }
      @media all and (max-width: 450px){
      	.bookNO_thr{
      		display: none;
      	}
      	.bookDate_thr{
      		display: none;
      	}
      	
      	.bookImage_img{
      		width: 60px;
      		height: 100px;
      	}
      	
      	.all_div_size{
      		margin-top:50px;
      		width:100%;
      	}
      	.txt_line {
      		width: 100px;
      	}
      	.name_td{
      		width: 80px;
      		margin-left: 1px;
      	}
      	.view_td{
      		width: 30px;
      	}
   
      }      
    </style>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js" 
      		  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
              crossorigin="anonymous"></script>
  </head>
  <body>
    <jsp:include page="/WEB-INF/views/include/header.jsp" />
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <div class="container-fluid py-4 all_div_size" style="">
      <div class="row">
        <div class="col-12">
          <div class="card my-4">
            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
              <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                <h6 class="text-white text-capitalize ps-3">도서 목록</h6>
              </div>
            </div>
            <div id="tbPadd" class="card-body px-0 pb-2">
              <div class="table-responsive p-0">
                <table class="table align-items-center mb-0">
                  <thead>
                    <tr>
                      <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 bookNO_thr">번호</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">&nbsp;&nbsp;작성한 글</th>
                      <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">작성자</th>
                      <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">조회수</th>
                      <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 bookDate_thr">작성일</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:choose>
                      <c:when test="${empty bookList }">
                        <tr>
                          <td>null입니다.</td>
                        </tr>
                      </c:when>
                      <c:when test="${!empty bookList }">
                        <c:forEach var="book" items="${bookList }">
                          <tr>
                            <td class="align-middle text-center bookNO_thr">
                              <span class="text-secondary text-xs font-weight-bold bookNO_thr" >${book.bookNO }</span>
                            </td>
                            <td>
                              <div class="d-flex px-2 py-1">
                                <div>
                                  <c:if test="${empty book.bookImage }">
                                    <img src="../../resources/assets/images/mainPage/board1.png" width="160" height="250" class="avatar avatar-sm me-3 border-radius-lg bookImage_img" alt="기본 이미지" id="preview" style="float: left">
                                  </c:if>
                                  <c:if test="${!empty book.bookImage }">
                                    <img src="../../download?uploadFile=${book.bookImage }&inFolder=book&pk=${book.bookNO}" width="160" height="250" class="avatar avatar-sm me-3 border-radius-lg bookImage_img" alt="${book.bookTitle }책의 커버사진" id="preview" style="float: left">
                                  </c:if>
                                </div>
                                <div class="d-flex flex-column justify-content-center">
                                  <a href="/view?bookNO=${book.bookNO }" class="mb-0 text-sm txt_line" style="color: black">${book.bookTitle }</a>
                                  <p class="text-xs text-secondary mb-0">${book.theme }</p>
                                </div>
                              </div>
                            </td>
                            <td class="align-middle">
                              <span class="text-secondary text-xs font-weight-bold name_td" >${book.name }</span>
                            </td>
                            <td class="align-middle text-center text-sm">
                              <span class="badge badge-sm bg-gradient-success view_td" style="background-image: linear-gradient(180deg,#419cef 10%,#106ec3 100%);">${book.bViewCnt }</span>
                            </td>
                            <td class="align-middle text-center bookDate_thr"">
                              <span class="text-secondary text-xs font-weight-bold bookDate_thr">${book.bookDate }</span>
                            </td>
                          </tr>
                        </c:forEach>
                      </c:when>
                    </c:choose>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- ======버튼====== -->
      <div class="search-form wow fadeInUp" style="margin: 1px; padding: 1px;">
        <div class="row">
          
            <div class="button header-button" >
             <c:if test="${!empty login.id && login.id ne '' }">
              <a href="add" class="btn">작성</a>
             </c:if>
             <c:if test="${empty login.id || login.id  eq '' }">
              <a data-bs-toggle="modal" data-bs-target="#login" class="btn">작성</a>
             </c:if>
            </div>  
        </div>
      </div>
     <!-- ======버튼====== -->  
    </div>
    <!-- ====================== 페이징 ====================== -->
    <div class="w3-center">
      <div class="w3-bar">
        <c:if test="${!empty totBook }">
          <c:choose>
            <c:when test="${totBook > 100 }">
              <c:forEach var="page" begin="1" end="10" step="1">
                <c:if test="${section >1 && page == 1 }">
                  <a href="list?section=${section-1 }&pageNum=10" class="w3-button">«</a>
                </c:if>
                <c:choose>
                  <c:when test="${page == pageNum }">
                    <a href="list?section=${section }&pageNum=${page}" class="w3-button w3-blue">${(section-1)*10+page }</a>
                  </c:when>
                  <c:otherwise>
                    <a href="list?section=${section }&pageNum=${page}" class="w3-button">${(section-1)*10+page }</a>
                  </c:otherwise>
                </c:choose>
                <c:if test="${page == 10 }">
                  <a href="list?section=${section+ 1}&pageNum=1" class="w3-button">»</a>
                </c:if>
              </c:forEach>
            </c:when>
            <c:when test="${totBook == 100 }">
              <c:forEach var="page" begin="1" end="10" step="1">
                <c:choose>
                  <c:when test="${page == pageNum}">
                    <a href="list?section=${section }&pageNum=${page}" class="w3-button w3-blue">${page }</a>
                  </c:when>
                  <c:otherwise>
                    <a href="list?section=${section }&pageNum=${page}" class="w3-button">${page }</a>
                  </c:otherwise>
                </c:choose>
              </c:forEach>
            </c:when>
            <c:when test="${totBook < 100 }">
              <c:forEach var="page" begin="1" end="${totBook/10 +1 }" step="1">
                <c:choose>
                  <c:when test="${page == pageNum}">
                    <a href="list?section=${section }&pageNum=${page}" class="w3-button w3-blue">${page }</a>
                  </c:when>
                  <c:otherwise>
                    <a href="list?section=${section }&pageNum=${page}" class="w3-button">${page }</a>
                  </c:otherwise>
                </c:choose>
              </c:forEach>
            </c:when>
          </c:choose>
        </c:if>
      </div>
    </div>
    <!-- ====================== 페이징 끝 ====================== -->
    <br>
    <br>
    <jsp:include page="/WEB-INF/views/include/footer.jsp" />
    <!-- ========================= ClassiGrids JS HERE ========================= -->
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
            controlsText: [' < i class = "lni lni-chevron-left" > < /i>',
              ' < i class = "lni lni-chevron-right" > < /i>' ],
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
    <!-- SBAdmin2 JS START -->
    <!-- Bootstrap core JavaScript-->

    <!-- SBAdmin2 JS END -->
    <!--   Core JS Files   -->
    <script src="../resources/assets/js/core/popper.min.js"></script>
    <script src="../resources/assets/js/core/bootstrap.min.js"></script>
    <script src="../resources/assets/js/plugins/perfect-scrollbar.min.js"></script>
    <script src="../resources/assets/js/plugins/smooth-scrollbar.min.js"></script>
    <script src="../../resources/bluecoding/header.js"></script>
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

    <script>
      function funbtn() {
        if (confirm("이전 페이지로 돌아가시겠습니까??")) {
          javascript: history.back();
        }
        else {
          return;
        }
      }
    </script>
    <c:if test="${totBook > 1 && empty bookList }">
      <script>
        window.onload = function() {
          alert('해당 페이지가 비어 있습니다.');
          javascript: history.back();
        }
      </script>
    </c:if>
  </body>
</html>