<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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

</head>

<body>
		<jsp:include page="/WEB-INF/views/include/header.jsp" />
	
	<!-- Start Header Area -->
	<header class="header navbar-area">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-12">
					<div class="nav-inner">
						<nav class="navbar navbar-expand-lg">
							<a class="navbar-brand" href="index.html"> <img
								src="../assets/images/logo/logo.svg" alt="Logo">
							</a>
							<button class="navbar-toggler mobile-menu-btn" type="button"
								data-bs-toggle="collapse"
								data-bs-target="#navbarSupportedContent"
								aria-controls="navbarSupportedContent" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="toggler-icon"></span> <span class="toggler-icon"></span>
								<span class="toggler-icon"></span>
							</button>
							<div class="collapse navbar-collapse sub-menu-bar"
								id="navbarSupportedContent">
								<ul id="nav" class="navbar-nav ms-auto">
									<li class="nav-item"><a href="javascript:void(0)"
										aria-label="Toggle navigation">도서정보</a></li>
									<li class="nav-item"><a href="javascript:void(0)"
										aria-label="Toggle navigation">커뮤니티</a></li>
									<li class="nav-item"><a class=" dd-menu collapsed"
										href="javascript:void(0)" data-bs-toggle="collapse"
										data-bs-target="#submenu-1-3"
										aria-controls="navbarSupportedContent" aria-expanded="false"
										aria-label="Toggle navigation">뉴스</a>
										<ul class="sub-menu collapse" id="submenu-1-3">
											<li class="nav-item"><a href="javascript:void(0)">공지사항</a></li>
											<li class="nav-item"><a href="javascript:void(0)">이벤트</a></li>
										</ul></li>
									<li class="nav-item"><a href="javascript:void(0)"
										aria-label="Toggle navigation">보관함</a></li>
									<li class="nav-item"><a href="javascript:void(0)"
										aria-label="Toggle navigation">고객센터</a></li>
								</ul>
							</div>
							<!-- navbar collapse -->
							<div class="login-button">
								<ul>
									<li><a href="javascript:void(0)"><i
											class="lni lni-enter"></i> Login</a></li>
									<li><a href="javascript:void(0)"><i
											class="lni lni-user"></i> Register</a></li>
								</ul>
							</div>
							<div class="button header-button">
								<a href="javascript:void(0)" class="btn">Post an Ad</a>
							</div>
						</nav>
						<!-- navbar -->
					</div>
				</div>
			</div>
			<!-- row -->
		</div>
		<!-- container -->
	</header>
	<!-- End Header Area -->

	<div class="container-fluid">

		<!-- Page Heading -->
		<h1 class="h3 mb-2 text-gray-800">Tables</h1>
		<p class="mb-4">
			DataTables is a third party plugin that is used to generate the demo
			table below. For more information about DataTables, please visit the
			<a target="_blank" href="https://datatables.net">official
				DataTables documentation</a>.
		</p>

		<!-- DataTales Example -->
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary">공지사항</h6>
			</div>
			<div class="card-body">
				<div class="table-responsive">
					<div id="dataTable_wrapper"
						class="dataTables_wrapper dt-bootstrap4">
						<div class="row">
							<div class="col-sm-12 col-md-6">
								<div class="dataTables_length" id="dataTable_length">
									<label>Show <select name="dataTable_length"
										aria-controls="dataTable"
										class="custom-select custom-select-sm form-control form-control-sm"><option
												value="10">10</option>
											<option value="25">25</option>
											<option value="50">50</option>
											<option value="100">100</option></select> entries
									</label>
								</div>
							</div>
							<div class="col-sm-12 col-md-6">
								<div id="dataTable_filter" class="dataTables_filter">
									<label>Search:<input type="search"
										class="form-control form-control-sm" placeholder=""
										aria-controls="dataTable"></label>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12">
								<table class="table table-bordered dataTable" id="dataTable"
									width="100%" cellspacing="0" role="grid"
									aria-describedby="dataTable_info" style="width: 100%;">
									<thead>
										<tr role="row">
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1"
												aria-label="Name: activate to sort column ascending"
												style="width: 161.672px;">Name</th>
											<th class="sorting sorting_asc" tabindex="0"
												aria-controls="dataTable" rowspan="1" colspan="1"
												aria-label="Position: activate to sort column descending"
												aria-sort="ascending" style="width: 265.766px;">Position</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1"
												aria-label="Office: activate to sort column ascending"
												style="width: 114.875px;">Office</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1"
												aria-label="Age: activate to sort column ascending"
												style="width: 50.6562px;">Age</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1"
												aria-label="Start date: activate to sort column ascending"
												style="width: 108.312px;">Start date</th>
											<th class="sorting" tabindex="0" aria-controls="dataTable"
												rowspan="1" colspan="1"
												aria-label="Salary: activate to sort column ascending"
												style="width: 96.7188px;">Salary</th>
										</tr>
									</thead>
									<tfoot>
										<tr>
											<th rowspan="1" colspan="1">Name</th>
											<th rowspan="1" colspan="1">Position</th>
											<th rowspan="1" colspan="1">Office</th>
											<th rowspan="1" colspan="1">Age</th>
											<th rowspan="1" colspan="1">Start date</th>
											<th rowspan="1" colspan="1">Salary</th>
										</tr>
									</tfoot>
									<tbody>

























































										<tr class="odd">
											<td class="">Airi Satou</td>
											<td class="sorting_1">Accountant</td>
											<td>Tokyo</td>
											<td>33</td>
											<td>2008/11/28</td>
											<td>$162,700</td>
										</tr>
										<tr class="even">
											<td class="">Garrett Winters</td>
											<td class="sorting_1">Accountant</td>
											<td>Tokyo</td>
											<td>63</td>
											<td>2011/07/25</td>
											<td>$170,750</td>
										</tr>
										<tr class="odd">
											<td class="">Angelica Ramos</td>
											<td class="sorting_1">Chief Executive Officer (CEO)</td>
											<td>London</td>
											<td>47</td>
											<td>2009/10/09</td>
											<td>$1,200,000</td>
										</tr>
										<tr class="even">
											<td class="">Paul Byrd</td>
											<td class="sorting_1">Chief Financial Officer (CFO)</td>
											<td>New York</td>
											<td>64</td>
											<td>2010/06/09</td>
											<td>$725,000</td>
										</tr>
										<tr class="odd">
											<td class="">Yuri Berry</td>
											<td class="sorting_1">Chief Marketing Officer (CMO)</td>
											<td>New York</td>
											<td>40</td>
											<td>2009/06/25</td>
											<td>$675,000</td>
										</tr>
										<tr class="even">
											<td class="">Fiona Green</td>
											<td class="sorting_1">Chief Operating Officer (COO)</td>
											<td>San Francisco</td>
											<td>48</td>
											<td>2010/03/11</td>
											<td>$850,000</td>
										</tr>
										<tr class="odd">
											<td class="">Donna Snider</td>
											<td class="sorting_1">Customer Support</td>
											<td>New York</td>
											<td>27</td>
											<td>2011/01/25</td>
											<td>$112,000</td>
										</tr>
										<tr class="even">
											<td class="">Serge Baldwin</td>
											<td class="sorting_1">Data Coordinator</td>
											<td>Singapore</td>
											<td>64</td>
											<td>2012/04/09</td>
											<td>$138,575</td>
										</tr>
										<tr class="odd">
											<td class="">Gavin Joyce</td>
											<td class="sorting_1">Developer</td>
											<td>Edinburgh</td>
											<td>42</td>
											<td>2010/12/22</td>
											<td>$92,575</td>
										</tr>
										<tr class="even">
											<td class="">Jonas Alexander</td>
											<td class="sorting_1">Developer</td>
											<td>San Francisco</td>
											<td>30</td>
											<td>2010/07/14</td>
											<td>$86,500</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12 col-md-5">
								<div class="dataTables_info" id="dataTable_info" role="status"
									aria-live="polite">Showing 1 to 10 of 57 entries</div>
							</div>
							<div class="col-sm-12 col-md-7">
								<div class="dataTables_paginate paging_simple_numbers"
									id="dataTable_paginate">
									<ul class="pagination">
										<li class="paginate_button page-item previous disabled"
											id="dataTable_previous"><a href="#"
											aria-controls="dataTable" data-dt-idx="0" tabindex="0"
											class="page-link">Previous</a></li>
										<li class="paginate_button page-item active"><a href="#"
											aria-controls="dataTable" data-dt-idx="1" tabindex="0"
											class="page-link">1</a></li>
										<li class="paginate_button page-item "><a href="#"
											aria-controls="dataTable" data-dt-idx="2" tabindex="0"
											class="page-link">2</a></li>
										<li class="paginate_button page-item "><a href="#"
											aria-controls="dataTable" data-dt-idx="3" tabindex="0"
											class="page-link">3</a></li>
										<li class="paginate_button page-item "><a href="#"
											aria-controls="dataTable" data-dt-idx="4" tabindex="0"
											class="page-link">4</a></li>
										<li class="paginate_button page-item "><a href="#"
											aria-controls="dataTable" data-dt-idx="5" tabindex="0"
											class="page-link">5</a></li>
										<li class="paginate_button page-item "><a href="#"
											aria-controls="dataTable" data-dt-idx="6" tabindex="0"
											class="page-link">6</a></li>
										<li class="paginate_button page-item next" id="dataTable_next"><a
											href="#" aria-controls="dataTable" data-dt-idx="7"
											tabindex="0" class="page-link">Next</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	
   <!-- Start Footer Area -->
    <footer class="footer">
        <!-- Start Footer Top -->

                        <!-- Single Widget -->
                        <div class="single-footer f-contact" align="center">
                            <h3>Contact</h3>
                            <ul>
                                <li>서울시 영등포구 양산로 53 월드메르디앙 비즈센터 401호<br> 대표자. 하영춘&nbsp;&nbsp;&nbsp;&nbsp;Tel. +(82) 02-6340-2236/2460 <br> itcampus@hankyung.com</li>
                                <li>사업자등록번호 : 104-81-47984   Copyright ⓒ 2021 한경닷컴 IT교육센터 All Rights Reserved.</li>
                            </ul>
                        </div>
                        <!-- End Single Widget -->

        <!--/ End Footer Middle -->
        <!-- Start Footer Bottom -->
        <div class="footer-bottom">
            <div class="container">
                <div class="inner">
                    <div class="row">
                        <div class="col-12">
                            <div class="content">
                                <ul class="footer-bottom-links">
                                    <li><a href="javascript:void(0)">이용약관</a></li>
                                    <li><a href="javascript:void(0)"> 개인정보취급방침</a></li>
                                </ul>
                                <p class="copyright-text">Designed and Developed by <a href="https://graygrids.com/"
                                        rel="nofollow" target="_blank">GrayGrids</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Footer Middle -->
    </footer>
   <!--/ End Footer Area -->


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

</body>
</html>