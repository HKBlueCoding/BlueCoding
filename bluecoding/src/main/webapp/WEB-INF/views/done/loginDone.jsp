<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- [로그인 실패시] -->
	<c:if test="${empty login.id || login.id eq ''}">
	  <script>
		alert('아이디 또는 비밀번호를 확인하세요');
		history.back();
	  </script>
	</c:if>
	
	<!-- [로그인 성공시] -->
	<c:if test="${ !empty login.id && login.id ne ''}">
	  <script>
	  	alert('${login.nick}님 환영합니다');
	  	location.href="../../../";
	  </script>
	</c:if>
	
</body>
</html>