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
	}
	function sellreg(){
		location.href="${pageContext.request.contextPath}/join/sellreg.do";
	}
	function sellmod(){
		location.href="${pageContext.request.contextPath}/join/sellmod.do";
	}
	function sellist(){
		location.href="${pageContext.request.contextPath}/join/sellist.do";
	}
	function sellbag(){
		location.href="${pageContext.request.contextPath}/join/sellbag.do";
	}
	function logout(){
		location.href="${pageContext.request.contextPath}/join/Logout.do";
	}
	function memmod(){
		location.href="${pageContext.request.contextPath}/join/editForm.do";
	}
	function sellreg(){
		location.href="${pageContext.request.contextPath}/join/cashup.do";
	}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>${sessionScope.name}님 로그인중입니다.</h2>
<br>보유 캐시 : ${cash.cash } 원 입니다.<br>
<input type="button" name="memmod" value="정보수정" onclick="memmod()" required/>
<input type="button" name="logout" value="로그아웃" onclick="logout()" required/>
<input type="button" name="out" value="회원탈퇴" onclick="delcheck()" required/>


<br><br>
<input type="button" name="reg" value="판매등록" onclick="sellreg()" required/>
<input type="button" name="mod" value="상품수정" onclick="sellmod()" required/>
<input type="button" name="list" value="판매목록" onclick="sellist()" required/>
<input type="button" name="bag" value="장바구니" onclick="sellbag()" required/>

<br><br>

<input type="button" name="out" value="캐시충전" onclick="cashup()" required/>



</body>
</html>