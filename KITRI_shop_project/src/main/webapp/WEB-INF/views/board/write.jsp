<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">

function cancel(){
	location.href = history.back(); 
}

</script>
<meta charset="UTF-8">
<title>:: Write-SpringBoard ::</title>
</head>
<body>

<form action="${pageContext.request.contextPath}/board/write.do" method="POST">
writer: <input type="text" name="writer" value="${sessionScope.id}" readonly><br/>
title : <input type="text" name="title"><br/>
content<br/><textarea rows="50" cols="150" name="content"></textarea><br/>
<input type="submit" onclick="boardWrite()" value="확인"/>
<input type="reset" onclick="cancel()" value="취소"/>

</form>


</body>
</html>