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
	<!-- 로그인 실패시 -->
	<c:if test="${rs == 0 }">
	  <script>
		alert('로그인 되어있지 않습니다!');
		history.back();
	  </script>
	</c:if>
	<!-- 로그인 성공시 -->
	<c:if test="${ rs > 0}">
	  <script>
	  	alert('정상적으로 로그아웃 되었습니다');
	  	location.href="../../../";
	  </script>
	</c:if>
</body>
</html>