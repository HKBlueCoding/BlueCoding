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
<link
	href="../../resources/sbadmin2/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="../../resources/sbadmin2/css/sb-admin-2.min.css"
	rel="stylesheet">

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
</head>


<script>
 function gohome() {
  var frm = document.idfindscreen;
  frm.method = "post";
  frm.action = "./home.jsp"; //넘어간화면
  frm.submit(); //등록이 될수 있는 조건이면, 정보를 보내겠다.
 }

 function gojoin() {
  var frm = document.idfindscreen;
  frm.method = "post";
  frm.action = "./join.jsp"; //넘어간화면
  frm.submit(); //등록이 될수 있는 조건이면, 정보를 보내겠다.
 }

 function gologin() {
  var frm = document.idfindscreen;
  frm.method = "post";
  frm.action = "./login.jsp";
  frm.submit();
 }

 function goidfind() {
  var frm = document.idfindscreen;
  frm.method = "post";
  frm.action = "./id_find.jsp";
  frm.submit();
 }

 function gopwfind() {
  var frm = document.idfindscreen;
  frm.method = "post";
  frm.action = "./pw_find.jsp";
  frm.submit();
 }
 function logout() {
  var frm = document.idfindscreen;
  frm.method = "post";
  frm.action = "./logoutCtl.jsp";
  frm.submit();
 }
 function id_search1() { //이름,핸드폰으로 '찾기' 버튼

  var frm = document.idfindscreen;

  if (frm.name.value.length < 1) {
   alert("이름을 입력해주세요");
   return;
  }

  if (frm.phone1.value.length<2 || frm.phone1.value.length>4) {
   alert("핸드폰번호를 정확하게 입력해주세요");
   return;
  }
  if (frm.phone2.value.length<2 || frm.phone2.value.length>4) {
   alert("핸드폰번호를 정확하게 입력해주세요");
   return;
  }

  frm.method = "post";
  frm.action = "./id_searchCtl.jsp"; //넘어간화면
  frm.submit();  }

​

 function id_search2() { //이름,이메일로 '찾기' 버튼

  var frm = document.idfindscreen;

  if (frm.name2.value.length < 1) {
   alert("이름을 입력해주세요");
   return;
  }
  if (frm.email.value.length < 1 || frm.e_domain.value.length < 1) {
   alert("이메일을 입력해주세요");
   return;
  }

  frm.method = "post";
  frm.action = "./id_searchCtl2.jsp"; //넘어간화면
  frm.submit();  }

​

 //이메일 부분

 function checkid() {

  var frm = document.idfindscreen;

  var regExp = '/^([/\w/g\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/';

  if (!regExp.test(frm.email.value)) {

   alert('올바른 email을 입력해주세요.');

   frm.email.focus();

  }

 }

 function domainCheck() {

  var frm = document.idfindscreen;

  if (frm.domain.value == 0) {
   frm.e_domain.value = "";
   frm.e_domain.disabled = false;

  } else {
   frm.e_domain.value = frm.domain.value;
   frm.e_domain.disabled = true;

  }

 }
</script>


</HEAD>

<BODY>
	<jsp:include page="/WEB-INF/views/include/header.jsp" />

	<form name="idfindscreen">

		<font face="Yang Rounded">


			<table width="1330px" height="430px" align="center">
				<tr>
					<td>
						<table width="600px" align="center" border="0"
							style="color: black; background-color: #F6F6F6; font-size: 20px;">
							<tr>
								<td>
									<table width="750px" align="center" border=0;
										style="background-color: white; margin-top: 3%">
										<tr>
											<td align="center"><img src="../../img/miki_icon.png"
												height="30px"></td>
											<td>아이디 찾기</td>
											<td><div id="sub-title">| 회원정보에 등록한 정보로 인증.</td>
											<td width="300px"></td>
										</tr>
									</table>
								</td>
							</tr>

							<tr>
								<td>
									<table width="300px" height="20px" border="0"
										style="margin-top: 3%; font-size: 18px;">
										<br>
										<br>
										<tr>
											<td>&nbsp;&nbsp; <img src="../../img/check.png"
												height="30px">
											</td>
											<td>&nbsp;이름,이메일로 찾기</td>
										</tr>
									</table>
								</td>
							</tr>

							<td>
								<table width="380px" height="70px" align="center" border="0"
									style="font-size: 16px;">
									<tr>
										<td>이름</td>
										<td><input type="text" name="name2"></td>
									</tr>
									<tr>
										<td style="text-align: center;">e-mail&nbsp;</td>
										<td><input type="text" name="email" style="width: 80px"
											onblur="checkid()"> @ <input type="text"
											name="e_domain" style="width: 80px"> <select
											name="domain" onchange="domainCheck();">
												<option value="0" selected="selected">직접입력</option>
												<option value="naver.com">naver.com</option>
												<option value="hanmail.net">hanmail.net</option>
												<option value="nate.com">nate.com</option>
												<option value="yahoo.com">yahoo.com</option>
										</select></td>
									</tr>
								</table>
							</td>
							</tr>

							<tr>
								<td>
									<table width="140px" height="10px" border="0"
										style="margin-top: 2%" align="center">
										<tr>
											<td><input type="button" name="enter2" value="  찾기  "
												align="center"
												style="cursor: pointer; background: white; color: black; border-color: black;"
												onClick="id_search2()"></td>
											<td><input type="button" name="cancle2" value="  취소  "
												align="center"
												style="cursor: pointer; background: white; color: black; border-color: black"
												onClick="cancle()"></td>
										</tr>
									</table> <br>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</font>
	</form>

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
</BODY>
</HTML>
