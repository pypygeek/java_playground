<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:url value = "a.png" var = "data"></c:url>
${data}<hr>
<img alt="아이스스케이팅 그림이 놓일자리" src="${data}" width=150 height=100/>
<c:forTokens var="city" items="서울#인천#대구#부산" delims="#">
<hr>
${city} <br>
</c:forTokens>
<hr>
<c:forTokens var="city" items="서울# 인천# 대구# 부산" delims=",.">
${city} <br>
</c:forTokens>
</body>
</html>