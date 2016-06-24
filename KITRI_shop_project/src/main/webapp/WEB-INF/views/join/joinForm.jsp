<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.2.6/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/httpRequest.js"></script>
<script type="text/javascript">
function idchk(){
	var idElement = document.getElementById('id');
	var param = "id="+idElement.value;
	
	sendRequest("${pageContext.request.contextPath}/join/idCheck.do", param, checkResult, "POST");
	
	
}

function back() {
	location.href="${pageContext.request.contextPath }/";
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
<div id="wrapper">
<form action="${pageContext.request.contextPath}/join/join.do" id="login-form" method="post" class="login-form">
 <div class="content">
아이디 : <input type="text" class="input username" name="name" id="id" /> 
<input type="button" value="중복체크" onclick="idchk()"/> <br>
<span id="checkMsg"></span><br>
패스워드 : <input type="password" class="input username" name="pass" /><br>
휴대폰번호 : <input type="text" class="input username" name="phone_num" /><br>
주소 : <input type="text" class="input username" name="address" /><br>
이메일 : <input type="text" class="input username" name="email" /><br>
</div>
<div class="footer">
<input type="reset" class="button" value="Cancel">
<input type="submit" class="button" value="Join">

<input type="button" class="button" value="Back" onclick="back()">
</div>
</form>
</div>
</body>
</html>