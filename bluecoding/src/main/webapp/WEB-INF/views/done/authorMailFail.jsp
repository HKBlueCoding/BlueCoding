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
   <c:if test="${empty ret }">
	<script type="text/javascript">
		alert('로그인 후 이용바랍니다. ');
		window.close();
	</script>
   </c:if>	


   <c:if test="${!empty ret }">
	<script type="text/javascript">
		alert('현금화는 5000원 이상부터 가능합니다');
		window.close();
	</script>
   </c:if>	
</body>
</html>