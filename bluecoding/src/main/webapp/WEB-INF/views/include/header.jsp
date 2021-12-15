<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<% 
		Object userVO = (Object) session.getAttribute("login");
	%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
      <script src="https://code.jquery.com/jquery-3.6.0.min.js" 
      		  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" 
              crossorigin="anonymous"></script>
      <script src="../../resources/bluecoding/login.js"></script>
<!-- Start Header Area -->
<header class="header navbar-area">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-12">
                <div class="nav-inner">
                    <nav class="navbar navbar-expand-lg">
                        <a class="navbar-brand" href="../../"> <img src="../../resources/assets/images/logo/BlueNovel.png" width="190" height="105" alt="Logo" /> </a>
                        <button
                            class="navbar-toggler mobile-menu-btn"
                            type="button"
                            data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent"
                            aria-controls="navbarSupportedContent"
                            aria-expanded="false"
                            aria-label="Toggle navigation">
                            <span class="toggler-icon"></span> <span class="toggler-icon"></span>
                            <span class="toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
                            <ul id="nav" class="navbar-nav ms-auto">
                                <li class="nav-item"><a href="../../list" aria-label="Toggle navigation">도서정보</a></li>
                                <li class="nav-item"><a href="../../board/list" aria-label="Toggle navigation">커뮤니티</a></li>
                                <li class="nav-item">
                                    <a class="dd-menu collapsed" data-bs-toggle="collapse" data-bs-target="#submenu-1-3" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">뉴스</a>
                                    <ul class="sub-menu collapse" id="submenu-1-3">
                                        <li class="nav-item"><a href="../../news/notice">공지사항</a></li>
                                        <li class="nav-item"><a href="../../news/event">이벤트</a></li>
                                    </ul>
                                </li>
                                <li class="nav-item"><a href="../../user/chest" aria-label="Toggle navigation">보관함</a></li>
                                <li class="nav-item"><a href="../../qna/home" aria-label="Toggle navigation">고객센터</a></li>
                            </ul>
                        </div>
                        <!-- [비로그인시] -->
                        <c:if test="${empty login.id || login.id eq '' }">
                         <div id="notLogin" class="login-button" >
                            <ul>
                                <li>
                                    <a data-bs-toggle="modal" data-bs-target="#login"><i class="lni lni-enter"></i> Login</a>
                                </li>
                                <li>
                                    <a href="../../user/register"><i class="lni lni-user"></i> Register</a>
                                </li>
                            </ul>
                          </div>
                         </c:if>
                        <!-- [로그인 성공시] -->
                        <c:if test="${ !empty login.id && login.id ne ''}">
                          <div id="successLogin" class="login-button" >
                            <ul>
                                <li>
									<div class="d-flex px-2 py-1">
										
										<c:if test="${empty login.profile }">
                          				 <div>
                            				<img src="../../resources/material/assets/img/team-4.jpg" width="36" height="36" class="avatar avatar-sm me-3 border-radius-lg" alt="user6" onload="gaugeSet('${login.gauge}')">
                          				 </div>
                          				</c:if>
                          				<c:if test="${!empty login.profile }">
                          				 <div>
                            				<img src="../../download?uploadFile=${login.profile }&inFolder=user&pk=${login.id}" width="36" height="36" class="avatar avatar-sm me-3 border-radius-lg" alt="user6" onload="gaugeSet('${login.gauge}')">
                          				 </div>                          				
                          				</c:if>                       				
                          				<div class="d-flex flex-column justify-content-center">
                            				<h6 id="loginNick" class="mb-0 text-sm">${login.nick }<a class="text-xs text-secondary mb-0" href="../../logout" style="font-size: 0.875em;">&nbsp;(로그아웃)</a></h6>
                            				<a class="text-xs text-secondary mb-0" onclick="loginMenu" style="font-size: 0.875em;" data-bs-toggle="collapse" data-bs-target="#loginMore">메뉴</a>
                          					<ul class="sub-menu collapse" id="loginMore" >
                                            	<li class="nav-item"><a id="loginInfo" href="">내 정보</a></li>
                                            	<li class="nav-item"><a href="javascript:void(0)">캐시 충전</a></li>
                                            	<li id="loginCash" class="nav-item">보유 캐시: ${login.coin }</li>
                                        	</ul>
                          				</div>
                        			</div>
                                </li>
                            </ul>
                          </div>
                         </c:if>                    
                    </nav>
                    <!-- navbar -->
                </div>
            </div>
        </div>
        <!-- row -->
    </div>
    <!-- 게이지 바 -->
    <div class="progress" style="height: 30px;">
        <div class="progress-bar" id="loginGauge" style="width: 60%; height: 30px; color:black;">로그인 하여 도서 게이지를 확인하세요</div>
    </div>
</header>
<!-- End Header Area -->

<!-- The Modal -->
<div class="modal fade" id="login">
    <div class="modal-dialog">
        <div class="modal-content">
            <!-- Modal Header -->
            <div class="modal-header">
                <h4 class="modal-title">로그인하기</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
            </div>

            <!-- Modal body -->
            <div class="modal-body">
            	<form name="frmLogin" method="post" action="../../finishLogin">
                    <div class="mb-3 mt-3" align="center">
                        <input type="text" class="form-control" id="loginId" placeholder="아이디" name="loginId" style="height: auto; width: 80%;" required />
                    </div>
                    <div class="mb-3" align="center">
                        <input type="password" class="form-control" id="loginPwd" placeholder="비밀번호" name="loginPwd" style="height: auto; width: 80%;" required />
                    </div>
                    <div align="center">
                    	<input type="button" class="btn btn-secondary" onclick="loginBtn()" value="&nbsp;&nbsp;&nbsp;로그인&nbsp;&nbsp;&nbsp;" style="height: auto; width: 80%;">
                    </div>
                    <p align="center"><a href="../../user/find/id">아이디찾기</a>&nbsp;/&nbsp;<a href="../../user/find/pwd">비밀번호 찾기</a></p>
      			</form>      
            </div>
		  		
            <!-- Modal footer -->
            <div class="modal-footer">
                <button type="button" id="loginBack" class="btn btn-danger" data-bs-dismiss="modal">뒤로가기</button>
            </div>
        </div>
    </div>
</div>
