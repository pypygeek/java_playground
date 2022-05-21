<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="13_choose.jsp" method="get">
과일을 선택하세요.<br>
	<section id="fruit" name="fruit">
		<option value = "1">사과</option>
		<option value = "2">메론</option>
		<option value = "3">바나나</option>
		<option value = "null">null 선택</option>
	</section>
	<input type="submit" value="전송">
</form>
</body>
</html>