<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트정보</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
</script>
</head>
<body>

<h1>이벤트</h1>
<table>
	<tr>
		<th>사진</th>
		<th>제목</td>
		<th>내용</th>
		<th>기간</th>
		<th>위치</th>
	</tr>
	<c:forEach items="${requestScope.list}" var="eventVO">
		<tr>
			<td><img src="${eventVO.img}" /></td>
			<td>${eventVO.title}</td>
			<td>${eventVO.content}</td>
			<td>${eventVO.period}</td>
			<td>${eventVO.location}</td>
		</tr>	
	</c:forEach>
</table>
		
	




</body>
</html>