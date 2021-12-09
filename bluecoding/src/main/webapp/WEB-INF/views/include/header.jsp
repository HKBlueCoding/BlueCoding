<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	href="assets/images/favicon.svg" />
<!-- Place favicon.ico in the root directory -->
<!-- 1  -->
<!-- Web Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Lato&display=swap"
	rel="stylesheet">

<!-- ========================= CSS here ========================= -->
<link rel="stylesheet" href="resources/assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="resources/assets/css/LineIcons.2.0.css" />
<link rel="stylesheet" href="resources/assets/css/animate.css" />
<link rel="stylesheet" href="resources/assets/css/tiny-slider.css" />
<link rel="stylesheet" href="resources/assets/css/glightbox.min.css" />
<link rel="stylesheet" href="resources/assets/css/main.css" />
</head>

<body>

	<!-- Start Header Area -->
	<header class="header navbar-area">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-12">
					<div class="nav-inner">
						<nav class="navbar navbar-expand-lg">
							<a class="navbar-brand" href="index.html"> <img
								src="assets/images/logo/logo.svg" alt="Logo">
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


	<!-- ========================= JS here ========================= -->
	<script src="resources/assets/js/bootstrap.min.js"></script>
	<script src="resources/assets/js/wow.min.js"></script>
	<script src="resources/assets/js/tiny-slider.js"></script>
	<script src="resources/assets/js/glightbox.min.js"></script>
	<script src="resources/assets/js/main.js"></script>
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
            controlsText: ['<i class="lni lni-chevron-left"></i>', '<i class="lni lni-chevron-right"></i>'],
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
</body>

</html>