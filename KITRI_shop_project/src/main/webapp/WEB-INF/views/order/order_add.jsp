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
function order_list(){
	location.href="${pageContext.request.contextPath }/order/addlist.do";
}

/* 	private int order_no;
private String seller_name;
private String seller_phone_num;
private String buyer_name;
private String buyer_phone_num;
private String title;
private String product_name;
private int count;
private int price;
private Date date; */


</script>
<title>Insert title here</title>
</head>
<body>
	<div id="img">
  img&nbsp;:&nbsp; <img src = "${s.img_path }"  style ="width:300px;height:200px;">
    </div>
<form action = "${pageContext.request.contextPath}/sell/seldetail.do?=${s.pb_num}" name="sellreg" method="post" enctype="multipart/form-data">


	<!-- 
<input type="file" id="fileName" value="img_path" onchange="readURL(this)"> <br><br>
    <div id="UploadedImg">
     
    </div> -->
판매자 &nbsp;:&nbsp;<input type="text" name="seller_name" value="${s.writer}" size="10" readonly="readonly"><br><br>
판매자전화번호  &nbsp;:&nbsp; <input type="text" name="seller_phone_num" size="20" value="${s.title}" size="15" readonly="readonly"><br><br>
구매자 이름  &nbsp;:&nbsp;<input type="text" name="buyer_name" value="${sessionScope.name}" size="10" readonly="readonly"><br><br>
제목 &nbsp;:&nbsp;<input type="text" name="title" size="20" value="${s.title }" readonly="readonly"><br><br>
제품명&nbsp;:&nbsp;<input type="text" name="product_name" size="10" value="${s.product_name }" readonly="readonly"><br><br>
가격&nbsp;:&nbsp;<input type="text" name="price" size="10" value="${s.price }" readonly="readonly"><br><br>
수량&nbsp;:&nbsp;<input type="text" name="count" size="10" value="${s.count }" ><br><br>

<br><br>


<c:if test="${s.m_num ne j.m_num}">
<input type="submit" value="주문하기 " onclick="order_list()">
</c:if>
</form>

<input type="button" value="뒤로가기" onclick="back()">
</body>
</html>
