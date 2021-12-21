<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
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
	
	<c:if test="${profit == 0 ||empty profit }">
	 <script>
		alert('잘못된 접근입니다.');
		window.close();
	 </script>
	</c:if>
	
	<c:if test="${profit == 1 }">
	 <script>
		alert('메일 발송에 실패하였습니다. 결제가능 금액을 확인하여 주십시오');
		window.close();
	 </script>
	</c:if>	
	
	<c:if test="${profit >= 300 }">
	 <script>
		alert('메일 발송에 성공하였습니다. 보내신 메일을 확인하세요.\n보낸메일:${email}');
		window.close();
	 </script>
	</c:if>
	
</body>
</html>