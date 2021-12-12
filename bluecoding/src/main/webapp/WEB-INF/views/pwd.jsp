<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- Web Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Lato&display=swap"
	rel="stylesheet">

<!-- ========================= ClassiGrids CSS HERE ========================= -->
<link rel="stylesheet" href="../../resources/assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="../../resources/assets/css/LineIcons.2.0.css" />
<link rel="stylesheet" href="../../resources/assets/css/animate.css" />
<link rel="stylesheet" href="../../resources/assets/css/tiny-slider.css" />
<link rel="stylesheet" href="../../resources/assets/css/glightbox.min.css" />
<link rel="stylesheet" href="../../resources/assets/css/main.css" />

<!-- SBAdmin2 CSS START -->
<!-- Custom fonts for this template -->
<link href="../../resources/sbadmin2/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="../../resources/sbadmin2/css/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link
	href="../../resources/sbadmin2/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">

<!-- SBAdmin2 CSS END -->

<!--     Fonts and icons     -->
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
<!-- Nucleo Icons -->
<link href="../../resources/assets/css/nucleo-icons.css" rel="stylesheet" />
<link href="../../resources/assets/css/nucleo-svg.css" rel="stylesheet" />
<!-- Font Awesome Icons -->
<script src="https://kit.fontawesome.com/42d5adcbca.js"
	crossorigin="anonymous"></script>
<!-- Material Icons -->
<link
	href="https://fonts.googleapis.com/icon?family=Material+Icons+Round"
	rel="stylesheet">
<!-- CSS Files -->
<link id="pagestyle"
	href="../../resources/assets/css/material-dashboard.css?v=3.0.0"
	rel="stylesheet" />
<!-- marerial CSS END -->
<style>
body {
	background-image: url(../../main/resources/assets/images/here/noticeBG.jpg);
}

#tbPadd {
	padding-left: 1.5rem;
	padding-right: 1.5rem;
}
</style>

<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>아이디 찾기</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" />
<style>
@import url("http://fonts.googleapis.com/earlyaccess/nanumgothic.css");

html {
	height: 100%;
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
	margin: 0 auto; /* Added */
	float: none; /* Added */
	margin-bottom: 10px; /* Added */
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
	margin-top: 30px;
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
</style>
</head>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>

<body>
	<jsp:include page="/WEB-INF/views/include/header.jsp" />
	<div cellpadding="0" cellspacing="0" marginleft="0" margintop="0"
		width="100%" height="100%" align="center">
	
		<div class="card align-middle" style="width: 25rem;" align="center">
			<div class="card-title" style="margin-top: 0px;" align="center">

				<h2 class="card-title" style="color: #f58b34;">
					<img src="/resources/assets/images/logo/BlueNovel.png" style="max-width: 70%; height: auto;" /></h2>
				</h2>
			</div>

			<div class="card-body">
				<form action="findPw" class="form-signin" method="POST">
					<input type="text" name="member_id" id="member_id"
						class="form-control" placeholder="아이디" required><br>
					<input type="text" name="name" id="name" class="form-control"
						placeholder="이름" required><BR> <input type="email"
						name="email" id="email" class="form-control" placeholder="이메일"
						required><br>
					<p class="checks" id="checks">${findpw_checkf}</p>
					<br />
					<button id="btn-Yes" class="btn btn-lg btn-primary btn-block"
						type="submit">비밀번호 찾기</button>
				</form>

			</div>
			<div class="links">
				<a href="id">아이디 찾기</a> | <a href="memberLogin">로그인</a> | <a
					href="memberRegist">회원가입</a>

			</div>
		</div>
	</div>	
	<jsp:include page="../../WEB-INF/views/include/footer.jsp" />
</body>
<script type="text/javascript">

	
	  	//아이디 정규식
		var idJ = /^[a-z0-9]{5,20}$/;
		
  		$("#member_id").focusout(function(){
	     if($('#member_id').val() == ""){
	   		$('#checks').text('아이디를 입력해주세요.');
	   	  	$('#checks').css('color', 'red');
	     }
	     });
  		
  		$("#member_id").focusout(function(){
  			if(!idJ.test($(this).val())){
  			$('#checks').text('5~20자의 영문 소문자, 숫자만 사용가능합니다');
  			$('#checks').css('color', 'red');
  		}
  		 });
  		
  		$("#name").focusout(function(){
	     if($('#name').val() == ""){
	   		$('#checks').text('이름을 입력해주세요.');
	   	  	$('#checks').css('color', 'red');
	     }
	     });
	     
  		$("#email").focusout(function(){
	     if($('#email').val() == ""){
	   		$('#checks').text('이메일을 입력해주세요');
	   	  	$('#checks').css('color', 'red');
	     }
	     });
  
  </script>

<!-- ========================= ClassiGrids JS HERE ========================= -->
<script src="../../resources/assets/js/bootstrap.min.js"></script>
<script src="../../resources/assets/js/wow.min.js"></script>
<script src="../../resources/assets/js/tiny-slider.js"></script>
<script src="../../resources/assets/js/glightbox.min.js"></script>
<script src="../../resources/assets/js/main.js"></script>
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
<script src="../../resources/sbadmin2/vendor/jquery/jquery.min.js"></script>
<script
	src="../../resources/sbadmin2/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script
	src="../../resources/sbadmin2/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="../../resources/sbadmin2/js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script
	src="../../resources/sbadmin2/vendor/datatables/jquery.dataTables.min.js"></script>
<script
	src="../../resources/sbadmin2/vendor/datatables/dataTables.bootstrap4.min.js"></script>

<!-- Page level custom scripts -->
<script src="/resources/sbadmin2/js/demo/datatables-demo.js"></script>

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
</body>
</html>
