<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/css/table.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/httpRequest.js"></script>
<script type="text/javascript">


function readURL(input){
	    var reader = new FileReader();
	   reader.onload = function(e){
	    $('#UploadedImg').html("<img id=img src=''>");
	    $('#img').attr('src', e.target.result);	   
	   reader.readAsDataURL(input.files[0]);
	 }  
	  
	}


function back(){
	location.href="${pageContext.request.contextPath}/join/main.do";
}

	
	function search(){
		var ch = document.f2.type;  //같은 타입이 2개이상이면 무조건 배열, 즉 ch는 배열타입이 된다.
		var x;
		for(i=0;i<ch.length;i++){
			if(ch[i].checked==true){
				x =ch[i].value;
				
			}
		}
		var param ="";
		var url = "";
		if(x==1){
			param = "writer="+document.f2.keyword.value;
			url = "searchByWriter.do";

		}else if(x==2){
			param = "title"+document.f2.keyword.value;
			url = "searchByTitle.do";
		}
		alert(url);
		sendRequest("${pageContext.request.contextPath}/sell/"+url, param, searchResult, "POST")
		
	}
	
	function searchResult(){
		if (httpRequest.readyState == 4) {
			if (httpRequest.status == 200) {
				var str = httpRequest.responsText;
				var o = eval("(" + str + ")");
				var myDiv = document.getElementById("searchDiv");
				
				var html = "<table boarer='1'><tr><th>글번호</th><th>작성자</th><th>작성일</th><th>제목</th><tr>";
				for(i=0;i<o.length;i++){
					html += "<tr>";
					html += "<td>"+o[i].pb_num+"</td>";
					html += "<td><a href='${pageContext.request.contextPath}/sell/sellist.do?pb_num="+o[i].pb_num+"'>"+o[i].title+"</a></td>";
					html += "<td>"+o[i].img_path+"</td>";
					html += "<td>"+o[i].writer+"</td>";
					html += "<td>"+o[i].w_date+"</td>";
					html += "<td>"+o[i].product_name+"</td>";
					html += "<td>"+o[i].price+"</td>";
					html += "<td>"+o[i].agency+"</td>";
					html += "</tr>";
				}
			html +="</table>";
			myDiv.innerHTML = html;
			}
			}
		}
	
	
</script>
</head>
<body>
<h3>판매목록</h3>
<a href="${pageContext.request.contextPath }/join/sellreg.do">
판매하러가기ㄱㄱ</a><br><br>

<table class=table12_4 >
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>제품사진</th>
		<th>제품명</th>
 		<th>가격</th>
		<th>통신사</th> 
		<th>작성자</th>
		<th>작성일</th>
	</tr>
	
	<c:forEach var="a" items="${list}">
	<tr>
			<td>${a.pb_num}</td>
			<td><a href="${pageContext.request.contextPath}/sell/selldetail.do?pb_num=${a.pb_num}">${a.title}</a></td>
			<td><a href="${pageContext.request.contextPath}/sell/selldetail.do?pb_num=${a.pb_num}"><img src="${a.img_path }" width="200px" height="200px"></a></td>
			<td>${a.product_name }</td>
			<td>${a.price }&nbsp;원</td>
			<td>${a.agency }</td>
			<td>${a.writer}</td>
			<td>${a.w_date}</td>
	</tr>
	</c:forEach>

</table>

<div id="previewDiv" style="postition:absolute;top:500px;left:300px;"></div>
<form action = "${pageContext.request.contextPath}/sell/sellist.do" name="f2" method="post">
<input type="radio" name="type" value="1" checked>작성자
<input type="radio" name="type" value="2">제목
<input type="text" name="keyword">
<input type="button" value="검색" onclick="search()">

</form>
<div id="searchDiv"></div>
<input type="button" value="뒤로가기" onclick="back()">

</body>
</html>
