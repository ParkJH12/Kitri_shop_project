<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("UTF-8");%>
[
<c:forEach var="a" items="${list }" varStatus="status">
<c:if test="${not status.first }">,</c:if>

{
pb_num:${a.pb_num},
title:'${a.title}',
img_path:'${a.img_path}' ,
product_name:'${a.product_name}',
price:'${a.price}',
agency:'${a.agency}',
writer:'${a.writer}',
w_date:'${a.w_date}',
content:'${a.content}'
}



</c:forEach>

]

	