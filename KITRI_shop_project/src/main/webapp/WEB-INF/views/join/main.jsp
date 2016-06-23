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

</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>${sessionScope.id}님 로그인중입니다.</h2>
<br>
<a href="${pageContext.request.contextPath}/board/list.do">게시판으로 이동</a><br>
<a href="${pageContext.request.contextPath}/imgBoard/list.do">이미지 게시판 이동</a><br>
<a href="${pageContext.request.contextPath}/join/editForm.do">내정보 수정</a><br>
<a href="${pageContext.request.contextPath}/join/Logout.do">로그아웃</a><br>
<a href="#" onclick="delcheck()">탈퇴</a><br>

</body>
</html>