<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${empty cancel_amount }">
	 <script>
      alert('환불에 실패하였습니다.');
      window.close();
	 </script>
	</c:if>

	<c:if test="${!empty cancel_amount }">
	 <script>
      alert('환불에 성공하였습니다!');
      window.opener.location.reload();
      window.close();
	 </script>
	</c:if>	
	
</body>
</html>