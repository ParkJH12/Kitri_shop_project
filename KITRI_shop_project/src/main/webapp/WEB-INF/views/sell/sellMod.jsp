<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript">
	function back() {
		location.href = "${pageContext.request.contextPath}/sell/sellist.do";
	}
	function readURL(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$('#UploadedImg').html("<img id=img src=''>");
				$('#img').attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
</script>
<title>Insert title here</title>
</head>
<body>
<form action = "${pageContext.request.contextPath}/sell/sellup.do" name="sellreg" method="post" enctype="multipart/form-data">
img&nbsp;:&nbsp;
  <input type="file" name="file" onchange="readURL(this)"> <br><br>
    <div id="UploadedImg">
    
    </div>

제목 &nbsp;:&nbsp;<input type="text" name="title" size="20" value="${s.title }"><br><br>
작성일자&nbsp;:&nbsp;<input type="text" name="w_date" size="10" value="${s.w_date }"><br><br>
제품명&nbsp;:&nbsp;<input type="text" name="product_name" size="10" value="${s.product_name }"><br><br>
모델명&nbsp;:&nbsp;<input type="text" name="model" size="10"value="${s.model }" ><br><br>
가격&nbsp;:&nbsp;<input type="text" name="price" size="10" value="${s.price }"><br><br>
수량&nbsp;:&nbsp;<input type="text" name="count" size="10" value="${s.count }"><br><br>
색상&nbsp;:&nbsp;<input type="text" name="color" value="${s.color }"><br><br>
통신사&nbsp;:&nbsp;<input type="text" name="agency" value="${s.agency }"><br><br>
상태&nbsp;:&nbsp;<input type="text" name="statement" value="${s.statement }"><br><br>
상품 내용<input type="text" name="content" value="${s.content }" size="80" style="height:100px;">
<input type="hidden" name="pb_num" value="${s.pb_num}">
<br><br>
<input type="submit" value="상품수정"/>

</form>


<input type="button" value="뒤로가기" onclick="back()">

</body>
</html>
