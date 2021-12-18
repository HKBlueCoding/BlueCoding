<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>답글 쓰기</title>
</head>
<body>
	<h1>답글쓰기</h1>
	<form action="add" method="post">
		<input type="hidden" value="${reviewVO.bookNO }" name="bookNO">
		<input type="hidden" value="${reviewVO.revParentNO }" name="revParentNO ">
		<input type="hidden" value="${login.id }" name="id ">
		<input type="hidden" value="${login.nick }" name="nick ">
		<textarea rows="50" cols="50"></textarea>
		<input type="submit" value="입력">
	</form>
</body>
</html>