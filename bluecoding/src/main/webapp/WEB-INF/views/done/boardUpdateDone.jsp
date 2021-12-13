<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% request.setCharacterEncoding("UTF-8");%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:if test="${ret == 0}">
		<script>
			alert('수정에 실패하였습니다.');
			location.href = "../../board/view?articleNO=${articleNO }";
		</script>
	</c:if>
	<c:if test="${ret == 1}">
		<script>
			alert('수정되었습니다.');
			location.href = "../../board/view?articleNO=${articleNO }";
		</script>
	</c:if>

</body>
</html>