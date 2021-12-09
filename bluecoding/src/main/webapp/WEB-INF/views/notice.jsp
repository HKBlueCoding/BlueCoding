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