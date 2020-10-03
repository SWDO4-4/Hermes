<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 검색</title>
</head>
<body>

	<form action="<c:url value='/event'/>" method="get">
		<table>
		<tr>
			<td>
			<input type="date" name="eventDate">
			<input type="submit" value="등록">
			</td>

			</tr>
		</table>
	</form>








</body>
</html>