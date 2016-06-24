<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.2.6/jquery.min.js"></script>
<script type="text/javascript">
function editCancel(){
	var editCancel = window.confirm("수정을 취소 하시겠습니까?");
	if(editCancel){
		location.href="${pageContext.request.contextPath}/join/main.do";
	}
}

</script>
<meta charset="UTF-8">
<title>::유저 정보 수정::</title>
</head>
<body>
<div id="wrapper">
<form action = "${pageContext.request.contextPath}/join/edit.do" class="login-form name="logfrm" method="post">
 <div class="content">
<br>아이디 : <input type="text" class="input username"	name="name" readonly="readonly"  value="${editInfo.name}"/><br>
<br>패스워드 : <input type="pass" class="input username" name="pass" value="${editInfo.pass}"/><br>
<br>휴대폰번호 : <input type="text" class="input username" name="phone_num" value="${editInfo.phone_num}" /><br>
<br>주소 : <input type="text" class="input username" name="address" value="${editInfo.address}" /><br>
<br>이메일 : <input type="text" class="input username" name="email"  value="${editInfo.email}"/><br>
</div>
<div class="footer" >
<input type= "button" class="register"  value="Cancle" onclick="editCancel()"/>
<input type= "submit" class="register" value="modify"/>

</div>
</form>
</div>
</body>
</html>