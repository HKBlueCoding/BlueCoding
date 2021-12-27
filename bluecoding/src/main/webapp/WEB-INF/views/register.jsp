<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%><%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%
  request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <!-- Web Font -->
    <link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
    <!-- ========================= ClassiGrids CSS HERE ========================= -->
    <link rel="stylesheet" href="../../resources/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../../resources/assets/css/LineIcons.2.0.css" />
    <link rel="stylesheet" href="../../resources/assets/css/animate.css" />
    <link rel="stylesheet" href="../../resources/assets/css/tiny-slider.css" />
    <link rel="stylesheet" href="../../resources/assets/css/glightbox.min.css" />
    <link rel="stylesheet" href="../../resources/assets/css/main.css" />
    <!-- SBAdmin2 CSS START -->
    <!-- Custom fonts for this template -->
    <link href="../../resources/sbadmin2/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="../../resources/sbadmin2/css/sb-admin-2.min.css" rel="stylesheet">
    <!-- Custom styles for this page -->
    <link href="../../resources/sbadmin2/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    <!-- SBAdmin2 CSS END -->
    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
    <!-- Nucleo Icons -->
    <link href="../../resources/assets/css/nucleo-icons.css" rel="stylesheet" />
    <link href="../../resources/assets/css/nucleo-svg.css" rel="stylesheet" />
    <!-- Font Awesome Icons -->
    <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
    <!-- Material Icons -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
    <!-- CSS Files -->
    <link id="pagestyle" href="../../resources/assets/css/material-dashboard.css?v=3.0.0" rel="stylesheet" />
    <!-- marerial CSS END -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
      body {
        background-image: url('../../resources/assets/images/hero/register.png');
      }

      #tbPadd {
        padding-left: 1.5rem;
        padding-right: 1.5rem;
      }
    </style>
    <style>
      @import url("http://fonts.googleapis.com/earlyaccess/nanumgothic.css");

      html {
        height: 100%;
      }

      h3 {
        color: white;
      }

      body {
        width: 100%;
        height: 100%;
        margin: 0;
        padding-top: 200px;
        padding-bottom: 40px;
        font-family: "Nanum Gothic", arial, helvetica, sans-serif;
        background-repeat: no-repeat;
      }

      .card {
        margin: 0 auto;
        /* Added */
        float: none;
        /* Added */
        margin-bottom: 10px;
        /* Added */
      }

      #btn-Yes {
        background-color: #e4932b;
        border: none;
      }

      .form-signin .form-control {
        position: relative;
        height: auto;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
        padding: 10px;
        font-size: 16px;
      }

      .card-title {
        margin-left: 30px;
      }

      .links {
        text-align: center;
        margin-bottom: 10px;
      }

      a {
        color: #f58b34;
        text-decoration: none;
      }

      .text2 {
        color: blue;
      }

      footer {
        clear: both;
      }
    </style>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" 
      		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
            crossorigin="anonymous"></script>
</head>
<body>
    <jsp:include page="/WEB-INF/views/include/header.jsp" />
    <div class="float-right" style="height: auto; width: 20%; color: white; background-color: rgba(0, 0, 0, 0.3);" align="center">
      <h3>회원가입</h3>
      <br>
      <form method="post" action="register" encType="multipart/form-data">
        <label for="id">아이디(영문+숫자)</label>
        <br />
        <input type="text" name="id" id="id" pattern="[A-Za-z0-9]{8,15}" title="영문자+숫자, 8~15글자" required/>
        <br />
        <label for="pwd">비밀번호(대문자, 특수문자1개)</label>
        <br />
        <input type="password" name="pwd" id="pwd"  pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{10,16}$" title="대문자, 특수문자 포함 10~16글자" required />
        <br />
        <label for="pwd">비밀번호 확인</label>
        <br />
        <input type="password" id="pwdCheck" required>
        <br />
        <label for="name">회원 실명</label>
        <br />
        <input type="text" name="name" id="name" minlength="1" maxlength="10" title="1글자이상 10글자 이하" required/>
        <br />
        <label for="nick">닉네임</label>
        <br />
        <input type="text" name="nick" id="nick" minlength="2" maxlength="12" title="2글자 이상 12글자 이하" required/>
        <br />
        <label for="name">이메일</label>
        <br />
        <input type="text" name="email" id="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required/>
        <br />
        <label for="birth">생년월일</label>
        <br />
        <input type="date" name="birth" id="birth" title="ex)2022-01-01" required />
        <br />
        <label for="phone">전화번호</label>
        <br />
        <input type="phone" name="phone" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}" title="형식 010-0000-0000" required>
        <br />
        <label for="find">비밀번호 찾기 질문(선택)</label>
        <br />
        <input type="text" name="find" id="find" minlength="2" maxlength="10" title="2글자 이상 10글자 이하"/>
        <br />
        <label for="file">프로필 이미지 </label>
        <input type="file" name="uploadFile" /> <!-- 파일을 넣어야 하니 다름 -->
        <input type="hidden" name="profile">
        <br>
        <input type="submit" id="sumit" value="등록" />
      </form>
    </div>
    <jsp:include page="/WEB-INF/views/include/footer.jsp" />
    <!-- ========================= ClassiGrids JS HERE ========================= -->
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
    <script src="../../resources/sbadmin2/vendor/jquery/jquery.min.js"></script>
    <script src="../../resources/sbadmin2/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="../../resources/sbadmin2/vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="../../resources/sbadmin2/js/sb-admin-2.min.js"></script>
    <!-- Page level plugins -->
    <script src="../../resources/sbadmin2/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="../../resources/sbadmin2/vendor/datatables/dataTables.bootstrap4.min.js"></script>
    <!-- Page level custom scripts -->
    <script src="../../resources/sbadmin2/js/demo/datatables-demo.js"></script>
    <!-- SBAdmin2 JS END -->
    <!--   Core JS Files   -->
    <script src="../../resources/assets/js/core/popper.min.js"></script>
    <script src="../../resources/assets/js/core/bootstrap.min.js"></script>
    <script src="../../resources/assets/js/plugins/perfect-scrollbar.min.js"></script>
    <script src="../../resources/assets/js/plugins/smooth-scrollbar.min.js"></script>
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
    <script src="../../resources/assets/js/material-dashboard.min.js?v=3.0.0"></script>
    <script src="../../resources/bluecoding/login.js"></script>
	<script src="../../resources/bluecoding/register.js"></script>
</body>
</html>