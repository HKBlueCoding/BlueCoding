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
</head>
<body>
      <jsp:include page="/WEB-INF/views/include/header.jsp"/>
      <section class="hero-area overlay">
         <div class="container">
            <div class="row">
               <div class="col-lg-10 offset-lg-1 col-md-12 col-12">
                  <div class="hero-text text-center">
                     <!-- Start Hero Text -->
                     <div class="section-heading">
                        <h2 class="wow fadeInUp" data-wow-delay=".3s" style="visibility: visible; animation-delay: 0.3s; animation-name: fadeInUp;">Welcome to ClassiGrids</h2>
                        <p class="wow fadeInUp" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInUp;">Buy And Sell Everything From Used Cars To Mobile Phones And <br>Computers,
                           Or Search For Property, Jobs And More.
                        </p>
                     </div>
                     <!-- End Search Form -->
                     <!-- Start Search Form -->
                     <div class="search-form wow fadeInUp" data-wow-delay=".7s" style="visibility: visible; animation-delay: 0.7s; animation-name: fadeInUp;">
                        <div class="row">
                           <div class="col-lg-4 col-md-4 col-12 p-0">
                              <div class="search-input">
                                 <label for="keyword"><i class="lni lni-search-alt theme-color"></i></label>
                                 <input type="text" name="keyword" id="keyword" placeholder="Product keyword">
                              </div>
                           </div>
                           <div class="col-lg-3 col-md-3 col-12 p-0">
                              <div class="search-input">
                                 <label for="category"><i class="lni lni-grid-alt theme-color"></i></label>
                                 <select name="category" id="category">
                                    <option value="none" selected="" disabled="">Categories</option>
                                    <option value="none">Vehicle</option>
                                    <option value="none">Electronics</option>
                                    <option value="none">Mobiles</option>
                                    <option value="none">Furniture</option>
                                    <option value="none">Fashion</option>
                                    <option value="none">Jobs</option>
                                    <option value="none">Real Estate</option>
                                    <option value="none">Animals</option>
                                    <option value="none">Education</option>
                                    <option value="none">Matrimony</option>
                                 </select>
                              </div>
                           </div>
                           <div class="col-lg-3 col-md-3 col-12 p-0">
                              <div class="search-input">
                                 <label for="location"><i class="lni lni-map-marker theme-color"></i></label>
                                 <select name="location" id="location">
                                    <option value="none" selected="" disabled="">Locations</option>
                                    <option value="none">New York</option>
                                    <option value="none">California</option>
                                    <option value="none">Washington</option>
                                    <option value="none">Birmingham</option>
                                    <option value="none">Chicago</option>
                                    <option value="none">Phoenix</option>
                                 </select>
                              </div>
                           </div>
                           <div class="col-lg-2 col-md-2 col-12 p-0">
                              <div class="search-btn button">
                                 <button class="btn"><i class="lni lni-search-alt"></i> Search</button>
                              </div>
                           </div>
                        </div>
                     </div>
                     <!-- End Search Form -->
                  </div>
               </div>
            </div>
         </div>
      </section>
      <jsp:include page="/WEB-INF/views/include/footer.jsp"/>
    
    	<!-- ========================= JS here ========================= -->
	<script src="../resources/assets/js/bootstrap.min.js"></script>
	<script src="../resources/assets/js/wow.min.js"></script>
	<script src="../resources/assets/js/tiny-slider.js"></script>
	<script src="../resources/assets/js/glightbox.min.js"></script>
	<script src="../resources/assets/js/main.js"></script>
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