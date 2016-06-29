<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/httpRequest.js"></script>
<script type="text/javascript">
function back() {
	location.href="${pageContext.request.contextPath }/join/main.do";
}
</script>
</head>
<body>
<form action="${pageContext.request.contextPath}/join/charge.do" id="charge-form" method="post">
사용자 : <input type = "text" name="name" value="${J.name }" readonly/><br>
현재 캐시 : <input type = "text" name="cor_cash" value="${J.cash }" readonly/><br>
충전할 캐시 : <input type="text" name="cash" size="10"/> 원<br>
<input type = "hidden" name="m_num" value="${J.m_num }" readonly/><br>
<input type="submit" value="Charge" required/>
<input type="button" class="register" value="Back" onclick="back()">
</form>
</body>
</html>
