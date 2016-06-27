<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>

<script>

function back(){
	location.href="${pageContext.request.contextPath}/join/main.do";
}

function readURL(input){
	  
	 if(input.files && input.files[0]){
	   var reader = new FileReader();
	   reader.onload = function(e){
	    $('#UploadedImg').html("<img id=img src=''>");
	    $('#img').attr('src', e.target.result);
	   }
	   reader.readAsDataURL(input.files[0]);
	 }  
	  
	}
	

</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action = "${pageContext.request.contextPath}/sell/sellreg.do" name="sellreg" method="post" enctype="multipart/form-data">
img&nbsp;:&nbsp;
  <input type="file" id="fileName" value="img_path" onchange="readURL(this)"> <br><br>
    <div id="UploadedImg">
     
    </div>


제목 &nbsp;:&nbsp;<input type="text" name="title" size="20"><br><br>
제품명&nbsp;:&nbsp;<input type="text" name="product_name" size="10"><br><br>
모델명&nbsp;:&nbsp;<input type="text" name="model" size="10"><br><br>
가격&nbsp;:&nbsp;<input type="text" name="price" size="10"><br><br>
수량&nbsp;:&nbsp;<select name="count" size="1">
    <option selected value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    <option value="6">6</option>
    <option value="7">7</option>
    <option value="8">8</option>
    <option value="9">9</option>
    <option value="10">10</option>
</select><br><br>
색상&nbsp;:&nbsp;<input type="text" name="color"><br><br>
통신사&nbsp;:&nbsp;<select name="agency" size="1">
    <option selected value="SKT">SKT</option>
    <option value="KT">KT</option>
    <option value="LG">LG</option>
    <option value="ETC">ETC</option>
</select><br><br>
상태&nbsp;:&nbsp;<select name="statement" size="1">
    <option selected value="sq">S</option>
    <option value="A">A</option>
    <option value="B">B</option>
    <option value="C">C</option>
</select>
<br><br>
상품 내용<input type="text" name="content" size="80" style="height:100px;">

<input type="hidden" name="writer" value="${sessionScope.name }">
<input type="hidden" name="m_num" value="${j.m_num}" >
<br><br>
<input type= "submit" value="등록">
<input type= "reset"  value="취소">
</form>
<input type= "button"  value="뒤로가기" onclick="back()"><br>


</body>
</html>
