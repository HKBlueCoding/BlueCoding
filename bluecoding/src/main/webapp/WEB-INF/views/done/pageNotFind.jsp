<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	  <c:if test="${direction eq 'minus' }">
		alert('이전화가 없습니다.');
		javascript:history.back();
	  </c:if>	
	  <c:if test="${direction eq 'plus' }">
		alert('마지막화 입니다.');
		javascript:history.back();
	  </c:if>
	  <c:if test="${direction ne 'minus' && direction ne 'plus'}">
		alert('회차가 없습니다.');
		javascript:history.back();
	  </c:if>		
</script>
</body>
</html>