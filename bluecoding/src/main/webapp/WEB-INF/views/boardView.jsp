<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>커뮤니티글 상세 보기</title>
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
<script src="../resources/bluecoding/boardView.js"></script>
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
						<p id="title">커뮤니티글 상세 보기</p>
						<hr class="my-4">
						<input type="hidden" name="articleNO" value="${board.articleNO}" />
						<br> <input type="hidden" name="id" value="${qna.id }" readonly>

						<p id="title2">
							<input type=text name="boardTitle" id="i_title_b1"  value="${board.boardTitle }"  disabled />
						</p>

						<div id="board">
								<input type="hidden" name="articleNO" value="${board.articleNO}">
								<input type="hidden" name="id" value="${board.id }" readonly>
								<input type="hidden" name="nick" value="${board.nick }" readonly>
								<p>작성자: ${board.nick } / 작성일: ${board.boardDate}</p>
								<br>

								<!-- ======================= 버튼 ========================== -->
									<div class="button header-button" id="tr_btn_modify_b1"
										style="display: none;">
										<button type="submit" class="btn">수정반영</button>
										<a onClick="funbtn(this.form)" class="btn">취소</a>
									</div>
									<div class="button header-button" id="tr_btn_b1">
										<a onclick="fn_enable_b1(this.form)" class="btn">수정</a>
									</div>
									<div class="button header-button" id="tr_btn_b2">
										<a onClick="funok('${board.articleNO}')" class="btn">삭제</a>
									</div>
									<div class="button header-button" id="tr_btn_b3">
										<a href="javascript:void(0)" class="btn">신고하기</a>
									</div>
								</div>

								<br> <br>
								<!-- ======================= 버튼 끝 ========================== -->
							</div>
							<div class="my-5">
								<!-- * * * * * * * * * * * * * * *-->
								<!-- * * SB Forms Contact Form * *-->
								<!-- * * * * * * * * * * * * * * *-->
								<!-- This form is pre-integrated with SB Forms.-->
								<!-- To make this form functional, sign up at-->
								<!-- https://startbootstrap.com/solution/contact-forms-->
								<!-- to get an API token!-->

								<br>
								<div class="form-floating" id="formMag">
									<textarea class="form-control" id="boardContent" name="boardText" placeholder="Enter your message here..."
										style="height: 15rem" data-sb-validations="required" disabled>${board.boardText }</textarea>
									<label for="message">내용</label>
									<input type="hidden" name="boardImage">
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
							</div>
						</div>
					</div>
		</main>
	</form>

	<!-- ====================== 리뷰(댓글) ====================== -->
	<div class="container-fluid py-4"
		style="height: auto; width: 100%; padding: 1px;">
		<hr class="my-4" style="width: 100%;">
		<div class="row">
			<div class="col-12">
				<div class="card my-4">
					<div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
						<div
							class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
							<h6 class="text-white text-capitalize ps-3">댓글</h6>
						</div>
					</div>
					<div id="tbPadd" class="card-body px-0 pb-2">
						<div class="table-responsive p-0">
							<table class="table align-items-center mb-0">
								<tbody>
									<tr>
										<td>
											<div class="d-flex px-2 py-1">
												<div class="d-flex flex-column justify-content-center">
													<p class="text-xs text-secondary mb-0"
														style="font-size: 15px;">
														닉네임 : ${board.nick }<br> <br>
													</p>
													<p class="text-xs text-secondary mb-0"
														style="font-size: 15px;"><%-- ${boardReply.boardReText} --%><br>
														<br>
													</p>
													<p class="text-xs text-secondary mb-0">YYYY/MM/DD /
														hh:mm</p>
												</div>
											</div>
										</td>
										<!-- ======================= 버튼 ========================== -->
										<td>
											<div align="right" style="width: 100%;">
												<div class="button header-button">
													<a href="javascript:void(0)" class="btn"
														style="background-color: #30d8e0;">수정</a>
												</div>
												<div class="button header-button">
													<a onClick="funok2()" class="btn"
														style="background-color: #30d8e0;">삭제</a>
												</div>
												<div class="button header-button">
													<a href="javascript:void(0)" class="btn"
														style="background-color: #ff00eb;">신고하기</a>
												</div>
											</div> <!-- ======================= 버튼 끝 ========================== -->
										</td>
									</tr>
									<!-- ======================= 답글 끝 ========================== -->
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<form id="contactForm" data-sb-form-api-token="API_TOKEN">
			<br>
			<div class="form-floating" id="formMag">
				<textarea class="form-control" id="message"
					placeholder="Enter your message here..."
					style="height: 15rem; width: 66.6%;" data-sb-validations="required"></textarea>
				<div class="invalid-feedback" data-sb-feedback="message:required">내용을
					입력하세요.</div>
				<br> <br> <label for="message">댓글 쓰기</label>
			</div>
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
			<!-- ======================= 버튼 ========================== -->
			<div align="center">
				<div class="button header-button">
					<a onClick="funok()" id="submitButton" class="btn">리뷰 등록</a>
				</div>
				<div class="button header-button">
					<a onClick="funbtn()" class="btn">돌아가기</a>
				</div>
			</div>
			<!-- ======================= 버튼 끝 ========================== -->
		</form>
		<br> <br>
		<!-- ====================== 페이징 ====================== -->
		<div class="w3-center">
			<div class="w3-bar">
				<a href="#" class="w3-button">«</a> <a href="#"
					class="w3-button w3-blue">1</a> <a href="#" class="w3-button">2</a>
				<a href="#" class="w3-button">3</a> <a href="#" class="w3-button">4</a>
				<a href="#" class="w3-button">5</a> <a href="#" class="w3-button">»</a>
			</div>
		</div>
		<!-- ====================== 페이징 끝 ====================== -->
	</div>
	<!-- ====================== 리뷰(댓글) 끝====================== -->

	<!-- Submit error message-->
	<!---->
	<!-- This is what your users will see when there is-->
	<!-- an error submitting the form-->
	<div class="d-none" id="submitErrorMessage">
		<div class="text-center text-danger mb-3">Error sending message!</div>
	</div>
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