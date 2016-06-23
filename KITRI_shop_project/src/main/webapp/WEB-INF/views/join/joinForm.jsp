<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/httpRequest.js"></script>
<script type="text/javascript">
function idchk(){
	var idElement = document.getElementById('id');
	var param = "id="+idElement.value;
	
	sendRequest("${pageContext.request.contextPath}/join/idCheck.do", param, checkResult, "POST");
	
	
}

function checkResult(){
	if(httpRequest.readyState==4){
		if(httpRequest.status==200){
			var str = httpRequest.responseText;
			var o = eval("("+str+")");
			alert(o.flag);
			var myDiv= document.getElementById("checkMsg");
			var html = "";
			if(o.flag){
				html = "사용가능한 아이디";
				
			}else{
				html = "사용불가능한 아이디";
			}
			myDiv.innerHTML = html;
		}
	}
}

</script>

<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

<form action="${pageContext.request.contextPath}/join/join.do" id="joinFrm" method="post">
아이디 : <input type="text" name="id" id="id" /> 
<input type="button" value="중복체크" onclick="idchk()"/> <br>
<span id="checkMsg"></span><br>
패스워드 : <input type="password" name="pwd" /><br>
이름 : <input type="text" name="name" /><br>
이메일 : <input type="text" name="email" /><br>
<input type="submit" value="가입">
<input type="reset" value="취소">

</form>

</body>
</html>