<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">

function back(){
	location.href="${pageContext.request.contextPath}/sell/sellist.do";
}


</script>
<title>Insert title here</title>
</head>
<body>
<form action = "${pageContext.request.contextPath}/sell/seldetail.do?=${s.pb_num}" name="sellreg" method="post" enctype="multipart/form-data">
img&nbsp;:&nbsp;
	
	<!-- 
<input type="file" id="fileName" value="img_path" onchange="readURL(this)"> <br><br>
    <div id="UploadedImg">
     
    </div> -->

제목 &nbsp;:&nbsp;<input type="text" name="title" size="20" value="${s.title }" readonly="readonly"><br><br>
제품명&nbsp;:&nbsp;<input type="text" name="product_name" size="10" value="${s.product_name }" readonly="readonly"><br><br>
모델명&nbsp;:&nbsp;<input type="text" name="model" size="10"value="${s.model }" readonly="readonly" ><br><br>
가격&nbsp;:&nbsp;<input type="text" name="price" size="10" value="${s.price }" readonly="readonly"><br><br>
수량&nbsp;:&nbsp;<input type="text" name="count" size="10" value="${s.count }" readonly="readonly"><br><br>
색상&nbsp;:&nbsp;<input type="text" name="color" value="${s.color }" readonly="readonly"><br><br>
통신사&nbsp;:&nbsp;<input type="text" name="agency" value="${s.agency }" readonly="readonly"><br><br>
상태&nbsp;:&nbsp;<input type="text" name="statement" value="${s.statement }" readonly="readonly"><br><br>
상품 내용<input type="text" name="content" value="${s.content }" readonly="readonly" size="80" style="height:100px;">
<br><br>
</form>
<input type="button" value="뒤로가기" onclick="back()">
</body>
</html>
