<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/css/table.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function checkcount(pcount) {
	if(pcount==0){
		alert("매진되었습니다.")
	}else{
		alert("구매가 가능합니다.")
		location.href="${pageContext.request.contextPath }/order/reserve.do?pb_num=${s.pb_num}";
	}
}

function back(){
	location.href="${pageContext.request.contextPath}/sell/sellist.do";
}
function sellmod(){

	location.href="${pageContext.request.contextPath }/sell/sellmod.do?pb_num=${s.pb_num}";
}

function deletepro(){
	location.href="${pageContext.request.contextPath }/sell/deletebd.do?pb_num=${s.pb_num}";
}

</script>
<title>Insert title here</title>
</head>
<h2> 주문완료</h2>
<body>
    <div id="img">
    	<img src = "${s.img_path }"  style ="width:300px;height:200px;">
    </div>
    
<form action = "${pageContext.request.contextPath}/sell/seldetail.do?=${s.pb_num}" name="sellreg" method="post" enctype="multipart/form-data">
img&nbsp;:&nbsp;

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




<c:if test="${s.m_num eq j.m_num}">
<input type="button" name="mod" value="상품수정" onclick="sellmod()" class="bt"/>
<input type="button" name="delete" value="상품삭제" onclick="deletepro()" class="bt"/>
</c:if>
<c:if test="${s.m_num ne j.m_num}">
<input type="button" name="buyit" value="구매하기" onclick="checkcount(${s.count})" class="bt">
</c:if>
</form>

<input type="button" value="뒤로가기" onclick="back()">
</body>
</html>
