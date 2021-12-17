<%@ page language="java" contentType="text/html; charset=utf-8"
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
  <form action="../../kakaopay/buy" method="post">
	충전할 금액을 선택하세요 <input type="text" name="rechargeCoin">
  	<input type="hidden" value="${login.id }" name="id">
  	<input type="submit" value="입력">
  </form>
</body>
</html>