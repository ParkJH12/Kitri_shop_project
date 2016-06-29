<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("UTF-8");%>
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
			var o = eval("("+str+")");
			var myDiv= document.getElementById("checkMsg");
			var html = "";
			if(o.flag == 'true'){
				alert("패스워드는"+o.pass+"입니다");
			}else{
				alert("아이디나 이메일이 일치하지 않습니다 다시 확인해주세요");
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
<span id="checkMsg"></span><br>
Email &nbsp;:&nbsp;<input type="text" name="email" id = "email"><br><br>


<input type= "button" value="찾기" onclick="idemailchk()"/>
<input type= "button" value="취소" onclick="location.href='${pageContext.request.contextPath}/'"><br>
</body>
</html>
