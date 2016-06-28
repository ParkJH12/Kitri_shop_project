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
			location.href="${pageContext.request.contextPath}/join/main.do"; 
	}

</script>
</head>
<body>
<h3>주문목록</h3>

주문목록<br>


<table border="1">
	<tr>
		<th>판매자</th>
		<th>제품명</th>
		<th>가격</th>
		<th>수량</th>
		
	</tr>
	
	<c:forEach var="o" items="${o}">
	<tr>
			<td>${o.seller_name}</td>
			<td><a href="${pageContext.request.contextPath}/sell/selldetail.do?pb_num=${a.pb_num}">${o.product_name}</a></td>
			<td>${o.price}</td>
			<td>${o.count}</td>
	</tr>
</c:forEach>

</table>


<input type="button" value="뒤로가기" onclick="back()">
</body>
</html>
