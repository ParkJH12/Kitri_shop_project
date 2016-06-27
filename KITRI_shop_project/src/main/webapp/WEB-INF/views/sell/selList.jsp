<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/httpRequest.js"></script>
<script type="text/javascript">

	function over(num){
		var param = "num="+num;
		sendRequest("${pageContext.request.contextPath}/board/preview.do", param, previewResult, "POST");
		
	}
	function previewResult() {
		if (httpRequest.readyState == 4) {
			if (httpRequest.status == 200) {
				var str = httpRequest.responsText;
				var o = eval("(" + str + ")");
				var myDiv = document.getElementById("previewDiv");
				var html = o.content;
				myDiv.innerHTML = html;

			}

		}
	}
	function out(){
		var myDiv = document.getElementById("previewDiv");
		myDiv.innerHTML ="";
		
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
			url = "searchById.do";

		}else if(x==2){
			param = "title"+document.f2.keyword.value;
			url = "searchByTitle.do";
		}
		sendRequest("${pageContext.request.contextPath}/board/"+url, param, searchResult, "POST")
		
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
					html += "<td>"+o[i].num+"</td>";
					html += "<td>"+o[i].writer+"</td>";
					html += "<td>"+o[i].w_date+"</td>";
					html += "<td><a href='${pageContext.request.contextPath}board/read.do?num="+o[i].num+"'>"+o[i].title+"</a></td>";
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
<h3>글목록</h3>

<a href="${pageContext.request.contextPath }/join/sellreg.do">
판매등록</a><br>


<table border="1" cellspacing="0">
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>작성일</th>
	</tr>
	
	<c:forEach var="a" items="${list}">
	<tr>
			<td>${a.pb_num}</td>
			<td><a href="${pageContext.request.contextPath}/sell/selldetail.do?num=${a.pb_num}">${a.title}</a></td>
			<td>${a.writer}</td>
			<td>${a.w_date}</td>
	</tr>
	</c:forEach>

</table>
<div id="previewDiv" style="postition:absolute;top:100px;left:300px;"></div>
<form form action = "${pageContext.request.contextPath}/sell/selllist.do" name="sell_list" method="post">
<input type="radio" name="type" value="1" checked>작성자
<input type="radio" name="type" value="2">제목
<input type="text" name="keyword">
<input type="button" value="검색" onclick="search()">
</form>
<div id="searchDiv"></div>
</body>
</html>
