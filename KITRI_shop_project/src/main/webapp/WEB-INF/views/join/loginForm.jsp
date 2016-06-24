<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css" />

<!--SCRIPTS-->
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.2.6/jquery.min.js"></script>
<!--Slider-in icons-->
<script type="text/javascript">
function regist() {
	location.href="${pageContext.request.contextPath }/join/joinForm.do";
}

$(document).ready(function() {
	$(".username").focus(function() {
		$(".user-icon").css("left","-48px");
	});
	$(".username").blur(function() {
		$(".user-icon").css("left","0px");
	});
	
	$(".password").focus(function() {
		$(".pass-icon").css("left","-48px");
	});
	$(".password").blur(function() {
		$(".pass-icon").css("left","0px");
	});
});
</script>

</head>
<body>

<!--WRAPPER-->
<div id="wrapper">

	<!--SLIDE-IN ICONS-->
    <div class="user-icon"></div>
    <div class="pass-icon"></div>
    <!--END SLIDE-IN ICONS-->

<!--LOGIN FORM-->
<form name="login-form" class="login-form" action="${pageContext.request.contextPath}/join/login.do" method="post">

	<!--HEADER-->
    <div class="header">
    <!--TITLE--><h1>쇼핑몰 로그인</h1><!--END TITLE-->
    <!--DESCRIPTION--><span>Welcome to cellphone market</span><!--END DESCRIPTION-->
    </div>
    <!--END HEADER-->
	
	<!--CONTENT-->
    <div class="content">
	<!--USERNAME--><input name="id" type="text" class="input username" value="Username" onfocus="this.value=''" /><!--END USERNAME-->
    <!--PASSWORD--><input name="pwd" type="password" class="input password" value="Password" onfocus="this.value=''" /><!--END PASSWORD-->
    </div>
    <!--END CONTENT-->
    
    <!--FOOTER-->
    <div class="footer">
    <!--LOGIN BUTTON--><input type="submit" name="submit" value="Login" class="button" /><!--END LOGIN BUTTON-->
    <!--REGISTER BUTTON--><input type="button" name="submit" value="Register" class="register" onclick=regist() /><!--END REGISTER BUTTON-->
    </div>
    <!--END FOOTER-->

</form>
<!--END LOGIN FORM-->

</div>
<!--END WRAPPER-->

<!--GRADIENT--><div class="gradient"></div><!--END GRADIENT-->



<%-- <script type="text/javascript">

	
</script>

<meta charset="UTF-8">
<title>::로그인::</title>
</head>
<body>

<h2>로그인 할 아이디와 패스워드를 입력하세요</h2>

<form action = "${pageContext.request.contextPath}/join/login.do" name="logform" method="post">
아이디 : <input type="text"	name="id" /><br>
패스워드 : <input type="password" name="pwd" />
<br>
<input type= "submit" value="로그인">
<input type= "reset"  value="취소"><br>
<a href ="${pageContext.request.contextPath }/join/joinForm.do">회원가입</a>
</form> --%>

</body>
</html>