<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/table.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function back(){
	location.href="${pageContext.request.contextPath}/join/main.do";
}
function del(bk_num){
	location.href="${pageContext.request.contextPath}/busket/delbusket.do?bk_num=" + bk_num;
}
function gobuy(pb_num) {
	location.href="${pageContext.request.contextPath}/sell/selldetail.do?pb_num="+ pb_num;
	
}
</script>

</head>
<body>
<table class=table14_1>
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>제품명</th>
 		<th>가격</th>
		<th>통신사</th> 
		<th>작성자</th>
		<th>작성일</th>
		<th>장바구니삭제</th>
		<th>장바구니주문</th>
	</tr>
	
	<c:forEach var="o" items="${o}">
	<tr>
			<td>${o.bk_num}</td>
			<td>${o.title}</td>
			<td>${o.product_name }</td>
			<td>${o.price }&nbsp;원</td>
			<td>${o.agency }</td>
			<td>${o.writer}</td>
			<td>${o.b_date}</td>
			<td><input type="button" value="장바구니삭제" onclick="del(${o.bk_num})"></td>
			<td><input type="button" value="장바구니주문" onclick="gobuy(${o.pb_num})"></td>
	</tr>
	</c:forEach>

</table>
<input type="button" value="뒤로가기" onclick="back()" class="bt">

</body>
</html>