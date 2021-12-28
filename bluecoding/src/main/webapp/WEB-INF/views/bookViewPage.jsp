<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8" />
      <meta http-equiv="x-ua-compatible" content="ie=edge" />
      <title>회차 글보기</title>
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
      <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
      <!-- Google fonts-->
      <link href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css" />
      <!-- Core theme CSS (includes Bootstrap)-->
      <link href="../resources/assets/css/styles.css" rel="stylesheet" />
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
         body{
         	background-image: url(../../resources/assets/images/here/noticeBG.jpg);
         }
         
         #tbPadd{
         	padding-left: 1.5rem;
         	padding-right: 1.5rem;
         }
         
         .mod {
         	display: none;
         }
         
         .replyRe {
         	display: none;
         }
      </style>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
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
      <script src="https://code.jquery.com/jquery-3.6.0.min.js" 
         integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
         crossorigin="anonymous"></script>
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
      <script type="text/javascript">
         <c:if test="${pageVO.pageDelete eq 'Y' }">
         alert('삭제된 도서입니다.');
         javascript: history.back();
         </c:if>   
      </script>  
   </head>
   <body>
      <!-- header -->
      <jsp:include page="/WEB-INF/views/include/header.jsp"/>
      <br><br><br><br><br><br><br><br>
      <!-- =================== 글쓰기 폼 ===================== -->
      <!-- Main Content-->
      <main class="mb-4" style="background-color: #ccc; padding: 15px;">
         <div class="container px-4 px-lg-5">
            <div class="form-control" style="padding-top: 50px; height: auto;">
               <div class="row gx-4 gx-lg-5 justify-content-center">
                  <div class="col-md-10 col-lg-8 col-xl-7" style="width: 80%;">
                     <form id="contactForm" data-sb-form-api-token="API_TOKEN">
                        <p id="title">회차 보기${pageVO.pageDelete }</p>
                        <hr class="my-4">
                        <input type="hidden" name="pageNO" value="${pageVO.pageNO }" id="pageNO">
                        <input type="hidden" value="${login.id }" name="id" id="id">
                        <input type="hidden" value="${login.nick }" name="nick" id="nick">
                        <p id="title2">&nbsp;&nbsp;${pageVO.pageTitle }</p>
                        <div id="qna">
                           <c:if test="${login.admin eq 'A' || login.admin eq 'C'}">
                              <div class="button header-button">
                                 <a href="../view/update?pageNO=${pageVO.pageNO }" class="btn" style="background-color: #30d8e0;">수정</a>
                              </div>
                              <div class="button header-button">
                                 <a onClick="pageDelete('${pageVO.pageNO}')" class="btn">삭제</a>
                              </div>
                           </c:if>
                           <br><br>
                           <div class="my-5">
                              <!-- * * * * * * * * * * * * * * *-->
                              <!-- * * SB Forms Contact Form * *-->
                              <!-- * * * * * * * * * * * * * * *-->
                              <!-- This form is pre-integrated with SB Forms.-->
                              <!-- To make this form functional, sign up at-->
                              <!-- https://startbootstrap.com/solution/contact-forms-->
                              <!-- to get an API token!-->
                           </div>
                           <div class="form-floating" style="width: 66.6%;">
                              <input class="form-control" name="pageTitle" id="name" type="text" style="padding-top: 9px;" value="${pageVO.pageTitle }" data-sb-validations="required"  readonly/>
                           </div>
                           <br>
                           <div class="form-floating" id="formMag" style="width: 66.6%;">
                              <textarea class="form-control" name="pageText" id="message" style="height: 35rem" data-sb-validations="required" readonly>${pageVO.pageText }</textarea>
                              <br><br>
                              <div id="Writer">
                                 &nbsp;작가의 말
                              </div>
                              <textarea class="form-control" name="comment" style="height: 15rem" readonly>${pageVO.comment }</textarea>
                           </div>
                           <br />
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
                           <div class="button header-button">
                              <a href="../view/page?pageNO=${pageVO.pageNO }&bookNO=${pageVO.bookNO}&direction=minus" class="btn">이전 화</a>
                           </div>
                           <div class="button header-button">
                              <a href="../view/page?pageNO=${pageVO.pageNO }&bookNO=${pageVO.bookNO}&direction=plus" class="btn">다음 화</a>
                           </div>
                           <!-- ======================= 버튼 끝 ========================== -->
                        </div>
                     </form>
                  </div>
               </div>
            </div>
         </div>
      </main>
      <!-- =================== 글쓰기 폼 끝===================== -->
      <!-- =========================== 댓글 =========================== -->
      <div class="container-fluid py-4" style="height:auto; width:53%;">
         <hr class="my-4" style="width: 100%;">
         <div class="row">
            <div class="col-12">
               <div class="card my-4">
                  <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
                     <div class="bg-gradient-primary shadow-primary border-radius-lg pt-4 pb-3">
                        <h6 class="text-white text-capitalize ps-3">댓글</h6>
                     </div>
                  </div>
                  <c:forEach var="pageReply"  items="${pageReplyVO }"  varStatus="replyCnt">
                     <div id="tbPadd" class="card-body px-0 pb-2">
                        <div class="table-responsive p-0">
                           <table class="table align-items-center mb-0">
                              <tbody>
                                 <tr>
                                    <td>
                                       <c:if test='${pageReply.level > 1 }'>
                                          <div class="d-flex px-2 py-1">
                                             <div class="d-flex flex-column justify-content-center">
                                                <p class="text-xs text-secondary mb-0" style="font-size: 15px;">
                                                   <c:forEach begin="1" end="${pageReply.level }" step="1">
                                                      &nbsp;&nbsp;&nbsp;&nbsp;
                                                   </c:forEach>
                                                   ⤷작성자명 : ${pageReply.nick }(${pageReply.id }),&nbsp;&nbsp;&nbsp;&nbsp;${pageReply.pageReDate }
                                                </p>
                                                <p class="text-xs text-secondary mb-0">
                                                   <c:forEach begin="1" end="${pageReply.level }" step="1">
                                                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                   </c:forEach>
                                                   &nbsp;&nbsp;${pageReply.pageReText }
                                                </p>
                                             </div>
                                          </div>
                                       </c:if>
                                       <c:if test="${pageReply.level == 1 }">
                                          <div class="d-flex px-2 py-1">
                                             <div class="d-flex flex-column justify-content-center">
                                                <p class="text-xs text-secondary mb-0" style="font-size: 15px;">작성자명 : ${pageReply.nick }(${pageReply.id }),&nbsp;&nbsp;&nbsp;&nbsp;${pageReply.pageReDate }</p>
                                                <p class="text-xs text-secondary mb-0">${pageReply.pageReText }</p>
                                             </div>
                                          </div>
                                       </c:if>
                                    </td>
                                    <!-- ======================= 버튼 ========================== -->
                                    <td>
                                       <div align="right"  style="width: 100%;">
                                          <!-- [로그인시] -->
                                          <c:if test="${!empty login.id && login.id ne '' }">
                                             <div class="button header-button">
                                                <button onClick="replyReClick('${replyCnt.count}')"  id="modify" class="btn" style="background-color: #30d8e0;">답글</button>
                                             </div>
                                          </c:if>
                                          <!-- [비 로그인시]] -->
                                          <c:if test="${empty login.id || login.id  eq '' }">
                                             <div class="button header-button">
                                                <a data-bs-toggle="modal"  data-bs-target="#login" class="btn" style="background-color: #30d8e0;">답글</a>
                                             </div>
                                          </c:if>
                                          <c:if test="${login.admin eq 'A' || login.admin eq 'C'}">
                                             <div class="button header-button">
                                                <button onClick="replyClick('${replyCnt.count}')"  id="modify" class="btn" style="background-color: #30d8e0;">수정</button>
                                             </div>
                                             <div class="button header-button">
                                                <a onClick="funok2()" class="btn" style="background-color: #30d8e0;">삭제</a>
                                             </div>
                                          </c:if>
                                       </div>
                                       <!-- ======================= 버튼 끝 ========================== -->
                                    </td>
                                 </tr>
                                 <!-- =========================== 댓글 끝 =========================== -->
                                 <!-- =========================== 댓글 수정 =========================== -->
                                 <tr class="mod" >
                                    <c:if test='${pageReply.level == 1 }'>
                                       <td>
                                          <div class="form-floating" id="formMag" style="width: 437%;">
                                             <textarea name="pageReText" class="form-control" id="ReText${replyCnt.count }" style="height: 7rem;" data-sb-validations="required">${pageReply.pageReText }</textarea>
                                             <br>
                                             <label for="message">댓글 수정</label>
                                             <input type="hidden" value="${pageReply.pageReNO }" id="pageReNO${replyCnt.count }">
                                             <input type="hidden" value="${pageVO.pageNO }" name="pageNO" id="pageNO">
                                             <input type="hidden" value="${login.id }" name="id" id="id">
                                             <input type="hidden" value="${login.nick }" name="nick" id="nick">
                                             <!-- ======================= 버튼 ========================== -->
                                             <div align="center">
                                                <!-- [로그인시] -->
                                                <c:if test="${!empty login.id && login.id ne '' }">
                                                   <div class="button header-button">
                                                      <a id="modBtn" onClick="replyDone('${pageReply.pageReNO}','${replyCnt.count }')" class="btn">확인</a>
                                                   </div>
                                                </c:if>
                                                <!-- [비 로그인시]] -->
                                                <c:if test="${empty login.id || login.id  eq '' }">
                                                   <div class="button header-button">
                                                      <a data-bs-toggle="modal"  data-bs-target="#login" class="btn">확인</a>
                                                   </div>
                                                </c:if>
                                             </div>
                                          </div>
                                       </td>
                                    </c:if>
                                    <c:if test='${pageReply.level > 1 }'>
                                       <td>
                                          <div class="form-floating" id="formMag" style="width: 437%;">
                                             <textarea name="pageReText" class="form-control" id="ReText${replyCnt.count }" style="height: 7rem;" data-sb-validations="required">${pageReply.pageReText }</textarea>
                                             <br>
                                             <label for="message">답글 수정</label>
                                             <input type="hidden" value="${pageReply.pageReNO }" id="pageReNO${replyCnt.count }" name="pageReNO">
                                             <input type="hidden" value="${login.id }" name="id" id="id">
                                             <input type="hidden" value="${login.nick }" name="nick" id="nick">
                                             <!-- ======================= 버튼 ========================== -->
                                             <div align="center">
                                                <!-- [로그인시] -->
                                                <c:if test="${!empty login.id && login.id ne '' }">
                                                   <div class="button header-button">
                                                      <a id="modBtn" onClick="replyReDone('${pageReply.pageParentNO}','${replyCnt.count }')" class="btn">확인</a>
                                                   </div>
                                                </c:if>
                                                <!-- [비 로그인시]] -->
                                                <c:if test="${empty login.id || login.id  eq '' }">
                                                   <div class="button header-button">
                                                      <a data-bs-toggle="modal"  data-bs-target="#login" class="btn">확인</a>
                                                   </div>
                                                </c:if>
                                             </div>
                                          </div>
                                       </td>
                                    </c:if>
                                 </tr>
                                 <!-- =========================== 댓글 수정 끝 =========================== -->
                                 <!-- ========================== 답글 ========================== -->
                                 <tr class="replyRe" >
                                    <td>
                                       <div class="form-floating" id="formMag" style="width: 437%;">
                                          <textarea name="pageReText" class="form-control" id="RepReText${replyCnt.count }" style="height: 7rem;" data-sb-validations="required"></textarea>
                                          <br>
                                          <label for="message">답글 쓰기</label>
                                          <input type="hidden" value="${login.id }" name="id" id="id">
                                          <input type="hidden" value="${login.nick }" name="nick" id="nick">
                                          <!-- ======================= 버튼 ========================== -->
                                          <div align="center">
                                             <!-- [로그인시] -->
                                             <c:if test="${!empty login.id && login.id ne '' }">
                                                <div class="button header-button">
                                                   <a id="repReBtn" onClick="replyInsert('${pageReply.pageReNO}','${replyCnt.count }')" class="btn">확인</a>
                                                </div>
                                             </c:if>
                                             <!-- [비 로그인시]] -->
                                             <c:if test="${empty login.id || login.id  eq '' }">
                                                <div class="button header-button">
                                                   <a data-bs-toggle="modal"  data-bs-target="#login" class="btn">확인</a>
                                                </div>
                                             </c:if>
                                          </div>
                                       </div>
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
         <form id="contactForm"  data-sb-form-api-token="API_TOKEN">
            <br>
            <div class="form-floating" id="formMag" style="width: 100%">
               <textarea name="pageReText" id="pageReText" class="form-control" id="message" style="height: 15rem"></textarea>
               <br><br>
               <label for="message">댓글 쓰기</label>
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
                     <a id="repBtn" onClick="" class="btn">댓글 등록</a>
                  </div>
               </c:if>
               <!-- [비 로그인시]] -->
               <c:if test="${empty login.id || login.id  eq '' }">
                  <div class="button header-button">
                     <a data-bs-toggle="modal"  data-bs-target="#login" class="btn">댓글 등록</a>
                  </div>
               </c:if>
               <div class="button header-button">
                  <a onClick="funbtn()" class="btn">돌아가기</a>
               </div>
            </div>
         </form>
         <!-- ======================= 버튼 끝 ========================== -->
      </div>
      <!-- ====================== 리뷰(댓글) 끝====================== -->        
      <!-- ==================== footer ====================== -->      
      <!-- footer -->
      <jsp:include page="/WEB-INF/views/include/footer.jsp"/>
      <!-- Bootstrap core JS-->
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
         function funok2() {
           if (confirm("글을 정말 삭제하시겠습니까??")) {
            alert("정상적으로 삭제되었습니다.")
           } else {
           	return;
           }
         }
      </script>
      <script>
         function funok3() {
           if (alert("정상적으로 등록되었습니다.") == true) {
            
           } else {
            alert("등록에 실패하였습니다.")
           	   return;
           }
         }
      </script>
      <!-- ================================ 댓글 구현 ====================================== -->            
      <script> 
         $(document).ready(function() {
             $('#repBtn').click(function() {
            	 
         		if ($.trim($("#pageReText").val()) == '') {
         		alert("내용을 입력해주세요.");
         		return false;
         	}
         
         	if ($.trim($("#pageReText").val().length) > 300) {
         		alert("댓글은 300글자를 초과할 수 없습니다.");
         		return false;
         	}
            	 
                 $.ajax({
                         type: 'POST',
                         url: '../view/page/pageReply/add',
                         dataType: "json",
                         data: {"pageReText": $('#pageReText').val(), "id":$('#id').val(), "pageNO":$("#pageNO").val(),  "nick":$("#nick").val()},
                         success: function(data) {
                            // data.server에서 보낸 map text
                             alert('댓글이 등록되었습니다.');
                             $('#pageReText').val("");
                             location.reload();
                         }, 
                         error: function(request,status,error) {
                            alert('에러!! : ' + request.responseText + ":"+error);
                         }
                  }); //end ajax 
             }); //end on 
         }); 
      </script>
      <!-- ================================ 댓글 구현 끝====================================== -->      
      <!-- ================================ 댓글 수정 ====================================== -->
      <script>
         function replyClick(replyCnt){
          var modDisplay = document.getElementsByClassName("mod")[(replyCnt-1)].style.display;
          if( modDisplay == "none"){
          	document.getElementsByClassName("mod")[(replyCnt-1)].style.display = "block";
          }else{
         	 document.getElementsByClassName("mod")[(replyCnt-1)].style.display = "none";
          } 
          console.log('글번호'+mod);
          
         }
         
         function replyDone(pageReNO, replyCnt){
          
         	if ($.trim($('#ReText' + replyCnt).val()) == '') {
         		alert("내용을 입력해주세요.");
         		return false;
         	}
         
         	if ($.trim($('#ReText' + replyCnt).val().length) > 300) {
         		alert("댓글은 300글자를 초과할 수 없습니다.");
         		return false;
         	}
          
             $.ajax({
                 type: 'POST',
                 url: '../view/page/pageReply/update',
                 dataType: "json",
                 data: {"pageReText": $('#ReText'+replyCnt).val(), "id":$('#id').val(), "pageNO":$("#pageNO").val(),  "nick":$("#nick").val(), "pageReNO": pageReNO},
                 success: function(data) {
                    // data.server에서 보낸 map text
                     alert('수정이 완료되었습니다.');
                     $('#ReText').val("");
                     location.reload();
                 }, 
                 error: function(request,status,error) {
                    alert('에러!! : ' + request.responseText + ":"+error);
                 }
          	}); //end ajax
         }
      </script>
      <!-- ================================ 댓글 수정 끝====================================== -->      
      <!-- ================================ 답글 구현 ====================================== -->
      <script>
         function replyReClick(replyCnt){
          var reDisplay = document.getElementsByClassName("replyRe")[(replyCnt-1)].style.display;
          if(reDisplay == "none"){
          	document.getElementsByClassName("replyRe")[(replyCnt-1)].style.display = "block";
          } else{
         	  document.getElementsByClassName("replyRe")[(replyCnt-1)].style.display = "none";
          }
          console.log('글번호'+replyRe);
          
         }
         
         function replyInsert(pageParentNO, replyCnt){
          
         	if ($.trim($('#RepReText' + replyCnt).val()) == '') {
         		alert("내용을 입력해주세요.");
         		return false;
         	}
         
         	if ($.trim($('#RepReText' + replyCnt).val().length) > 300) {
         		alert("답글은 300글자를 초과할 수 없습니다.");
         		return false;
         	}
          
           	$.ajax({
               	type: 'POST',
               	url: '../view/page/pageReplyRe/add',
               	dataType: "json",
               	data: {"pageReText": $('#RepReText'+replyCnt).val(), "id":$('#id').val(), "pageNO":$("#pageNO").val(),  "nick":$("#nick").val(), "pageParentNO":pageParentNO, "pageReNO":$("#pageReNO").val()},
               	success: function(data) {
                  	// data.server에서 보낸 map text
                  	if(data.ret == 0){
                  		alert('답글 등록에 실패하였습니다.');
                  	}else{
                       	alert('답글이 등록되었습니다.');
                       	$('#RepReText').val("");
                      	 location.reload();                  		
                  	}
                 }, 
                 error: function(request,status,error) {
                     alert('에러!! : ' + request.responseText + ":"+error);
                 }
           }); //end ajax         	 
         }
      </script>
      <!-- ================================ 답글 구현 끝 ====================================== -->      
      <!-- ================================ 답글 수정 ====================================== -->
      <script>
         function replyClick(replyCnt){
          var modDisplay = document.getElementsByClassName("mod")[(replyCnt-1)].style.display;
          if( modDisplay == "none"){
          	document.getElementsByClassName("mod")[(replyCnt-1)].style.display = "block";
          }else{
         	 document.getElementsByClassName("mod")[(replyCnt-1)].style.display = "none";
          } 
          console.log('글번호'+mod);
          
         }
         
         function replyReDone(pageParentNO, replyCnt){
          
         	if ($.trim($('#ReText' + replyCnt).val()) == '') {
         		alert("내용을 입력해주세요.");
         		return false;
         	}
         
         	if ($.trim($('#ReText' + replyCnt).val().length) > 300) {
         		alert("답글은 300글자를 초과할 수 없습니다.");
         		return false;
         	}
          
             $.ajax({
                 type: 'POST',
                 url: '../view/page/pageReply/update',
                 dataType: "json",
                 data: {"pageReText": $('#ReText'+replyCnt).val(), "id":$('#id').val(), "pageNO": $("#pageNO").val(),  "nick":$("#nick").val(), "pageReNO":$("#pageReNO"+replyCnt).val(), "pageParentNO": pageParentNO},
                 success: function(data) {
                    // data.server에서 보낸 map text
                     alert('수정이 완료되었습니다.');
                     $('#ReText').val("");
                     location.reload();
                 }, 
                 error: function(request,status,error) {
                    alert('에러!! : ' + request.responseText + ":"+error);
                 }
          	}); //end ajax
         }
      </script>
      <!-- ================================ 답글 수정 끝 ====================================== -->
      <script src="../resources/bluecoding/bookView.js"></script>
      <script src="../../resources/bluecoding/header.js"></script>
   </body>
</html>