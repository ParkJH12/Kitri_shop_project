<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">

	
</script>

<meta charset="UTF-8">
<title>::로그인::</title>
</head>
<body>

<h2>로그인 할 아이디와 패스워드를 입력하세요</h2>

<form action = "${pageContext.request.contextPath}/join/login.do" name="logform" method="post">
아이디 : <input type="text"	name="id" /><br>
패스워드 : <input type="password" name="pwd" />
<br>
<input type= "submit" value="로그인">
<input type= "reset"  value="취소"><br>
<a href ="${pageContext.request.contextPath }/join/joinForm.do">회원가입</a>
</form>

</body>
</html>