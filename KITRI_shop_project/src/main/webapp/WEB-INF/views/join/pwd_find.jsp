<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/httpRequest.js"></script>
<script type="text/javascript">
function idemailchk(){
	var idElement = document.getElementById('id');
	var emailElement = document.getElementById('email');

	var param = "id="+idElement.value+"&email="+emailElement.value;
	sendRequest("${pageContext.request.contextPath}/join/pwdFind.do", param, checkResult, "POST");
	
}
function checkResult(){
	if(httpRequest.readyState==4){
		if(httpRequest.status==200){
			var str = httpRequest.responseText;
			alert("responseText"+httpRequest.responseText);
			
			alert(responseText);
			var o = eval("("+str+")");
			alert("o.flag"+o.flag);
			var myDiv= document.getElementById("checkMsg");
			var html = "";
			if(o.flag){
				alert("패스워드는"+o.pass+"입니다");
				
			}else{
				alert(o.pass);
				alert("아이디나 이메일이 일치하지 않습니다");
			}
			myDiv.innerHTML = html;
		}
	}
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>비밀번호 찾기 페이지</h3>


ID &nbsp;:&nbsp;<input type="text" name="name" id = "id">
<input type="button" value="아이디체크" onclick="idemailchk()"/> <br>
<span id="checkMsg"></span><br>
Email &nbsp;:&nbsp;<input type="text" name="email" id = "email"><br><br>


<input type= "submit" value="찾기">
<input type= "reset"  value="취소"><br>
</body>
</html>
