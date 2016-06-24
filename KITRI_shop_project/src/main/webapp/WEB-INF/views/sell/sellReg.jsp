<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>

<script>
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
<form action = "${pageContext.request.contextPath}/sell/sellreg.do" name="sellreg" method="post">
img&nbsp;:&nbsp;
  <input type="file" id="fileName" value="ph_img" onchange="readURL(this)"> <br><br>
    <div id="UploadedImg">
     
    </div>

제목 &nbsp;:&nbsp;<input type="text" name="title" size="20"><br><br>
제품명&nbsp;:&nbsp;<input type="text" name="ph_name" size="10"><br><br>
가격&nbsp;:&nbsp;<input type="text" name="price" size="10"><br><br>
수량&nbsp;:&nbsp;<select name="quantity" size="1">
    <option selected value="1ea">1</option>
    <option value="2ea">2</option>
    <option value="3ea">3</option>
    <option value="4ea">4</option>
    <option value="5ea">5</option>
    <option value="6ea">6</option>
    <option value="7ea">7</option>
    <option value="8ea">8</option>
    <option value="9ea">9</option>
    <option value="10ea">10</option>
</select><br><br>
색상&nbsp;:&nbsp;<input type="text" name="color"><br><br>
통신사&nbsp;:&nbsp;<select name="telcom" size="1">
    <option selected value="SKT">SKT</option>
    <option value="KT">KT</option>
    <option value="LG">LG</option>
    <option value="ETC">ETC</option>
</select><br><br>
상태&nbsp;:&nbsp;<select name="quality" size="1">
    <option selected value="sq">S</option>
    <option value="aq">A</option>
    <option value="bq">B</option>
    <option value="cq">C</option>
</select>
</form>
<br><br>
<input type= "submit" value="등록">
<input type= "reset"  value="취소"><br>


</body>
</html>
