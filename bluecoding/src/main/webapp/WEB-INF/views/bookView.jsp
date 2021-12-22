<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8" />
      <meta http-equiv="x-ua-compatible" content="ie=edge" />
      <title>커뮤니티글 상세 보기</title>
      <meta name="description" content="" />
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <link rel="shortcut icon" type="image/x-icon" href="../assets/images/favicon.svg" />
      <!-- Place favicon.ico in the root directory -->
      <!-- 1  -->
      <!-- Web Font -->
      <link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet">
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
      <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
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
   </head>
   <body>
      <!-- header -->
      <jsp:include page="/WEB-INF/views/include/header.jsp" />
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
            <main class="mb-4">
               <div class="container px-4 px-lg-5">
                  <div class="row gx-4 gx-lg-5 justify-content-center">
                     <div class="col-md-10 col-lg-8 col-xl-7" style="width: 85%;">
                        <form id="favo" name="favo" data-sb-form-api-token="API_TOKEN">
                           <p id="title">도서 상세 보기</p>
                           <hr class="my-4">
                           <input type="hidden" name="bookNO" value="${bookVO.bookNO }" id="bookNO">
                           <input type="hidden" value="${login.id }" name="id" id="id">
                           <input type="hidden" value="${login.nick }" name="nick" id="nick">
                           <p id="title2">&nbsp;&nbsp;${bookVO.bookTitle }</p>
                           <div id="qna">
                              &nbsp;&nbsp; 작가 이름 : ${bookVO.name } &nbsp;&nbsp;&nbsp;&nbsp; ${bookVO.bookDate } &nbsp;&nbsp;&nbsp;&nbsp; <br>
                              <br>
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
                                    <a onClick="bookViewDelte('${bookVO.bookNO}')" class="btn">삭제</a>
                                 </div>
                              </c:if>
                              <!-- [글 쓴 유저만 변경가능] -->
                              <c:if test="${!empty login.id}">
                                 <div class="button header-button">
                                    <input type="button" onClick="funFavo()" class="btn" value="찜하기" style="background-color: #e3970e">
                                 </div>
                              </c:if>
                              <!-- [비 로그인시]] -->
                              <c:if test="${empty login.id || login.id  eq '' }">
                                 <div class="button header-button">
                                    <a data-bs-toggle="modal" data-bs-target="#login" class="btn" style="background-color: #e3970e;">찜하기</a>
                                 </div>
                              </c:if>
                              <div class="button header-button">
                                 <a href="" class="btn" style="background-color: #1dacf1">작품 리뷰(개수)</a>
                              </div>
                              <br>
                              <br>
                              <!-- ======================= 버튼 끝 ========================== -->
                           </div>
                           <div class="col-12">
                              <c:if test="${empty bookVO.bookImage }">
                                 <img src="../../resources/assets/images/mainPage/board1.png" width="210" height="300" class="avatar avatar-sm me-3 border-radius-lg" alt="user1" id="preview" style="float: left"> 작품 소개: <br>
                                 <br>
                                 <p style="word-break:pre-line;">${bookVO.intro}</p>
                                 <br>
                                 <br>
                              </c:if>
                              <c:if test="${!empty bookVO.bookImage }">
                                 <img src="../../download?uploadFile=${bookVO.bookImage }&inFolder=book&pk=${bookVO.bookNO}" width="160" height="250" class="avatar avatar-sm me-3 border-radius-lg" alt="user1" id="preview" style="float: left"> 작품 소개: <br>
                                 <br>
                                 <pre style="white-space: normal; pont-size: 10px;">${bookVO.intro}</pre>
                                 <br>
                                 <br>
                              </c:if>
                              <div class="button header-button">
                                 <a href="../view/page?pageNO=${pageVO[0].pageNO }" class="btn" style="background-color: #30e087">첫회보기</a>
                              </div>
                           </div>
                        </form>
                        <br><br><br><br><br><br>
                        <!-- * * * * * * * * * * * * * * * -->
                        <!-- * * SB Forms Contact Form * * -->
                        <!-- * * * * * * * * * * * * * * * -->
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
                                    <c:forEach var="pageList" items="${pageVO }">
                                       <div id="tbPadd" class="card-body px-0 pb-2">
                                          <div class="table-responsive p-0">
                                             <table class="table align-items-center mb-0">
                                                <tbody>
                                                   <tr>
                                                      <td>
                                                         <div class="d-flex px-2 py-1">
                                                            <div class="d-flex flex-column justify-content-center">
                                                               <p class="text-xs text-secondary mb-0" style="font-size: 15px;">
                                                                  <a href="../view/page?pageNO=${pageList.pageNO }">${pageList.pageTitle }</a>
                                                                  <br>${pageList.pageDate }
                                                               </p>
                                                               <p class="text-xs text-secondary mb-0">조회수: ${pageList.pViewCnt }</p>
                                                            </div>
                                                         </div>
                                                      </td>
                                                      <!-- ======================= 버튼 ========================== -->
                                                      <td>
                                                         <div align="right" style="width: 100%;">
                                                            <c:if test="${pageList.charge eq 'Y'}">
                                                               <div class="button header-button">
                                                                  <a class="btn" style="background-color: #30e087" onClick="pageBuy('${pageList.pageNO}')">미리보기(유료)</a>
                                                               </div>
                                                            </c:if>
                                                            <c:if test="${login.admin eq 'A' || login.admin eq 'C'}">
                                                               <div class="button header-button">
                                                                  <a href="../view/update?pageNO=${pageList.pageNO}" class="btn" style="background-color: #30d8e0;">수정</a>
                                                               </div>
                                                               <div class="button header-button">
                                                                  <a onClick="pageDelete('${pageList.pageNO}')" class="btn" style="background-color: #30d8e0;">삭제</a>
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
                                 To activate this form, sign up at <br />
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
                              <c:if test="${!empty totPage }">
                                 <c:choose>
                                    <c:when test="${totPage > 100 }">
                                       <c:forEach var="page" begin="1" end="10" step="1">
                                          <c:if test="${section >1 && page == 1 }">
                                             <a href="view?bookNO=${bookVO.bookNO }&section=${section-1 }&pageNum=10" class="w3-button">«</a>
                                          </c:if>
                                          <c:choose>
                                             <c:when test="${page == pageNum }">
                                                <a href="view?bookNO=${bookVO.bookNO }&section=${section }&pageNum=${page}" class="w3-button w3-blue">${(section-1)*10+page }</a>
                                             </c:when>
                                             <c:otherwise>
                                                <a href="view?bookNO=${bookVO.bookNO }&section=${section }&pageNum=${page}" class="w3-button">${(section-1)*10+page }</a>
                                             </c:otherwise>
                                          </c:choose>
                                          <c:if test="${page == 10 }">
                                             <a href="view?bookNO=${bookVO.bookNO }&section=${section+ 1}&pageNum=1" class="w3-button">»</a>
                                          </c:if>
                                       </c:forEach>
                                    </c:when>
                                    <c:when test="${totPage == 100 }">
                                       <c:forEach var="page" begin="1" end="10" step="1">
                                          <c:choose>
                                             <c:when test="${page == pageNum}">
                                                <a href="view?bookNO=${bookVO.bookNO }&section=${section }&pageNum=${page}" class="w3-button w3-blue">${page }</a>
                                             </c:when>
                                             <c:otherwise>
                                                <a href="view?bookNO=${bookVO.bookNO }&section=${section }&pageNum=${page}" class="w3-button">${page }</a>
                                             </c:otherwise>
                                          </c:choose>
                                       </c:forEach>
                                    </c:when>
                                    <c:when test="${totPage < 100 }">
                                       <c:forEach var="page" begin="1" end="${totPage/10 +1 }" step="1">
                                          <c:choose>
                                             <c:when test="${page == pageNum}">
                                                <a href="view?bookNO=${bookVO.bookNO }&section=${section }&pageNum=${page}" class="w3-button w3-blue">${page }</a>
                                             </c:when>
                                             <c:otherwise>
                                                <a href="view?bookNO=${bookVO.bookNO }&section=${section }&pageNum=${page}" class="w3-button">${page }</a>
                                             </c:otherwise>
                                          </c:choose>
                                       </c:forEach>
                                    </c:when>
                                 </c:choose>
                              </c:if>
                           </div>
                        </div>
                        <!-- ====================== 페이징 끝 ====================== -->
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <!-- =========================== 리뷰(댓글) =========================== -->
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
                                    <c:forEach var="review"  items="${reviewVO }"  varStatus="replyCnt">
                                       <div id="tbPadd" class="card-body px-0 pb-2">
                                          <div class="table-responsive p-0">
                                             <table class="table align-items-center mb-0">
                                                <tbody>
                                                   <tr>
                                                      <td>
                                                         <c:if test='${review.level > 1 }'>
                                                            <div class="d-flex px-2 py-1">
                                                               <div class="d-flex flex-column justify-content-center">
                                                                  <p class="text-xs text-secondary mb-0" style="font-size: 15px;">
                                                                     <c:forEach begin="1" end="${review.level }" step="1">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                                     </c:forEach>
                                                                     ⤷작성자명 : ${review.nick }(${review.id }),&nbsp;&nbsp;&nbsp;&nbsp;${review.revDate }
                                                                  </p>
                                                                  <p class="text-xs text-secondary mb-0">
                                                                     <c:forEach begin="1" end="${review.level }" step="1">
                                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                     </c:forEach>
                                                                     <c:if test="${review.revDelete eq 'Y' }">
                                                                     <strike>&nbsp;&nbsp;[삭제된 게시글입니다]</strike>
                                                                     </c:if>
                                                                     <c:if test="${review.revDelete ne 'Y' }">
                                                                     &nbsp;&nbsp;${review.revText }
                                                                     </c:if>                                                                     
                                                                  </p>
                                                               </div>
                                                            </div>
                                                         </c:if>
                                                         <c:if test="${review.level == 1 }">
                                                            <div class="d-flex px-2 py-1">
                                                               <div class="d-flex flex-column justify-content-center">
                                                                  <p class="text-xs text-secondary mb-0" style="font-size: 15px;">작성자명 : ${review.nick }(${review.id }),&nbsp;&nbsp;&nbsp;&nbsp;${Description.revDate }</p>
                                                                  <c:if test="${review.revDelete eq 'Y' }">
                                                                   <strike class="text-xs text-secondary mb-0">[삭제된 게시글입니다]</strike>
                                                                  </c:if>
                                                                  <c:if test="${review.revDelete ne 'Y' }">
                                                                   <p class="text-xs text-secondary mb-0">${review.revText }</p>
                                                                  </c:if>
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
                                                                  <a onClick="deleteReview('${review.revNO }')" class="btn" style="background-color: #30d8e0;">삭제</a>
                                                               </div>
                                                            </c:if>
                                                         </div>
                                                         <!-- ======================= 버튼 끝 ========================== -->
                                                      </td>
                                                   </tr>
                                                   <!-- =========================== 댓글 끝 =========================== -->
                                                   <!-- =========================== 댓글 수정 =========================== -->
                                                   <tr class="mod" >
                                                      <c:if test='${review.level == 1 }'>
                                                         <td>
                                                            <div class="form-floating" id="formMag" style="width: 460%;">
                                                              <c:if test="${review.revDelete ne 'Y' }">
                                                               <textarea name="revText" class="form-control" id="ReText${replyCnt.count }" style="height: 7rem;" data-sb-validations="required">${review.revText }</textarea>
                                                              </c:if>
                                                               <br>
                                                               <label for="message">댓글 수정</label>
                                                               <input type="hidden" value="${review.revNO }" id="revNO${replyCnt.count }" name="revNO">
                                                               <!-- ======================= 버튼 ========================== -->
                                                               <div align="center">
                                                                  <!-- [로그인시] -->
                                                                  <c:if test="${!empty login.id && login.id ne '' }">
                                                                     <div class="button header-button">
                                                                        <a id="modBtn" onClick="replyDone('${review.revNO}','${replyCnt.count }')" class="btn">확인</a>
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
                                                      <c:if test='${review.level > 1 }'>
                                                         <td>
                                                            <div class="form-floating" id="formMag" style="width: 460%;">
                                                              <c:if test="${review.revDelete ne 'Y' }">
                                                               <textarea name="revText" class="form-control" id="ReText${replyCnt.count }" style="height: 7rem;" data-sb-validations="required">${review.revText }</textarea>
                                                              </c:if>                                                               
                                                               <br>
                                                               <label for="message">답글 수정</label>
                                                               <input type="hidden" value="${review.revNO }" id="revNO${replyCnt.count }" name="revNO">
                                                               <input type="hidden" value="${login.id }" name="id" id="id">
                                                               <input type="hidden" value="${login.nick }" name="nick" id="nick">
                                                               <!-- ======================= 버튼 ========================== -->
                                                               <div align="center">
                                                                  <!-- [로그인시] -->
                                                                  <c:if test="${!empty login.id && login.id ne '' || review.revDelete ne 'Y' }">
                                                                     <div class="button header-button">
                                                                        <a id="modBtn" onClick="replyReDone('${review.revParentNO}','${replyCnt.count }')" class="btn">확인</a>
                                                                     </div>
                                                                  </c:if>
                                                                  <!-- [비 로그인시]] -->
                                                                  <c:if test="${empty login.id || login.id  eq '' || review.revDelete ne 'Y' }">
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
                                                         <div class="form-floating" id="formMag" style="width: 460%;">
                                                            <textarea name="revText" class="form-control" id="RepReText${replyCnt.count }" style="height: 7rem;" data-sb-validations="required"></textarea>
                                                            <br>
                                                            <label for="message">답글 쓰기</label>
                                                            <input type="hidden" value="${login.id }" name="id" id="id">
                                                            <input type="hidden" value="${login.nick }" name="nick" id="nick">
                                                            <!-- ======================= 버튼 ========================== -->
                                                            <div align="center">
                                                               <!-- [로그인시] -->
                                                               <c:if test="${!empty login.id && login.id ne '' }">
                                                                  <div class="button header-button">
                                                                     <a id="repReBtn" onClick="replyInsert('${review.revNO}','${replyCnt.count }')" class="btn">확인</a>
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
                              <div class="form-floating" id="formMag">
                                 <textarea name="revText" class="form-control" id="revText" style="height: 15rem; width: 66.6%;" data-sb-validations="required"></textarea>
                                 <div class="invalid-feedback" data-sb-feedback="message:required">내용을 입력하세요.</div>
                                 <br>
                                 <br>
                                 <label for="message">리뷰 쓰기</label>
                                 <input type="hidden" name="bookNO"  value="${bookVO.bookNO }" id="bookNO">
                                 <input type="hidden" value="${login.id }" name="id" id="id">
                                 <input type="hidden" value="${login.nick }" name="nick" id="nick">
                              </div>
                              <!-- Submit success message-->
                              <!---->
                              <!-- This is what your users will see when the form-->
                              <!-- has successfully submitted-->
                              <div class="d-none" id="submitSuccessMessage">
                                 <div class="text-center mb-3">
                                    <div class="fw-bolder">Form submission successful!</div>
                                    To activate this form, sign up at <br />
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
                                       <a id="repBtn" onClick="" class="btn">리뷰 등록</a>
                                    </div>
                                 </c:if>
                                 <!-- [비 로그인시]] -->
                                 <c:if test="${empty login.id || login.id  eq '' }">
                                    <div class="button header-button">
                                       <a data-bs-toggle="modal" data-bs-target="#login" class="btn">리뷰 등록</a>
                                    </div>
                                 </c:if>
                                 <div class="button header-button">
                                    <a onClick="funbtn()" class="btn">돌아가기</a>
                                 </div>
                              </div>
                              <!-- ======================= 버튼 끝 ========================== -->
                              <br>
                              <br>
                           </form>
                        </div>
                        <!-- ====================== 리뷰(댓글) 끝====================== -->
                        <!-- Submit success message-->
                        <!---->
                        <!-- This is what your users will see when the form-->
                        <!-- has successfully submitted-->
                        <div class="d-none" id="submitSuccessMessage">
                           <div class="text-center mb-3">
                              <div class="fw-bolder">Form submission successful!</div>
                              To activate this form, sign up at <br />
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
         </c:when>
      </c:choose>
      <!-- ==================== footer ====================== -->
      <!-- footer -->
      <jsp:include page="/WEB-INF/views/include/footer.jsp" />
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
           controlsText: [' < i class = "lni lni-chevron-left" >< /i>', ' < i class = "lni lni-chevron-right" >< /i>'],
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
      <script src="../../resources/bluecoding/bookView.js"></script>
      <script>
         function funbtn() {
           if (confirm("이전 페이지로 돌아가시겠습니까??")) {
             javascript: history.back();
           }
           else {
             return;
           }
         }
      </script>
      <script>
         function funok() {
           if (alert("정상적으로 등록되었습니다.") == true) {} else {
             alert("등록에 실패하였습니다.")
             return;
           }
         }
      </script>
      <script>
         function funFavo() {
           var favo = confirm("상품을 찜하시겠습니까??");
           if (favo == true) {
             document.favo.action = "../view/favo/add";
             document.favo.method = "POST";
             document.favo.submit();
           }
         }
      </script>
      <!-- ================================ 리뷰 구현 ====================================== -->            
      <script> 
         $(document).ready(function() {
             $('#repBtn').click(function() {
                 $.ajax({
                         type: 'POST',
                         url: '../view/review/add',
                         dataType: "json",
                         data: {"revText": $('#revText').val(), "id":$('#id').val(), "bookNO":$("#bookNO").val(),  "nick":$("#nick").val()},
                         success: function(data) {
                            // data.server에서 보낸 map text
                             alert('리뷰가 등록되었습니다.');
                             $('#revText').val("");
                             location.reload();
                         }, 
                         error: function(request,status,error) {
                            alert('에러!! : ' + request.responseText + ":"+error);
                         }
                  }); //end ajax 
             }); //end on 
         }); 
      </script>
      <!-- ================================ 리뷰 구현 끝====================================== -->      
      <!-- ================================ 리뷰 수정 ====================================== -->
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
         
         function replyDone(revNO, replyCnt){
             $.ajax({
                 type: 'POST',
                 url: '../view/review/update',
                 dataType: "json",
                 data: {"revText": $('#ReText'+replyCnt).val(), "id":$('#id').val(), "bookNO":$("#bookNO").val(),  "nick":$("#nick").val(), "revNO":revNO},
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
      <!-- ================================ 리뷰 수정 끝====================================== -->      
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
         
         function replyInsert(revParentNO, replyCnt){
           	$.ajax({
               	type: 'POST',
               	url: '../view/reviewRe/add',
               	dataType: "json",
               	data: {"revText": $('#RepReText'+replyCnt).val(), "id":$('#id').val(), "bookNO":$("#bookNO").val(),  "nick":$("#nick").val(), "revParentNO":revParentNO, "revNO":$("#revNO").val()},
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
         
         function replyReDone(revParentNO, replyCnt){
             $.ajax({
                 type: 'POST',
                 url: '../view/review/update',
                 dataType: "json",
                 data: {"revText": $('#ReText'+replyCnt).val(), "id":$('#id').val(), "bookNO": $("#bookNO").val(),  "nick":$("#nick").val(), "revNO":$("#revNO"+replyCnt).val(), "revParentNO": revParentNO},
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
   </body>
</html>