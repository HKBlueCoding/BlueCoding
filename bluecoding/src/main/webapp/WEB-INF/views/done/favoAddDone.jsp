<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:if test="${ret == 0}">
  <script>
   alert('찜 실패...');
   location.href="../../";
  </script>
</c:if>
<c:if test="${ret == 1}">
  <script>
   alert('찜 완료!!!');
   location.href="../../user/chest?id=${id}";
  </script>
</c:if>

</body>
</html>