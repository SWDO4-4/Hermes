<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
	

	$(function() {
		$("#fly_button").click(function() {
			 	var url = "${requestScope.fly.url}";
	            var name = "비행기";
	            var option = "width = 1200, height = 500, top = 100, left = 200, location = no"
	            window.open(url, name, option);
			
			})
		});
	
</script>
</head>
<body>

	
	<form action="<c:url value='/flySearch'/>" method="get">
		<table>
		<tr>
			<td>
			<input type="date" name="startDate"> 
			<select name="go">
			
				<option value="">선택해주세요</option>
				<option value="ICN">인천</option>
				<option value="PUS">부산</option>
				<option value="TAE">대구</option>
				<option value="CJJ">청주</option>
				<option value="CJU">제주</option>
				<option value="USN">울산</option>
				<option value="RSU">여수</option>
			</select>
			가는날
			</td>
		</tr>
		<tr>
			<td>
			<input type="date" name="endDate">
			<select name="arrive">
				<option value="">선택해주세요</option>
				<option value="NRT">도쿄(나리타)</option>
				<option value="HND">도쿄(하네다)</option>
				<option value="KIX">오사카</option>
				<option value="FUK">후쿠오카</option>
				<option value="OKA">오키나와</option>
				<option value="CTS">삿포로</option>
			</select>
			오는날
			</td>
		</tr>
		<tr>
			<td>
			<input type="submit" value="정보입력">
			</td>
		</tr>
		</table>
	</form>
	<h1 id="fly_button">비행기예약</h1>
	${requestScope.fly.go}

</body>
</html>