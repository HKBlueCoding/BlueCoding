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