<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/httpRequest.js"></script>
<script type="text/javascript">
function back() {
	location.href="${pageContext.request.contextPath }/";
}




</script>
</head>
<body>


보유한 캐시  : ${cash.cash } <br>
<form action="${pageContext.request.contextPath}/join/charge.do" id="charge-form" method="post">
충전할 캐시 : <input type="text" name="cash" size="10"/> 원<br>
<input type="submit" name="charge" value="Charge" required/>
<input type="button" class="register" value="Back" onclick="back()">
</form>
</body>
</html>
