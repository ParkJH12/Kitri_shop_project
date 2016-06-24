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
				html = "아이디 확인완료";
				
			}else{
				html = "없는 아이디";
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


ID &nbsp;:&nbsp;<input type="text" name="name">
<input type="button" value="아이디체크" onclick="idchk()"/> <br>
Email &nbsp;:&nbsp;<input type="text" name="email"><br><br>


<input type= "submit" value="찾기">
<input type= "reset"  value="취소"><br>
</body>
</html>
