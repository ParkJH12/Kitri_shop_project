<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<link href="${pageContext.request.contextPath}/css/table.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	function delcheck(){
	var delChekMsg = window.confirm("진짜로 탈퇴 하시겠습니까?"); 
	if(delChekMsg){
		location.href="${pageContext.request.contextPath}/join/out.do";
		}
	}
	function sellreg(){
		location.href="${pageContext.request.contextPath}/join/sellreg.do?=${sessionScope.name}";
	}
	function sellmod(){
		location.href="${pageContext.request.contextPath}/join/sellmod.do";
	}
	function sellist(){
		location.href="${pageContext.request.contextPath}/sell/sellist.do";
	}
	function sellbag(){
		location.href="${pageContext.request.contextPath}/busket/busketlist.do";
	}
	function logout(){
		location.href="${pageContext.request.contextPath}/join/Logout.do";
	}
	function memmod(){
		location.href="${pageContext.request.contextPath}/join/editForm.do";
	}
	function cashup(){
		location.href="${pageContext.request.contextPath}/join/cashup.do";
	}
	function orderlist(){
		location.href="${pageContext.request.contextPath}/order/orderlist.do";
	}
	
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% response.setHeader("Cache-Control","no-store"); %>
<% response.setHeader("Pragma","no-cache");%>
<% response.setDateHeader("Expires", 0);%>
 

<h2>${sessionScope.name}님 로그인중입니다.</h2>
<h2>${sessionScope.name}님의 현재 캐시잔액 ${J.cash } 원.</h2>

<input type="button" name="memmod" value="정보수정" onclick="memmod()" class="bt" required/>
<input type="button" name="logout" value="로그아웃" onclick="logout()" class="bt" required/>
<input type="button" name="out" value="회원탈퇴" onclick="delcheck()"  class="bt" required/>


<br><br>
<input type="button" name="reg" value="판매등록" onclick="sellreg()" class="bt" required/>
<input type="button" name="list" value="판매목록" onclick="sellist()" class="bt" required/>
<input type="button" name="order" value="주문목록" onclick="orderlist()" class="bt" required/>
<input type="button" name="bag" value="장바구니" onclick="sellbag()" class="bt" required/>

<br><br>

<input type="button" name="cash" value="캐시충전" onclick="cashup()" class="bt" required/>



</body>
</html>