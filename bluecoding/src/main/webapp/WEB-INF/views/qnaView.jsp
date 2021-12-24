<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8" />
      <meta http-equiv="x-ua-compatible" content="ie=edge" />
      <title>문의 내역 상세 보기</title>
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
      <script src="../resources/bluecoding/qnaView.js"></script>
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
      <form id="contactForm" data-sb-form-api-token="API_TOKEN" name="frmArticle" method="post" action="update" encType="multipart/form-data">
         <main class="mb-4">
            <div class="container px-4 px-lg-5">
               <div class="row gx-4 gx-lg-5 justify-content-center">
                  <div class="col-md-10 col-lg-8 col-xl-7" style="width: 80%;">
                     <p id="title">문의 내역</p>
                     <hr class="my-4">
                     <div>
                        <!-- ================== 카테고리 ======================= -->
                        <div class="categorise search-form wow fadeInUp">
                           <div class="row">
                              <div class="col-lg-3 col-md-3 col-12 p-0">
                                 <div class="search-input">
                                    <label for="category"></label>
                                    <select name="qnaList"
                                       id="qnaListLimit" disabled>
                                       <option selected>${qna.qnaList }</option>
                                       <option value="계정 관련">계정 관련</option>
                                       <option value="책 관련">책 관련</option>
                                       <option value="충전 관련">충전 관련</option>
                                       <option value="신고 관련">신고 관련</option>
                                       <option value="기타">기타</option>
                                    </select>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <br>
                        <!-- ================== 카테고리 끝 ======================= -->
                        <p>
                        </p>
                        <br>
                        <h3>제목</h3>
                        <br>
                        <p id="title2">
                           <input type=text  value="${qna.qnaTitle }" name="qnaTitle"
                              id="qnaContent" class="form-control" size=53 style="width: 70%;" maxlength="50" required disabled />
                        </p>
                        <div id="qna">
                           <input type="hidden" name="qnaNO" id="qnaNO" value="${qna.qnaNO}">
                           <input type="hidden" name="id" value="${qna.id }">
                           <p>작성자: ${qna.id } / 작성일: ${qna.qnaDate}</p>
                           <br>
                           <!-- ======================= 버튼 ========================== -->
                           <c:if test="${login.id == qna.id }">
                              <div class="button header-button" id="tr_btn_modify"
                                 style="display: none;">
                                 <button type="submit" class="btn">수정반영</button>
                                 <a onClick="funbtn(this.form)" class="btn">취소</a>
                              </div>
                              <div class="button header-button" id="tr_btn_one">
                                 <a onclick="fn_enable(this.form)" class="btn">수정</a>
                              </div>
                           </c:if>
                           <!-- 답변반영 바꿔줘야 함(insert 사용) -->
                           <c:if test="${login.admin eq 'A' || login.admin eq 'Q' }">
                              <div class="button header-button" id="tr_btn_modify2"
                                 style="display: none;">
                                 <a id="repBtn" class="btn">답변반영</a>
                                 <a onClick="funbtn(this.form)" class="btn">취소</a>
                              </div>
                              <div class="button header-button" id="tr_btn_two">
                                 <a onclick="fn_enableRe(this.form)" class="btn">답변하기</a>
                              </div>
                           </c:if>
                        </div>
                     </div>
                     <br> <br>
                     <!-- ======================= 버튼 끝 ========================== -->
                     <div class="my-5">
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- * * SB Forms Contact Form * *-->
                        <!-- * * * * * * * * * * * * * * *-->
                        <!-- This form is pre-integrated with SB Forms.-->
                        <!-- To make this form functional, sign up at-->
                        <!-- https://startbootstrap.com/solution/contact-forms-->
                        <!-- to get an API token!-->
                        <!-- <form id="contactForm" data-sb-form-api-token="API_TOKEN"> -->
                        <br>
                        <div class="form-floating" id="formMag">
                           <h3>내용</h3>
                           <table>
                              <tr style="border-top: 1px solid #dfe2e5;">
                                 <td style="border: 3px solid #e9ecef; border-width: 2px;">
                                    <c:if test="${empty qna.qnaImage }">
                                       <img src="../../resources/assets/images/mainPage/board1.png" width="300" height="200" class="avatar avatar-sm me-3 border-radius-lg" alt="user1" id="preview" style="float: left; margin-left : 16px;">
                                    </c:if>
                                    <c:if test="${!empty qna.qnaImage }">
                                       <img src="../../download?uploadFile=${qna.qnaImage }&inFolder=qna&pk=${qna.qnaNO}" width="300" height="200" class="avatar avatar-sm me-3 border-radius-lg" alt="user1" id="preview" style="float: left; margin-left : 16px;">
                                    </c:if>
                                 </td>
                                 <td style="border: 3px solid #e9ecef; border-width: 2px; ">
                                    <textarea id="qnaContent2" name="qnaText"
                                       rows="15" cols="90" maxlength="800" required disabled>${qna.qnaText }</textarea>
                                 </td>
                              </tr>
                           </table>
                           <input type="hidden" value="${qna.qnaList }" id="qnaList">                           
                           <table>
                              <tr style="border-top: 1px solid #dfe2e5;" id="tr_btn_image">
                                 <td style="border: 3px solid #e9ecef; border-width: 2px;">
                                    <div class="form-floating" id="formMag">
                                       <c:if test="${empty qnaReply}">
                                          <label for="message" id="tr_btn_label">- 답변 대기중입니다 -</label>
                                          <textarea id="qnaReContent" name="qnaText"
                                             rows="15" cols="135" maxlength="800" required disabled></textarea>
                                       </c:if>
                                       <c:if test="${!empty qnaReply }">
                                          <c:forEach var="reply" items="${qnaReply }">
                                             <textarea id="qnaReContent" name="qnaText" rows="15" cols="135" maxlength="800" required disabled>${reply.qnaText }</textarea>
                                          </c:forEach>
                                       </c:if>
                                    </div>
                                 </td>
                              </tr>
                           </table>
                           <br>
                           <br>
                           <div id="tr_btn_File" style="display: none;">
                              이미지 선택: <input type="file" name="uploadFile" onchange="readURL(this)" >                                                       
                              <input type="hidden" name="qnaImage" value="${qna.qnaImage}">
                           </div>
                           <br />
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </main>
      </form>
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
      <script>
         function readURL(input){
         if(input.files && input.files[0]){
            var reader = new FileReader();
            reader.onload = function (e){
               $('#preview').attr('src',e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
         }
         }   
      </script>
      <!-- ================================ 문의 답변 테스트 ====================================== -->
      <script> 
         $(document).ready(function() {
             $('#repBtn').click(function() {
               if ($.trim($('#qnaReContent').val()) == '') {
               alert("내용을 입력해주세요.");
               return false;
            }
                 $.ajax({
                         type: 'POST',
                         url: '../qna/reply/add',
                         dataType: "json",
                         data: {"qnaText": $('#qnaReContent').val(), "id":$('#id').val(), "qnaParentNO":$("#qnaNO").val(), "qnaList":$("#qnaList").val(), "qnaTitle":$("#qnaTitle").val()},
                         success: function(data) {
                            // data.server에서 보낸 map text
                             alert('답변이 등록되었습니다.');
                             $('#qnaReContent').val("");
                             location.reload();
                         }, 
                         error: function(request,status,error) {
                            alert($("#qnaNO").val());
                            alert('에러!! : ' + request.responseText + ":"+error);
                         }
                  }); //end ajax 
             }); //end on 
         });  
      </script>
      <!-- ================================ 문의 답변 테스트 끝====================================== -->      
   </body>
</html>