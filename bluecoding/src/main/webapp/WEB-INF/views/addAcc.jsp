<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>운영계정 생성</title>
</head>
<body>

      <form method="post" action="addAcc" encType="multipart/form-data">
      
      	<select name="admin" id="admin"  required>
      		<option value="" selected disabled>계정 유형 선택</option>
     		<option value="A">관리자</option>
      		<option value="Q">상담원</option>
      	</select>     	
      	<br />
      	<br />
        <label for="id">아이디(영문+숫자)</label>
        <br />
        <input type="text" name="id" id="id" pattern="[A-Za-z0-9]{8,15}" title="영문자+숫자, 8~15글자" required/>
        <br />
        <label for="pwd">비밀번호(대문자, 특수문자1개)</label>
        <br />
        <input type="password" name="pwd" id="pwd"  pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{10,16}$" title="대문자, 특수문자 포함 10~16글자" required />
        <br />
        <label for="pwd">비밀번호 확인</label>
        <br />
        <input type="password" id="pwdCheck" required>
        <br />
        <label for="name">회원 실명</label>
        <br />
        <input type="text" name="name" id="name" minlength="1" maxlength="10" title="1글자이상 10글자 이하" required/>
        <br />
        <label for="nick">닉네임</label>
        <br />
        <input type="text" name="nick" id="nick" minlength="2" maxlength="12" title="2글자 이상 12글자 이하" required/>
        <br />
        <label for="name">이메일</label>
        <br />
        <input type="text" name="email" id="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required/>
        <br />
        <label for="birth">생년월일</label>
        <br />
        <input type="text" name="birth" id="birth" pattern="[0-9]{4}-[0-9]{2}-[0-9]{2}" placeholder="ex)2022-01-01" title="ex)2022-01-01" required />
        <br />
        <label for="phone">전화번호</label>
        <br />
        <input type="phone" name="phone" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{3,4}" title="형식 010-0000-0000" required>
        <br />      
        <br>
        <input type="submit" id="sumit" value="등록" />
        
      </form>
      
      <script src="../../resources/bluecoding/register.js"></script>
</body>
</html>