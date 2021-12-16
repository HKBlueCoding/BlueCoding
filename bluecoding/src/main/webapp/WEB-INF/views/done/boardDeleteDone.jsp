<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:if test="${rs == 0}">
		<script>
			alert('삭제에 실패하였습니다.');
			location.href = "../../board/list";
		</script>
	</c:if>
	<c:if test="${rs == 1}">
		<script>
			alert('삭제되었습니다.');
			location.href = "../../board/list";
		</script>
	</c:if>

</body>
</html>