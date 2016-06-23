<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<script type="text/javascript">
function delcheck(){
	var delChekMsg = window.confirm("진짜로 탈퇴 하시겠습니까?"); 
	if(delChekMsg){
		location.href="${pageContext.request.contextPath}/join/out.do";
	}
	
	function sellreg() {
		alert("adasd");
		location.href="sellReg.jsp"
	}
	function sellmod() {
		location.href="sellMod.jsp"
	}
	function sellist() {
		location.href="selList.jsp"
	}
	function sellbag() {
		location.href="sellBag.jsp"
	}
	function logout() {
		location.href="${pageContext.request.contextPath}/join/Logout.do"
	}
}

</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>${sessionScope.id}님 로그인중입니다.</h2>

<a href="${pageContext.request.contextPath}/join/editForm.do">내정보 수정</a><br>
<a href="${pageContext.request.contextPath}/join/Logout.do">로그아웃</a><br>
<input type="button" name="sellreg" value="판매등록" onclick="${pageContext.request.contextPath}/join/Logout.do" required/>
<input type="button" name="memdel" value="탈퇴" onclick="delcheck()" required/>

<br><br>
<input type="button" name="reg" value="판매등록" onclick="sellreg()">
<input type="button" name="mod" value="상품수정" onclick="sellmod()">
<input type="button" name="list" value="판매목록" onclick="sellist()">
<input type="button" name="bag" value="장바구니" onclick="sellbag()">





</body>
</html>