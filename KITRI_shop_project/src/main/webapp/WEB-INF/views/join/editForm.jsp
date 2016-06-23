<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function editCancel(){
	var editCancel = window.confirm("수정을 취소 하시겠습니까?");
	if(editCancel){
		location.href=history.back();
	}
}

</script>
<meta charset="UTF-8">
<title>::유저 정보 수정::</title>
</head>
<body>
<h2>수정할 내용을 입력하세요</h2>

<form action = "${pageContext.request.contextPath}/join/edit.do" name="logfrm" method="post">
아이디 : <input type="text"	name="id" readonly="readonly"  value="${editInfo.id}"/><br>
패스워드 : <input type="password" name="pwd" value="${editInfo.pwd}"/><br>
이름 : <input type="text" name="name" value="${editInfo.name}" /><br>
이메일 : <input type="text" name="email"  value="${editInfo.email}"/><br>
<input type= "submit" value="수정완료"/> &nbsp;
<input type= "button"  value="수정취소" onclick="editCancel()"/>
</form>

</body>
</html>