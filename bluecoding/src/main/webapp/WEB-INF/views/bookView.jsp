<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
      <!-- SBAdmin2 CSS START -->
      <!-- Custom fonts for this template -->
      <link href="../../resources/sbadmin2/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
      <link
         href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
         rel="stylesheet">
      <!-- Custom styles for this template -->
      <link href="../../resources/sbadmin2/css/sb-admin-2.min.css" rel="stylesheet">
      <!-- Custom styles for this page -->
      <link href="../../resources/sbadmin2/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
      <!-- SBAdmin2 CSS END -->
      <!-- ============================== 글쓰기(startbootstrap-clean-blog-gh-pages) ============================== -->
      <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
      <!-- Font Awesome icons (free version)-->
      <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
      <!-- Google fonts-->
      <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css" />
      <!-- Core theme CSS (includes Bootstrap)-->
      <link href="../resources/assets/css/styles.css" rel="stylesheet" />
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet" />
      <!-- Material Icons -->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
      <!-- CSS Files -->
      <link id="pagestyle" href="../../resources/assets/css/material-dashboard.css?v=3.0.0" rel="stylesheet" />
      <!-- marerial CSS END -->   
      <!-- ====================== 페이징 ====================== -->
      <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
      <!-- ====================== 페이징 끝 ====================== -->
      <style>
         .search-form{
         /* all: unset; */
         }
         body{
         background-image: url(../../resources/assets/images/here/noticeBG.jpg);
         }
         #tbPadd{
         padding-left: 1.5rem;
         padding-right: 1.5rem;
         }
      </style>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
   </head>
   <body>
      <!-- header -->
      <jsp:include page="/WEB-INF/views/include/header.jsp"/>
      <br><br><br><br><br><br><br><br>
      <c:choose>
         <c:when test="${empty bookVO }">
            <tr>
               <td>null입니다.</td>
            </tr>
         </c:when>
         <c:when test="${!empty bookVO }">
            <!-- =================== 글쓰기 폼 ===================== -->
            <!-- Main Content-->
            <form id="favo"  name="favo" data-sb-form-api-token="API_TOKEN" action="" method="get">
               <main class="mb-4">
                  <div class="container px-4 px-lg-5">
                     <div class="row gx-4 gx-lg-5 justify-content-center">
                        <div class="col-md-10 col-lg-8 col-xl-7" style="width: 85%;">
                           <p id="title">도서 상세 보기</p>
                           <hr class="my-4">
                           <p id="title2">&nbsp;&nbsp;${bookVO.bookTitle }</p>
                           <div id="qna">
                              &nbsp;&nbsp; 작가 이름 : ${bookVO.name } &nbsp;&nbsp;&nbsp;&nbsp; ${bookVO.bookDate } &nbsp;&nbsp;&nbsp;&nbsp;<br><br>
                              <input type="hidden" value="${bookVO.id }" name="id">
                              <hr class="my-4" style="width: 66.6%">
                              <!-- ======================= 버튼 ========================== -->
                              <c:if test="${login.admin eq 'A' || login.admin eq 'C'}">
                                 <div class="button header-button">
                                    <a href="../view/add?bookNO=${bookVO.bookNO }" class="btn">회차 글쓰기</a>
                                 </div>
                                 <div class="button header-button">
                                    <a href="../update?bookNO=${bookVO.bookNO }" class="btn">수정</a>
                                 </div>
                                 <div class="button header-button">
                                    <a onClick="funok2()" class="btn">삭제</a>
                                 </div>
                              </c:if>
                              <!-- [로그인시] -->
                              <c:if test="${!empty login.id && login.id ne '' }">
                                 <div class="button header-button">
                                    <input type="button" onClick="funFavo()" class="btn" value="찜하기" style="background-color: #e3970e">
                                 </div>
                              </c:if>
                              <!-- [비 로그인시]] -->
                              <c:if test="${empty login.id || login.id  eq '' }">
                                 <div class="button header-button">
                                    <a data-bs-toggle="modal"  data-bs-target="#login" class="btn" style="background-color: #e3970e;">찜하기</a>
                                 </div>
                              </c:if>
                              <div class="button header-button">
                                 <a href="" class="btn" style="background-color: #1dacf1">작품 리뷰(개수)</a>
                              </div>
                              <br><br>
                              <div class="form-floating" id="formMag">
                                 <textarea class="form-control" id="message" name="intro" style="height: 10rem; width: 45%" data-sb-validations="required" disabled></textarea>
                                 <label for="message">${bookVO.intro}</label>
                                 <div class="invalid-feedback" data-sb-feedback="message:required">줄거리을 입력하세요.</div>
                                 <br>
                                 <div class="button header-button">
                                    <a href="../view/page?pageNO=${pageVO[0].pageNO }" class="btn" style="background-color: #30e087">첫회보기</a>
                                 </div>
                              </div>
                              <br><br>
                              <!-- ======================= 버튼 끝 ========================== -->                  
                           </div>
                           <br><br>
                           <!-- * * * * * * * * * * * * * * *-->
                           <!-- * * SB Forms Contact Form * *-->
                           <!-- * * * * * * * * * * * * * * *-->
                           <!-- This form is pre-integrated with SB Forms.-->
                           <!-- To make this form functional, sign up at-->
                           <!-- https://startbootstrap.com/solution/contact-forms-->
                           <!-- to get an API token!-->
                           <div class="container-fluid" style="height:auto; width:auto; padding: 1px;">
                              <hr class="my-4" style="width: 100%;">
                              <div class="row">
                                 <div class="col-12">
                                    <div class="card my-4">
                                       <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                                          <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                                             <h6 class="text-white text-capitalize ps-3">작품 회차</h6>
                                          </div>
                                       </div>
                                       <c:forEach var="page"  items="${pageVO }">
                                          <div id="tbPadd" class="card-body px-0 pb-2">
                                             <div class="table-responsive p-0">
                                                <table class="table align-items-center mb-0">
                                                   <tbody>
                                                      <tr>
                                                         <td>
                                                            <div class="d-flex px-2 py-1">
                                                               <div class="d-flex flex-column justify-content-center">
                                                                  <p class="text-xs text-secondary mb-0" style="font-size: 15px;"><a href="../view/page?pageNO=${page.pageNO }">${page.series }화, ${page.pageTitle }</a><br>${page.pageDate }</p>
                                                                  <input type="hidden" name="bookNO"  value="${bookVO.bookNO }">
                                                                  <p class="text-xs text-secondary mb-0">댓글(개수)</p>
                                                               </div>
                                                            </div>
                                                         </td>
                                                         <!-- ======================= 버튼 ========================== -->
                                                         <td>
                                                            <div align="right"  style="width: 100%;">
                                                               <div class="button header-button">
                                                                  <a href="" class="btn" style="background-color: #30e087">미리보기(유료)</a>
                                                               </div>
                                                               <c:if test="${login.admin eq 'A' || login.admin eq 'C'}">
                                                                  <div class="button header-button">
                                                                     <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">수정</a>
                                                                  </div>
                                                                  <div class="button header-button">
                                                                     <a onClick="funok2()" class="btn" style="background-color: #30d8e0;">삭제</a>
                                                                  </div>
                                                               </c:if>
                                                            </div>
                                                            <!-- ======================= 버튼 끝 ========================== -->
                                                         </td>
                                                      </tr>
                                                   </tbody>
                                                </table>
                                             </div>
                                          </div>
                                       </c:forEach>
                                    </div>
                                 </div>
                              </div>
                              <!-- Submit success message-->
                              <!---->
                              <!-- This is what your users will see when the form-->
                              <!-- has successfully submitted-->
                              <div class="d-none" id="submitSuccessMessage">
                                 <div class="text-center mb-3">
                                    <div class="fw-bolder">Form submission successful!</div>
                                    To activate this form, sign up at
                                    <br />
                                    <a href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
                                 </div>
                              </div>
                              <!-- Submit error message-->
                              <!---->
                              <!-- This is what your users will see when there is-->
                              <!-- an error submitting the form-->
                              <div class="d-none" id="submitErrorMessage">
                                 <div class="text-center text-danger mb-3">Error sending message!</div>
                              </div>
                           </div>
                           <br>
                           <!-- ====================== 페이징 ====================== -->
                           <div class="w3-center">
                              <div class="w3-bar">
                                 <a href="#" class="w3-button">«</a>
                                 <a href="#" class="w3-button w3-blue">1</a>
                                 <a href="#" class="w3-button">2</a>
                                 <a href="#" class="w3-button">3</a>
                                 <a href="#" class="w3-button">4</a>
                                 <a href="#" class="w3-button">5</a>
                                 <a href="#" class="w3-button">»</a>
                              </div>
                           </div>
                           <!-- ====================== 페이징 끝 ====================== -->
                           <br><br><br><br><br>
                           <!-- ====================== 리뷰(댓글) ====================== -->     
                           <div class="container-fluid py-4" style="height:auto; width:100%; padding: 1px;">
                              <hr class="my-4" style="width: 100%;">
                              <div class="row">
                                 <div class="col-12">
                                    <div class="card my-4">
                                       <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                                          <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                                             <h6 class="text-white text-capitalize ps-3">리뷰</h6>
                                          </div>
                                       </div>
                                       <c:forEach var="review" items="${reviewVO }">
                                          <div id="tbPadd" class="card-body px-0 pb-2">
                                             <div class="table-responsive p-0">
                                                <table class="table align-items-center mb-0">
                                                   <tbody>
                                                      <tr>
                                                         <td>
                                                            <div class="d-flex px-2 py-1">
                                                               <div class="d-flex flex-column justify-content-center">
                                                                  <p class="text-xs text-secondary mb-0" style="font-size: 15px;">작성자명 : ${review.nick }(${review.id }),&nbsp;&nbsp;&nbsp;&nbsp;작성일 : ${review.revDate }</p>
                                                                  <p class="text-xs text-secondary mb-0">${review.revText }</p>
                                                               </div>
                                                            </div>
                                                         </td>
                                                         <!-- ======================= 버튼 ========================== -->
                                                         <td>
                                                            <div align="right"  style="width: 100%;">
                                                               <!-- [로그인시] -->
                                                               <c:if test="${!empty login.id && login.id ne '' }">
                                                                  <div class="button header-button">
                                                                     <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">답글 쓰기</a>
                                                                  </div>
                                                               </c:if>
                                                               <!-- [비 로그인시]] -->
                                                               <c:if test="${empty login.id || login.id  eq '' }">
                                                                  <div class="button header-button">
                                                                     <a data-bs-toggle="modal"  data-bs-target="#login" class="btn" style="background-color: #30d8e0;">답글 쓰기</a>
                                                                  </div>
                                                               </c:if>
                                                               <c:if test="${login.admin eq 'A' || login.admin eq 'C'}">
                                                                  <div class="button header-button">
                                                                     <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">수정</a>
                                                                  </div>
                                                                  <div class="button header-button">
                                                                     <a onClick="funok2()" class="btn" style="background-color: #30d8e0;">삭제</a>
                                                                  </div>
                                                               </c:if>
                                                            </div>
                                                            <!-- ======================= 버튼 끝 ========================== -->
                                                         </td>
                                                      </tr>
                                                      <!-- ========================== 답글 ========================== -->
                                                      <tr>
                                                         <td>
                                                            <div class="d-flex px-2 py-1">
                                                               <div class="d-flex flex-column justify-content-center">
                                                                  <input type="hidden" name="revNO"  value="${review.revNO }">
                                                                  <input type="hidden" name="revParentNO"  value="${review.revParentNO }">
                                                                  <p class="text-xs text-secondary mb-0" style="font-size: 15px;">&nbsp;&nbsp;&nbsp;&nbsp; ⤷ 작성자명 : ${review.nick }(${review.id }),&nbsp;&nbsp;&nbsp;&nbsp;${review.revDate }</p>
                                                                  <p class="text-xs text-secondary mb-0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${review.revText }</p>
                                                               </div>
                                                            </div>
                                                            <!-- ======================= 버튼 ========================== -->
                                                         <td>
                                                            <div align="right"  style="width: 100%;">
                                                               <!-- [로그인시] -->
                                                               <c:if test="${!empty login.id && login.id ne '' }">
                                                                  <div class="button header-button">
                                                                     <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">답글 쓰기</a>
                                                                  </div>
                                                               </c:if>
                                                               <!-- [비 로그인시]] -->
                                                               <c:if test="${empty login.id || login.id  eq '' }">
                                                                  <div class="button header-button">
                                                                     <a data-bs-toggle="modal"  data-bs-target="#login" class="btn" style="background-color: #30d8e0;">답글 쓰기</a>
                                                                  </div>
                                                               </c:if>
                                                               <c:if test="${login.admin eq 'A' || login.admin eq 'C'}">
                                                                  <div class="button header-button">
                                                                     <a href="javascript:void(0)" class="btn" style="background-color: #30d8e0;">수정</a>
                                                                  </div>
                                                                  <div class="button header-button">
                                                                     <a onClick="funok2()" class="btn" style="background-color: #30d8e0;">삭제</a>
                                                                  </div>
                                                               </c:if>
                                                            </div>
                                                            <!-- ======================= 버튼 끝 ========================== -->
                                                         </td>
                                                      </tr>
                                                      <!-- ========================== 답글 끝 ========================== -->
                                                   </tbody>
                                                </table>
                                             </div>
                                          </div>
                                       </c:forEach>
                                    </div>
                                 </div>
                              </div>
                              <br>
                              <div class="form-floating" id="formMag">
                                 <textarea name="revText" class="form-control" id="message" style="height: 15rem; width: 66.6%;" data-sb-validations="required"></textarea>
                                 <div class="invalid-feedback" data-sb-feedback="message:required">내용을 입력하세요.</div>
                                 <br><br>
                                 <label for="message">리뷰 쓰기</label>
                                 <input type="hidden" name="bookNO"  value="${bookVO.bookNO }">
                              </div>
                              <!-- Submit success message-->
                              <!---->
                              <!-- This is what your users will see when the form-->
                              <!-- has successfully submitted-->
                              <div class="d-none" id="submitSuccessMessage">
                                 <div class="text-center mb-3">
                                    <div class="fw-bolder">Form submission successful!</div>
                                    To activate this form, sign up at
                                    <br />
                                    <a href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
                                 </div>
                              </div>
                              <!-- Submit error message-->
                              <!---->
                              <!-- This is what your users will see when there is-->
                              <!-- an error submitting the form-->
                              <div class="d-none" id="submitErrorMessage">
                                 <div class="text-center text-danger mb-3">Error sending message!</div>
                              </div>
                              <!-- ======================= 버튼 ========================== -->
                              <div align="center">
                                 <!-- [로그인시] -->
                                 <c:if test="${!empty login.id && login.id ne '' }">
                                    <div class="button header-button">
                                       <a onClick="funok()"  id="submitButton"  class="btn">리뷰 등록</a>
                                    </div>
                                 </c:if>
                                 <!-- [비 로그인시]] -->
                                 <c:if test="${empty login.id || login.id  eq '' }">
                                    <div class="button header-button">
                                       <a data-bs-toggle="modal"  data-bs-target="#login" class="btn">리뷰 등록</a>
                                    </div>
                                 </c:if>
                                 <div class="button header-button">
                                    <a onClick="funbtn()" class="btn">돌아가기</a>
                                 </div>
                              </div>
                              <!-- ======================= 버튼 끝 ========================== -->
                              <br><br>
                              <!-- ====================== 페이징 ====================== -->
                              <div class="w3-center">
                                 <div class="w3-bar">
                                    <a href="#" class="w3-button">«</a>
                                    <a href="#" class="w3-button w3-blue">1</a>
                                    <a href="#" class="w3-button">2</a>
                                    <a href="#" class="w3-button">3</a>
                                    <a href="#" class="w3-button">4</a>
                                    <a href="#" class="w3-button">5</a>
                                    <a href="#" class="w3-button">»</a>
                                 </div>
                              </div>
                              <!-- ====================== 페이징 끝 ====================== -->                     
                           </div>
                           <!-- ====================== 리뷰(댓글) 끝====================== -->   
                           <!-- Submit success message-->
                           <!---->
                           <!-- This is what your users will see when the form-->
                           <!-- has successfully submitted-->
                           <div class="d-none" id="submitSuccessMessage">
                              <div class="text-center mb-3">
                                 <div class="fw-bolder">Form submission successful!</div>
                                 To activate this form, sign up at
                                 <br />
                                 <a href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
                              </div>
                           </div>
                           <!-- Submit error message-->
                           <!---->
                           <!-- This is what your users will see when there is-->
                           <!-- an error submitting the form-->
                           <div class="d-none" id="submitErrorMessage">
                              <div class="text-center text-danger mb-3">Error sending message!</div>
                           </div>
                        </div>
                     </div>
                  </div>
               </main>
            </form>
         </c:when>
      </c:choose>
      <!-- ==================== footer ====================== -->      
      <!-- footer -->
      <jsp:include page="/WEB-INF/views/include/footer.jsp"/>
      <!-- Bootstrap core JS-->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
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
      <script>
         function funbtn() {
           if (confirm("이전 페이지로 돌아가시겠습니까??")) {
             javascript:history.back();
           } else {
           	return;
           }
         }
      </script>
      <script>
         function funok() {
           if (alert("정상적으로 등록되었습니다.") == true) {
            
           } else {
            alert("등록에 실패하였습니다.")
           	   return;
           }
         }
      </script>
      <script>
         function funok2() {
           if (confirm("글을 정말 삭제하시겠습니까??")) {
            alert("정상적으로 삭제되었습니다.")
           } else {
           	return;
           }
         }
      </script>
      <script>
         function funFavo() {
         	var favo = confirm("상품을 찜하시겠습니까??");
         	if (favo == true) {
         		document.favo.action = "../view/favo/add";
         		document.favo.method="POST";
         		document.favo.submit();
         	}
         }
      </script>
   </body>
</html>