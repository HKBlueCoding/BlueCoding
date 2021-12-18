<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>ClassiGrids - Classified Ads and Listing Website
	Template.</title>
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
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
<!-- Nucleo Icons -->
<link href="../resources/material/assets/css/nucleo-icons.css"
	rel="stylesheet" />
<link href="../resources/material/assets/css/nucleo-svg.css"
	rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
<!-- Font Awesome Icons -->
<script src="https://kit.fontawesome.com/42d5adcbca.js"
	crossorigin="anonymous"></script>
<!-- Material Icons -->
<link
	href="https://fonts.googleapis.com/icon?family=Material+Icons+Round"
	rel="stylesheet">
<!-- CSS Files -->
<link id="pagestyle"
	href="../resources/material/assets/css/material-dashboard.css?v=3.0.0"
	rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"
	rel="stylesheet" />
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
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
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
										<div
											class="icon icon-lg icon-shape bg-gradient-dark shadow-dark text-center border-radius-xl mt-n4 position-absolute">
											<i class="material-icons opacity-10" align="left">weekend</i>
										</div>
										<div class="text-end pt-1">
											<h4 class="mb-0">관리자 페이지</h4>
										</div>
									</div>
									<hr class="dark horizontal my-0">
									<div class="card-footer p-3">
										<p class="mb-0" align="right"></p>
									</div>
								</div>
							</div>
							<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
								<!-- *상담원조회* -->
								<div class="card">
									<div class="card-footer p-3" align="center">
										<button type="button" class="btn btn-secondary"
											onclick="adRegister()">관리자/상담원 아이디 생성</button>
										<button type="button" class="btn btn-secondary"
											data-bs-toggle="modal" data-bs-target="#adSelect">관리자/상담원
											아이디 조회</button>
									</div>
								</div>
							</div>
							<!-- *뉴스쓰기* -->
							<div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
								<div class="card">
									<div class="card-header p-3 pt-2">
										<button type="button" class="btn btn-secondary"
											style="height: auto; width: 100%;"
											onclick="location.href='../news/add';">&nbsp;&nbsp;&nbsp;뉴스쓰기&nbsp;&nbsp;&nbsp;</button>
										<button type="button" class="btn btn-secondary"
											style="height: auto; width: 100%;"
											onclick="location.href='../qna';">&nbsp;&nbsp;&nbsp;상담원
											페이지 이동&nbsp;&nbsp;&nbsp;</button>
									</div>
								</div>
							</div>
							<!-- *결제내역*
        	 *이달의 수익* -->
							<div class="col-xl-3 col-sm-6">
								<div class="card">
									<div class="card-header p-3 pt-2">
										<button type="button" class="btn btn-secondary"
											style="height: auto; width: 100%;" data-bs-toggle="modal"
											data-bs-target="#coinHistory">&nbsp;결제 내역&nbsp;</button>
										<button type="button" class="btn btn-secondary"
											style="height: auto; width: 100%;" onclick="monthComm()">&nbsp;이달의
											수익&nbsp;</button>
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
			<div class="col-xl-3 col-sm-6" style="margin-left: 120px;">
				<button type="button" class="btn btn-warning" data-bs-toggle="modal"
					data-bs-target="#reportSelect">아이디 제재 등급 설정</button>
			</div>
			<br>
			<!-- [1번째 줄] -->
			<div class="container-fluid py-4">
				<!-- [삭제된 책] -->
				<div class="row mb-4" align="center">
					<div class="col-lg-6 col-md-6 mb-md-0 mb-4"
						style="margin-left: 60px; height: auto; width: 30%;" align="right">
						<div class="card">
							<div class="card-header pb-0">
								<div class="row">
									<div class="col-lg-6 col-7">
										<h6>
											<a href="#" onclick="bookOn()">삭제된 책의 정보</a>
										</h6>
										<h6 align="center" style="margin-left: 55px;">
											<a href="#" onclick="pageOn()">삭제된 회차[클릭]</a>
										</h6>
									</div>
									<div class="col-lg-6 col-4 my-auto text-end">
										<button type="button" class="btn btn-primary"
											data-bs-toggle="modal" data-bs-target="#bookDel">
											더보기</button>
									</div>
								</div>
							</div>
							<div id="bookList" class="card-body px-0 pb-2">
								<div class="table-responsive">
									<table class="table align-items-center mb-0">
										<thead>
											<tr>
												<th
													class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">책이름</th>
												<th
													class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">저자</th>
											</tr>
										</thead>

										<c:choose>
											<c:when test="${empty bookList }">
												<tr>
													<td>null입니다.</td>
												</tr>
											</c:when>
											<c:when test="${!empty bookList}">
												<c:forEach var="bookList" items="${bookList }">
													<tbody>
														<tr>
															<td align="center"><span
																class="txt_line text-xs font-weight-bold">${bookList.BOOKTITLE}</span></td>
															<td align="center"><span
																class="txt_line text-xs font-weight-bold">${bookList.NAME}</span>
															</td>
														</tr>
													</tbody>
												</c:forEach>
											</c:when>
										</c:choose>
									</table>
								</div>
							</div>
							<div id="pageList" class="card-body px-0 pb-2"
								style="display: none;">
								<div class="table-responsive">
									<table class="table align-items-center mb-0">
										<thead>
											<tr>
												<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">책이름</th>
												<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">회차</th>
												<th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">회차제목</th>
											</tr>
										</thead>
										<c:choose>
											<c:when test="${empty pageList }">
												<tr>
													<td>null입니다.</td>
												</tr>
											</c:when>
											<c:when test="${!empty pageList}">
												<c:forEach var="pageList" items="${pageList }">
													<tbody>
														<tr>
															<td align="center">
															<span class="txt_line text-xs font-weight-bold">${pageList.BOOKTITLE }</span>
															</td>
															<td align="center">
															<span class="txt_line text-xs font-weight-bold">${pageList.SERIES }회</span>
															</td>
															<td align="center">
															<span class="txt_line text-xs font-weight-bold">${pageList.PAGETITLE }</span>
															</td>
													</tbody>
												</c:forEach>
											</c:when>
										</c:choose>
									</table>
								</div>
							</div>
						</div>
					</div>
					<!-- [삭제된 책 끝] -->
					<!-- [삭제된 게시글] -->
					<div class="col-lg-6 col-md-6 mb-md-0 mb-4"
						style="height: auto; width: 30%;" align="right">
						<div class="card">
							<div class="card-header pb-0">
								<div class="row">
									<div class="col-lg-6 col-7">
										<h6>삭제된 게시글</h6>
										<br>
									</div>
									<div class="col-lg-6 col-4 my-auto text-end">
										<button type="button" class="btn btn-primary"
											data-bs-toggle="modal" data-bs-target="#boardDel">
											더보기</button>
									</div>
								</div>
							</div>
							<div class="card-body px-0 pb-2">
								<div class="table-responsive">
									<table class="table align-items-center mb-0">
										<thead>
											<tr>
												<th
													class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">게시글</th>
												<th
													class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">아이디</th>
											</tr>
										</thead>
										<tbody>
											<c:choose>
												<c:when test="${empty boardList }">
													<tr>
														<td>null입니다.</td>
													</tr>
												</c:when>
												<c:when test="${!empty boardList}">
													<c:forEach var="boardList" items="${boardList }">
														<tr>
															<td align="center"><span
																class="txt_line text-xs font-weight-bold">${boardList.BOARDTITLE}</span>
															</td>
															<td align="center"><span
																class="txt_line text-xs font-weight-bold">${boardList.ID}</span>
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
					<!-- [삭제된 게시글 끝] -->
					<!-- [수수료 내역] -->
					<div class="col-lg-6 col-md-6 mb-md-0 mb-4"
						style="height: auto; width: 30%;" align="right">
						<div class="card">
							<div class="card-header pb-0">
								<div class="row">
									<div class="col-lg-6 col-7">
										<h6>수수료 내역</h6>
										<br>
									</div>
									<div class="col-lg-6 col-4 my-auto text-end">
										<button type="button" class="btn btn-primary"
											data-bs-toggle="modal" data-bs-target="#commList">
											더보기</button>
									</div>
								</div>
							</div>
							<div class="card-body px-0 pb-2">
								<div class="table-responsive">
									<table class="table align-items-center mb-0">
										<thead>
											<tr>
												<th
													class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">이익</th>
												<th
													class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">처리시간</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td align="center"><span
													class="text-xs font-weight-bold">-300</span></td>
												<td align="center"><span
													class="text-xs font-weight-bold">2021-05-19</span></td>
											</tr>
											<tr align="center">
												<td class="align-middle text-center text-sm"><span
													class="text-xs font-weight-bold">+300</span></td>
												<td class="align-middle text-center text-sm"><span
													class="text-xs font-weight-bold">2021-03-12</span></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<!-- [수수료 내역 끝] -->
				</div>
			</div>
			<!-- [1번째 줄 끝] -->
		</div>
	</section>
	<!-- css modal -->

	<!-- [삭제된 책 정보&회차 Modal] -->
	<!-- The Modal -->
	<div class="modal" id="bookDel">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">삭제된 책 정보</h4>
					<br>
				</div>
				<!-- Modal body -->
				<div class="modal-body">
					<div id="bkDetails" class="container-fluid py-4"
						style="height: auto; width: 60%;">
						<div class="row">
							<div class="col-12">
								<div class="card my-4">
									<div
										class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
										<div
											class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
											&nbsp;&nbsp;&nbsp;
											<button type="button" class="btn btn-danger"
												onclick="bkModalOn()">책 정보</button>
											&nbsp;/&nbsp;
											<button type="button" class="btn btn-danger"
												onclick="pgModalOn()">회차 목록</button>
										</div>
									</div>
									<div id="tbPadd" class="card-body px-0 pb-2">
										<div class="table-responsive p-0">
											<table id="bkDetails" class="table align-items-center mb-0">
												<thead>
													<tr>
														<th
															class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">&nbsp;&nbsp;작성한
															글</th>
														<th
															class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">작성자</th>
														<th
															class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">조회수</th>
														<th
															class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">작성일</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>
															<div class="d-flex px-2 py-1">
																<div>
																	<img
																		src="../resources/assets/images/mainPage/board1.png"
																		width="100" height="70"
																		class="avatar avatar-sm me-3 border-radius-lg"
																		alt="user1">
																</div>
																<div class="d-flex flex-column justify-content-center">
																	<a href="add" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
																	<p class="text-xs text-secondary mb-0">장르</p>
																	<p class="text-xs text-secondary mb-0">댓글(개수)</p>
																</div>
															</div>
														</td>
														<td class="align-middle"><span
															class="text-secondary text-xs font-weight-bold">이름</span>
														</td>
														<td class="align-middle text-center text-sm"><span
															class="badge badge-sm bg-gradient-success"
															style="background-image: linear-gradient(180deg, #419cef 10%, #106ec3 100%);">100</span>
														</td>
														<td class="align-middle text-center"><span
															class="text-secondary text-xs font-weight-bold">23/04/18</span>
														</td>
													</tr>
													<tr>
														<td>
															<div class="d-flex px-2 py-1">
																<div>
																	<img
																		src="../resources/assets/images/mainPage/board1.png"
																		width="100" height="70"
																		class="avatar avatar-sm me-3 border-radius-lg"
																		alt="user1">
																</div>
																<div class="d-flex flex-column justify-content-center">
																	<a href="add" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
																	<p class="text-xs text-secondary mb-0">장르</p>
																	<p class="text-xs text-secondary mb-0">댓글(개수)</p>
																</div>
															</div>
														</td>
														<td class="align-middle"><span
															class="text-secondary text-xs font-weight-bold">이름</span>
														</td>
														<td class="align-middle text-center text-sm"><span
															class="badge badge-sm bg-gradient-success"
															style="background-image: linear-gradient(180deg, #419cef 10%, #106ec3 100%);">100</span>
														</td>
														<td class="align-middle text-center"><span
															class="text-secondary text-xs font-weight-bold">23/04/18</span>
														</td>
													</tr>
													<tr>
														<td>
															<div class="d-flex px-2 py-1">
																<div>
																	<img
																		src="../resources/assets/images/mainPage/board1.png"
																		width="100" height="70"
																		class="avatar avatar-sm me-3 border-radius-lg"
																		alt="user1">
																</div>
																<div class="d-flex flex-column justify-content-center">
																	<a href="add" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
																	<p class="text-xs text-secondary mb-0">장르</p>
																	<p class="text-xs text-secondary mb-0">댓글(개수)</p>
																</div>
															</div>
														</td>
														<td class="align-middle"><span
															class="text-secondary text-xs font-weight-bold">이름</span>
														</td>
														<td class="align-middle text-center text-sm"><span
															class="badge badge-sm bg-gradient-success"
															style="background-image: linear-gradient(180deg, #419cef 10%, #106ec3 100%);">100</span>
														</td>
														<td class="align-middle text-center"><span
															class="text-secondary text-xs font-weight-bold">23/04/18</span>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="search-input">
							<label for="keyword"> <i
								class="lni lni-search-alt theme-color"></i>
							</label> <input type="text" name="keyword" id="keyword"
								placeholder="검색하세요." align="center">
						</div>
					</div>
					<div id="pgDetails" class="container-fluid py-4"
						style="height: auto; width: 60%; display: none;">
						<div class="row">
							<div class="col-12">
								<div class="card my-4">
									<div
										class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
										<div
											class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
											&nbsp;&nbsp;&nbsp;
											<button type="button" class="btn btn-danger"
												onclick="bkModalOn()">책 정보</button>
											&nbsp;/&nbsp;
											<button type="button" class="btn btn-danger"
												onclick="pgModalOn()">회차 목록</button>
										</div>
									</div>
									<div id="tbPadd" class="card-body px-0 pb-2">
										<div class="table-responsive p-0">
											<!-- Modal IN 회차 내용 -->
											<table class="table align-items-center mb-0">
												<thead>
													<tr>
														<th
															class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">작성한글</th>
														<th
															class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">회차</th>
														<th
															class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">아이디</th>
														<th
															class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">작성일</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td class="align-middle text-center text-sm"><span
															class="text-secondary text-xs font-weight-bold">마법천자문</span>
														</td>
														<td class="align-middle text-center text-sm"><span
															class="text-secondary text-xs font-weight-bold">3회
																비춰라 빛 광(光)</span></td>
														<td class="align-middle text-center text-sm"><span
															class="text-secondary text-xs font-weight-bold">도굴꾼</span>
														</td>
														<td class="align-middle text-center"><span
															class="text-secondary text-xs font-weight-bold">2021-11-05</span>
														</td>
													</tr>
													<tr>
														<td class="align-middle text-center text-sm"><span
															class="text-secondary text-xs font-weight-bold">이상한
																나라의 엘리스</span></td>
														<td class="align-middle text-center text-sm"><span
															class="text-secondary text-xs font-weight-bold">3회
																모자장수</span></td>
														<td class="align-middle text-center text-sm"><span
															class="text-secondary text-xs font-weight-bold">루이스
																캐럴</span></td>
														<td class="align-middle text-center"><span
															class="text-secondary text-xs font-weight-bold">1903-11-1</span>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="search-input">
							<label for="keyword"> <i
								class="lni lni-search-alt theme-color"></i>
							</label> <input type="text" name="keyword" id="keyword"
								placeholder="검색하세요." align="center">
						</div>
					</div>
				</div>
				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- [삭제된 책 정보&회차 끝 by modal] -->
	<!-- [삭제된  게시글 Modal] -->
	<!-- The Modal -->
	<div class="modal" id="boardDel">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">삭제된 게시판</h4>
					<br>
				</div>
				<!-- Modal body -->
				<div class="modal-body">
					<div class="container-fluid py-4" style="height: auto; width: 60%;">
						<div class="row">
							<div class="col-12">
								<div class="card my-4">
									<div
										class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
										<div
											class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
											<h6 class="text-white text-capitalize ps-3">삭제된 커뮤니티</h6>
										</div>
									</div>
								</div>
								<div id="tbPadd" class="card-body px-0 pb-2">
									<div class="table-responsive p-0">
										<table class="table align-items-center mb-0">
											<thead>
												<tr>
													<th
														class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">&nbsp;&nbsp;작성한
														글</th>
													<th
														class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">작성자</th>
													<th
														class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">조회수</th>
													<th
														class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">작성일</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>
														<div class="d-flex px-2 py-1">
															<div>
																<img
																	src="../resources/assets/images/mainPage/board1.png"
																	width="100" height="70"
																	class="avatar avatar-sm me-3 border-radius-lg"
																	alt="user1">
															</div>
															<div class="d-flex flex-column justify-content-center">
																<a href="add" class="mb-0 text-sm" style="color: black">제목입니다[0]</a>
																<p class="text-xs text-secondary mb-0">댓글(개수)</p>
															</div>
														</div>
													</td>
													<td class="align-middle"><span
														class="text-secondary text-xs font-weight-bold">이름</span>
													</td>
													<td class="align-middle text-center text-sm"><span
														class="badge badge-sm bg-gradient-success"
														style="background-image: linear-gradient(180deg, #419cef 10%, #106ec3 100%);">100</span>
													</td>
													<td class="align-middle text-center"><span
														class="text-secondary text-xs font-weight-bold">23/04/18</span>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="search-input">
							<label for="keyword"> <i
								class="lni lni-search-alt theme-color"></i>
							</label> <input type="text" name="keyword" id="keyword"
								placeholder="검색하세요." align="center">
						</div>
					</div>
				</div>
				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- [삭제된  게시글 끝 by modal] -->
	<!-- [수수료  내역 Modal] -->
	<!-- The Modal -->
	<div class="modal" id="commList">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">수수료 내역</h4>
					<br>
				</div>
				<!-- Modal body -->
				<div class="modal-body">
					<div class="container-fluid py-4" style="height: auto; width: 60%;">
						<div class="row">
							<div class="col-12">
								<div class="card my-4">
									<div
										class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
										<div
											class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
											<h6 class="text-white text-capitalize ps-3">수수료 내역</h6>
										</div>
									</div>
								</div>
								<div id="tbPadd" class="card-body px-0 pb-2">
									<div class="table-responsive p-0">
										<table class="table align-items-center mb-0">
											<thead>
												<tr>
													<th
														class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">&nbsp;&nbsp;수익</th>
													<th
														class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">아이디</th>
													<th
														class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">책
														이름</th>
													<th
														class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">처리
														시간</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>
														<div class="d-flex px-2 py-1">
															<div class="d-flex flex-column justify-content-center">
																<span class="text-secondary text-xs font-weight-bold">-300</span>
															</div>
														</div>
													</td>
													<td class="align-middle"><span
														class="text-secondary text-xs font-weight-bold">이름</span>
													</td>
													<td class="align-middle text-center text-sm"><span
														class="text-secondary text-xs font-weight-bold">도굴꾼</span>
													</td>
													<td class="align-middle text-center"><span
														class="text-secondary text-xs font-weight-bold">2021-11-05</span>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<div class="search-input">
							<label for="keyword"> <i
								class="lni lni-search-alt theme-color"></i>
							</label> <input type="text" name="keyword" id="keyword"
								placeholder="검색하세요." align="center">
						</div>
					</div>
				</div>
				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- [수수료 내역 끝 by modal] -->
	<!-- [관리자, 상담원 아이디 조회 by Model] -->
	<!-- The Modal -->
	<div class="modal" id="adSelect">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">관리자/ 상담원 아이디 리스트</h4>
					<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
				</div>
				<!-- Modal body -->
				<div class="modal-body">
					<table class="table">
						<thead>
							<tr>
								<td>직책</td>
								<td>아이디</td>
								<td>비밀번호</td>
								<td>생성일</td>
								<td>&nbsp;&nbsp;삭제</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>관리자</td>
								<td>Doe</td>
								<td>johnexample</td>
								<td>2021-03-30</td>
								<td>
									<button type="button" class="btn btn-outline-dark">삭제</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- [관리자, 상담원 아이디 조회 by Model 끝] -->
	<!-- [결제 내역 by Modal] -->
	<div class="modal" id="coinHistory">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">결제 내역</h4>
					<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
				</div>
				<!-- Modal body -->
				<div class="modal-body">
					<div class="row">
						<div class="col-12">
							<div class="card my-4">
								<div
									class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
									<div
										class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
										<h6 class="text-white text-capitalize ps-3">결제 내역</h6>
									</div>
								</div>
								<div id="tbPadd" class="card-body px-0 pb-2">
									<div class="table-responsive p-0">
										<table class="table align-items-center mb-0">
											<thead>
												<tr>
													<th
														class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">&nbsp;&nbsp;처리
														결과</th>
													<th
														class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">결제된
														코인</th>
													<th
														class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">결제일</th>
													<th
														class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">아이디</th>
													<th
														class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">환불</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td class="align-middle text-center">
														<div>
															<div class="d-flex flex-column justify-content-center">
																<span class="text-secondary text-xs font-weight-bold">카드
																	or 이벤트 or 환불</span>
															</div>
														</div>
													</td>
													<td class="align-middle text-center"><span
														class="text-secondary text-xs font-weight-bold">-200코인</span>
													</td>
													<td class="align-middle text-center"><span
														class="text-secondary text-xs font-weight-bold">21/12/10</span>
													</td>
													<td class="align-middle text-center"><span
														class="text-secondary text-xs font-weight-bold">qwer123</span>
													</td>
													<td class="align-middle text-center">
														<div class="button header-button">
															<a href="javascript:void(0)" class="btn"
																style="background-color: #ab0dd7">청약철회</a>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<!-- ====================== 페이징 ====================== -->
							<div class="w3-center" align="center">
								<div class="w3-bar">
									<a href="#" class="w3-button">«</a> <a href="#"
										class="w3-button w3-blue">1</a> <a href="#" class="w3-button">2</a>
									<a href="#" class="w3-button">3</a> <a href="#"
										class="w3-button">4</a> <a href="#" class="w3-button">5</a> <a
										href="#" class="w3-button">»</a>
								</div>
							</div>
							<div class="search-input">
								<label for="keyword"> <i
									class="lni lni-search-alt theme-color"></i>
								</label> <input type="text" name="keyword" id="keyword"
									placeholder="검색하세요." align="center">
							</div>
							<!-- ====================== 페이징 끝 ====================== -->
						</div>
					</div>
				</div>
			</div>
			<!-- Modal footer -->
			<div class="modal-footer">
				<button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
	<!-- [결제 내역 by Modal 끝] -->

	<!-- [제재된 아이디 조회 by Model] -->
	<!-- The Modal -->
	<div class="modal" id="reportSelect">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<h4 class="modal-title">제재된 아이디</h4>
					<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
				</div>
				<!-- Modal body -->
				<div class="modal-body">
					<table class="table">
						<thead>
							<tr>
								<td>단계</td>
								<td>아이디</td>
								<td>사유</td>
								<td>제재 기간</td>
								<td align="center">설정</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>3단계</td>
								<td>Doe</td>
								<td>도배 및 악성 게시글</td>
								<td>2021-03-30</td>
								<td align="center"><button type="button"
										class="btn btn-dark">단계 변경</button></td>
							</tr>
						</tbody>
					</table>
					<div class="search-input">
						<label for="keyword"> <i
							class="lni lni-search-alt theme-color"></i>
						</label> <input type="text" name="keyword" id="keyword"
							placeholder="검색하세요." align="center">
					</div>
				</div>
				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-danger"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- [제재된 아이디 조회 by Model 끝] -->

	<!-- css modal -->
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
	<script
		src="../resources/material/assets/js/plugins/perfect-scrollbar.min.js"></script>
	<script
		src="../resources/material/assets/js/plugins/smooth-scrollbar.min.js"></script>
	<script src="../resources/material/assets/js/plugins/chartjs.min.js"></script>
	<script>
		var ctx = document.getElementById("chart-bars").getContext("2d");
		new Chart(ctx, {
			type : "bar",
			data : {
				labels : [ "M", "T", "W", "T", "F", "S", "S" ],
				datasets : [ {
					label : "Sales",
					tension : 0.4,
					borderWidth : 0,
					borderRadius : 4,
					borderSkipped : false,
					backgroundColor : "rgba(255, 255, 255, .8)",
					data : [ 50, 20, 10, 22, 50, 10, 40 ],
					maxBarThickness : 6
				}, ],
			},
			options : {
				responsive : true,
				maintainAspectRatio : false,
				plugins : {
					legend : {
						display : false,
					}
				},
				interaction : {
					intersect : false,
					mode : 'index',
				},
				scales : {
					y : {
						grid : {
							drawBorder : false,
							display : true,
							drawOnChartArea : true,
							drawTicks : false,
							borderDash : [ 5, 5 ],
							color : 'rgba(255, 255, 255, .2)'
						},
						ticks : {
							suggestedMin : 0,
							suggestedMax : 500,
							beginAtZero : true,
							padding : 10,
							font : {
								size : 14,
								weight : 300,
								family : "Roboto",
								style : 'normal',
								lineHeight : 2
							},
							color : "#fff"
						},
					},
					x : {
						grid : {
							drawBorder : false,
							display : true,
							drawOnChartArea : true,
							drawTicks : false,
							borderDash : [ 5, 5 ],
							color : 'rgba(255, 255, 255, .2)'
						},
						ticks : {
							display : true,
							color : '#f8f9fa',
							padding : 10,
							font : {
								size : 14,
								weight : 300,
								family : "Roboto",
								style : 'normal',
								lineHeight : 2
							},
						}
					},
				},
			},
		});
		var ctx2 = document.getElementById("chart-line").getContext("2d");
		new Chart(ctx2, {
			type : "line",
			data : {
				labels : [ "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct",
						"Nov", "Dec" ],
				datasets : [ {
					label : "Mobile apps",
					tension : 0,
					borderWidth : 0,
					pointRadius : 5,
					pointBackgroundColor : "rgba(255, 255, 255, .8)",
					pointBorderColor : "transparent",
					borderColor : "rgba(255, 255, 255, .8)",
					borderColor : "rgba(255, 255, 255, .8)",
					borderWidth : 4,
					backgroundColor : "transparent",
					fill : true,
					data : [ 50, 40, 300, 320, 500, 350, 200, 230, 500 ],
					maxBarThickness : 6
				} ],
			},
			options : {
				responsive : true,
				maintainAspectRatio : false,
				plugins : {
					legend : {
						display : false,
					}
				},
				interaction : {
					intersect : false,
					mode : 'index',
				},
				scales : {
					y : {
						grid : {
							drawBorder : false,
							display : true,
							drawOnChartArea : true,
							drawTicks : false,
							borderDash : [ 5, 5 ],
							color : 'rgba(255, 255, 255, .2)'
						},
						ticks : {
							display : true,
							color : '#f8f9fa',
							padding : 10,
							font : {
								size : 14,
								weight : 300,
								family : "Roboto",
								style : 'normal',
								lineHeight : 2
							},
						}
					},
					x : {
						grid : {
							drawBorder : false,
							display : false,
							drawOnChartArea : false,
							drawTicks : false,
							borderDash : [ 5, 5 ]
						},
						ticks : {
							display : true,
							color : '#f8f9fa',
							padding : 10,
							font : {
								size : 14,
								weight : 300,
								family : "Roboto",
								style : 'normal',
								lineHeight : 2
							},
						}
					},
				},
			},
		});
		var ctx3 = document.getElementById("chart-line-tasks").getContext("2d");
		new Chart(ctx3, {
			type : "line",
			data : {
				labels : [ "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct",
						"Nov", "Dec" ],
				datasets : [ {
					label : "Mobile apps",
					tension : 0,
					borderWidth : 0,
					pointRadius : 5,
					pointBackgroundColor : "rgba(255, 255, 255, .8)",
					pointBorderColor : "transparent",
					borderColor : "rgba(255, 255, 255, .8)",
					borderWidth : 4,
					backgroundColor : "transparent",
					fill : true,
					data : [ 50, 40, 300, 220, 500, 250, 400, 230, 500 ],
					maxBarThickness : 6
				} ],
			},
			options : {
				responsive : true,
				maintainAspectRatio : false,
				plugins : {
					legend : {
						display : false,
					}
				},
				interaction : {
					intersect : false,
					mode : 'index',
				},
				scales : {
					y : {
						grid : {
							drawBorder : false,
							display : true,
							drawOnChartArea : true,
							drawTicks : false,
							borderDash : [ 5, 5 ],
							color : 'rgba(255, 255, 255, .2)'
						},
						ticks : {
							display : true,
							padding : 10,
							color : '#f8f9fa',
							font : {
								size : 14,
								weight : 300,
								family : "Roboto",
								style : 'normal',
								lineHeight : 2
							},
						}
					},
					x : {
						grid : {
							drawBorder : false,
							display : false,
							drawOnChartArea : false,
							drawTicks : false,
							borderDash : [ 5, 5 ]
						},
						ticks : {
							display : true,
							color : '#f8f9fa',
							padding : 10,
							font : {
								size : 14,
								weight : 300,
								family : "Roboto",
								style : 'normal',
								lineHeight : 2
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
				damping : '0.5'
			}
			Scrollbar.init(document.querySelector('#sidenav-scrollbar'),
					options);
		}
	</script>
	<!-- Github buttons -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>
	<!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
	<script
		src="../resources/material/assets/js/material-dashboard.min.js?v=3.0.0"></script>
	<script src="../resources/bluecoding/admin.js"></script>
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
			controlsText : [ ' < i class = "lni lni-chevron-left" > < /i>',
					' < i class = "lni lni-chevron-right" > < /i>' ],
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