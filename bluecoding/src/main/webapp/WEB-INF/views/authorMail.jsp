<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
      <title>현금화 하기</title>
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
      <!-- ====================== 페이징 ====================== -->
      <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
      <!-- ====================== 페이징 끝 ====================== -->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" />      
      <style>
         body{
         background-image: url(../resources/assets/images/here/noticeBG.jpg);
         }
         #tbPadd{
         padding-left: 1.5rem;
         padding-right: 1.5rem;
         }
      </style>
	  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script> 
</head>
<body>
<body class="bg-gray-200">
  <main class="main-content  mt-0">
    <div class="page-header align-items-start min-vh-100" style="background-image: url('https://images.unsplash.com/photo-1497294815431-9365093b7331?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1950&q=80');">
      <span class="mask bg-gradient-dark opacity-6"></span>
      <div class="container my-auto">
        <div class="row">
          <div class="col-lg-4 col-md-8 col-12 mx-auto">
            <div class="card z-index-0 fadeIn3 fadeInBottom">
              <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                <div class="bg-gradient-primary shadow-primary border-radius-lg py-3 pe-1">
                  <h4 class="text-white font-weight-bolder text-center mt-2 mb-0">현금화 하기</h4>
                </div>
              </div>
              <div class="card-body">
                <form action="email" method="post" class="text-start">
                  <div class="input-group input-group-outline my-3" align="center">
                    <p>이메일을 입력하면, 해당 메일로 성공 메세지를 보냅니다. 결제완료는 1~3일이 소요됩니다.</p>
                    <h1>현금화: ${profit }원</h1>
                  </div>        
                  <div class="input-group input-group-outline my-3">
                    <label class="form-label">이메일:</label>
                    <input type="text" class="form-control" name="profitEmail" id="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>
                  </div>
                  <div class="input-group input-group-outline my-3">
                    <label class="form-label">아이디:</label>
                    <input type="text" class="form-control" name="id" id="id" pattern="[A-Za-z0-9]{8,15}" title="영문자+숫자, 8~15글자" required>
                  </div>                  
                  <div class="input-group input-group-outline mb-3">
                    <label class="form-label">비밀번호:</label>
                    <input type="password" class="form-control" name="pwd" id="pwd" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&amp;])[A-Za-z\d$@$!%*#?&amp;]{10,16}$" title="대문자, 특수문자 포함 10~16글자" required>
                  </div>
                  <div class="input-group input-group-outline mb-3">
                    <label class="form-label">계좌번호:</label>
                    <input type="text" class="form-control" name="accountNumber" title="계좌번호를 입력하세요" required>
                  </div>
                  <div class="input-group input-group-outline mb-3">
                    <label class="form-label">예금주:</label>
                    <input type="text" class="form-control" name="accountHolder" title="예금주를 입력하세요" required>
                  </div>
                  <div class="input-group input-group-outline mb-3">
                    <label class="form-label">은행 이름:</label>
                    <input type="text" class="form-control" name="bank" title="은행 이름을 입력하세요" required>
                  </div>                                                               
                  <div class="text-center">
                    <button type="submit" class="btn btn-primary">현금화 하기</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
  <!--   Core JS Files   -->
  <script src="../../resources/material/assets/js/core/popper.min.js"></script>
  <script src="../../resources/material/assets/js/core/bootstrap.min.js"></script>
  <script src="../../resources/material/assets/js/plugins/perfect-scrollbar.min.js"></script>
  <script src="../../resources/material/assets/js/plugins/smooth-scrollbar.min.js"></script>
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
  <script src="../../resources/material/assets/js/material-dashboard.min.js?v=3.0.0"></script>
  
</body>
</html>