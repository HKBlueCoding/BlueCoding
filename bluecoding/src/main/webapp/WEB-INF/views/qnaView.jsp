<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>문의 내역 상세 보기</title>
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
<!-- ============================== 글쓰기(startbootstrap-clean-blog-gh-pages) ============================== -->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="../resources/assets/css/styles.css" rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<style>
.search-form {
	/* all: unset; */
	
}
</style>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="../resources/bluecoding/qnaView.js"></script>
</head>
<body>
	<!-- header -->
	<jsp:include page="/WEB-INF/views/include/header.jsp" />
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<!-- =================== 글쓰기 폼 ===================== -->
	<!-- Main Content-->
	<form id="contactForm" data-sb-form-api-token="API_TOKEN"
		name="frmArticle" method="post" action="update">
		<main class="mb-4">
			<div class="container px-4 px-lg-5">
				<div class="row gx-4 gx-lg-5 justify-content-center">
					<div class="col-md-10 col-lg-8 col-xl-7">
						<p id="title">문의 내역</p>
						<hr class="my-4">
						<!-- ================== 카테고리 ======================= -->
						<div class="categorise search-form wow fadeInUp">
							<div class="row">
								<div class="col-lg-3 col-md-3 col-12 p-0">
									<div class="search-input">
										<label for="category"></label>
											<select name="qnaList" id="qnaListLimit" disabled>
											<option value="none" selected>${qna.qnaList }</option>
											<option value="계정 관련">계정 관련</option>
											<option value="책 관련">책 관련</option>
											<option value="충전 관련">충전 관련</option>
											<option value="신고 관련">신고 관련</option>
											<option value="기타">기타</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<br>
						<!-- ================== 카테고리 끝 ======================= -->
						<p>
                            <input type="hidden" value="${qna.qnaNO }" name="qnaNO">   
						</p>
						<br>
						<p id="title2">
							<input type=text value="${qna.qnaTitle }" name="qnaTitle" id="qnaContent" disabled />
						</p>
						<div id="qna">
							<input type="hidden" name="id">&nbsp;&nbsp; 작성자 : ${qna.id }<br><br>
							<input type="hidden" name="qnaDate">${qna.qnaDate} &nbsp;&nbsp;&nbsp;&nbsp;
							<!-- ======================= 버튼 ========================== -->
							<div class="button header-button" id="tr_btn_modify" style="display: none;">
								<a onClick="fn_modify_article( '${qna.qnaNO}')" class="btn">수정반영</a>
								<a onClick="funbtn(this.form)" class="btn">취소</a>
							</div>

							<div class="button header-button" id="tr_btn_one">
								<a onclick="fn_enable(this.form)" class="btn">수정</a>
							</div>
							<div class="button header-button" id="tr_btn_two">
								<a onClick="funok()" class="btn">삭제</a>
							</div>
							<div class="button header-button" id="tr_btn_three">
								<a href="javascript:void(0)" class="btn">신고하기</a>
							</div>
						</div>
	</form>
	<br>
	<br>
	<!-- ======================= 버튼 끝 ========================== -->

	<div class="my-5">
		<!-- * * * * * * * * * * * * * * *-->
		<!-- * * SB Forms Contact Form * *-->
		<!-- * * * * * * * * * * * * * * *-->
		<!-- This form is pre-integrated with SB Forms.-->
		<!-- To make this form functional, sign up at-->
		<!-- https://startbootstrap.com/solution/contact-forms-->
		<!-- to get an API token!-->
		<form id="contactForm" data-sb-form-api-token="API_TOKEN">
			<br>
			<div class="form-floating" id="formMag">
				<textarea class="form-control" id="qnaContent2" name="qnaText" placeholder="Enter your message here..." style="height: 15rem" data-sb-validations="required" disabled>${qna.qnaText }</textarea>
				<input type="hidden" name="qnaImage">
				<label for="message">내용</label>
				<div class="invalid-feedback" data-sb-feedback="message:required">내용을 입력하세요.</div>
			</div>
			<br />
			<!-- Submit success message-->
			<!---->
			<!-- This is what your users will see when the form-->
			<!-- has successfully submitted-->
			<div class="d-none" id="submitSuccessMessage">
				<div class="text-center mb-3">
					<div class="fw-bolder">Form submission successful!</div>
					To activate this form, sign up at <br /> <a
						href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
				</div>
			</div>
			<!-- Submit error message-->
			<!---->
			<!-- This is what your users will see when there is-->
			<!-- an error submitting the form-->
			<div class="d-none" id="submitErrorMessage">
				<div class="text-center text-danger mb-3">Error sending
					message!</div>
			</div>
		</form>
	</div>
	</div>
	</div>
	</div>
	</main>
	</form>
	<!-- ==================== footer ====================== -->
	<!-- footer -->
	<jsp:include page="/WEB-INF/views/include/footer.jsp" />
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="../resources/assets/js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
	<!-- ========================= JS here ========================= -->
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
</body>
</html>