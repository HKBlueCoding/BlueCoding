<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="setProhibit">

	<input type="hidden" name="id" value="${id }">

		<select name="prohibitLV" id="prohibitLV" required>
		
			<option value="" selected disabled>제재 레벨</option>
			<option value="0">0</option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
			<option value="4">4</option>
			<option value="5">5</option>
		</select> 
		
		<input type="submit" id="submit" value="변경" />

	</form>
</body>
</html>