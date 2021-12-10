<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>공지사항, 이벤트</title>
      <!-- Web Font -->
      <link
         href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
         rel="stylesheet">
      <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap"
         rel="stylesheet">
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
      <link
         href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
         rel="stylesheet">
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
      <!-- Font Awesome Icons -->
      <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
      <!-- Material Icons -->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
      <!-- CSS Files -->
      <link id="pagestyle" href="../resources/assets/css/material-dashboard.css?v=3.0.0" rel="stylesheet" />
      <!-- marerial CSS END -->    	
      <style>
         body{
         background-image: url(../resources/assets/images/here/noticeBG.jpg);
         }
         #tbPadd{
         padding-left: 1.5rem;
         padding-right: 1.5rem;
         }
      </style>
   </head>
   <body>
      <jsp:include page="/WEB-INF/views/include/header.jsp" />
      <br><br><br><br><br><br><br>
      
      <!-- Main Content-->
      <main class="mb-4">
         <div class="container px-4 px-lg-5">
            <div class="row gx-4 gx-lg-5 justify-content-center">
               <div class="col-md-10 col-lg-8 col-xl-7">
                  <p id="title">문의 내역</p>
                  <hr class="my-4">
                  <p id="title2">&nbsp;&nbsp;제목</p>
               </div>
            </div>
         </div>
      </main>
            
      <div class="container-fluid py-4" style="height:auto; width:60%;">
         <div class="row">         
            <div class="col-12">
               <div class="card my-4">
                  <div id="tbPadd" class="card-body px-0 pb-2">
                     <div class="table-responsive p-0">
                        <table class="table align-items-center mb-0">
                           <thead>
                              <tr>
                                 <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">작성자 : 홍길동</th>
                                 <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">작성일 : YYYY-MM-DD / HH-MM</th>
                                 <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">조회수 : 100회</th>
                                 <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">댓글 : 50건</th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <td>
                                    <div class="d-flex px-2 py-1" style="width: 200%;" >
                                       <div>
                                          <img src="../resources/assets/images/mainPage/board1.png" width="400" height="200" class="avatar avatar-sm me-3 border-radius-lg" alt="user1"  style="float: left">내용
                                       </div>
                                    </div>
                                 </td>
                              </tr>
                           </tbody>
                        </table>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- ======================= 버튼 ========================== -->
         <div align="right">
         <div class="button header-button">
            <a href="javascript:void(0)" class="btn">수정</a>
         </div>
         <div class="button header-button">
            <a href="javascript:void(0)" class="btn">삭제</a>
         </div>
         <div class="button header-button">
            <a href="javascript:void(0)" class="btn">신고하기</a>
         </div>
         </div>
         <!-- ======================= 버튼 끝 ========================== -->                  
      </div>
      
      
      <div align="center"><a align="center">1</a>&nbsp;&nbsp;<a align="center">2</a>&nbsp;&nbsp;<a align="center">3</a>&nbsp;&nbsp;<a align="center">4</a>&nbsp;&nbsp;<a align="center">5</a></div>
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
         	container : '.category-slider',
         	items : 3,
         	slideBy : 'page',
         	autoplay : false,
         	mouseDrag : true,
         	gutter : 0,
         	nav : false,
         	controls : true,
         	controlsText : [ '<i class="lni lni-chevron-left"></i>',
         			'<i class="lni lni-chevron-right"></i>' ],
         	responsive : {
         		0 : {
         			items : 1,
         		},
         		540 : {
         			items : 2,
         		},
         		768 : {
         			items : 4,
         		},
         		992 : {
         			items : 5,
         		},
         		1170 : {
         			items : 6,
         		}
         	}
         });
      </script>
      <!-- SBAdmin2 JS START -->
      <!-- Bootstrap core JavaScript-->
      <script src="../resources/sbadmin2/vendor/jquery/jquery.min.js"></script>
      <script src="../resources/sbadmin2/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
      <!-- Core plugin JavaScript-->
      <script src="../resources/sbadmin2/vendor/jquery-easing/jquery.easing.min.js"></script>
      <!-- Custom scripts for all pages-->
      <script src="../resources/sbadmin2/js/sb-admin-2.min.js"></script>
      <!-- Page level plugins -->
      <script src="../resources/sbadmin2/vendor/datatables/jquery.dataTables.min.js"></script>
      <script src="../resources/sbadmin2/vendor/datatables/dataTables.bootstrap4.min.js"></script>
      <!-- Page level custom scripts -->
      <script src="../resources/sbadmin2/js/demo/datatables-demo.js"></script>
      <!-- SBAdmin2 JS END -->
      <!--   Core JS Files   -->
      <script src="../resources/assets/js/core/popper.min.js"></script>
      <script src="../resources/assets/js/core/bootstrap.min.js"></script>
      <script src="../resources/assets/js/plugins/perfect-scrollbar.min.js"></script>
      <script src="../resources/assets/js/plugins/smooth-scrollbar.min.js"></script>
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
      <script src="../resources/assets/js/material-dashboard.min.js?v=3.0.0"></script>
   </body>
</html>