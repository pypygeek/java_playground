<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="simple1" class = "unit04.simple">
	<jsp:setProperty property = "name" name = "simple1" value = "Kim"/>
	<jsp:setProperty property = "id" name = "simple1" value = "papago"/>
	<jsp:setProperty property = "pwd" name = "simple1" value = "1234"/>
	<jsp:setProperty property = "email" name = "simple1" value = "test@test.com"/>
</jsp:useBean><br>

<jsp:useBean id="lunch" class = "unit04.Menu">
	<jsp:setProperty property = "shopMenu" name = "lunch" value = "BongRiceBugger"/>
	<jsp:setProperty property = "name" name = "lunch" value = "RiceBugger"/>
	<jsp:setProperty property = "price" name = "lunch" value = "3500"/>
</jsp:useBean><br>

<jsp:useBean id="dinner" class = "unit04.Menu">
	<jsp:setProperty property = "shopMenu" name = "dinner" value = "don'tKnowdoller"/>
	<jsp:setProperty property = "name" name = "dinner" value = "egg"/>
	<jsp:setProperty property = "price" name = "dinner" value = "500"/>
</jsp:useBean><br>

<h1>
	<jsp:getProperty name = "simple1" property = "name" />님 환영합니다.<br>
	<jsp:getProperty name = "simple1" property = "id" /><br>
	<jsp:getProperty name = "simple1" property = "pwd" /><br>
	<jsp:getProperty name = "simple1" property = "email" /><br>
	<br>오늘 먹을 점심은 아래와 같습니다.<br>
	<jsp:getProperty name = "lunch" property = "shopMenu" />음식점<br>
	<jsp:getProperty name = "lunch" property = "name" /><br>
	<jsp:getProperty name = "lunch" property = "price" />원<br>
	<br>오늘 먹을 저녁은 아래와 같습니다.<br>
	<jsp:getProperty name = "dinner" property = "shopMenu" />음식점<br>
	<jsp:getProperty name = "dinner" property = "name" /><br>
	<jsp:getProperty name = "dinner" property = "price" />원<br>
</h1>

</body>
</html>