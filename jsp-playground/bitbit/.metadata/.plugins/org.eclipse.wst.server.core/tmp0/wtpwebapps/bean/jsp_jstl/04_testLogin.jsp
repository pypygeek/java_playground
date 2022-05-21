<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.getParameter("id"); %><br>
	<% request.getParameter("pwd"); %><br>
	@@@el태그를 이용하여 출력하기 <br>
	당신이 입력한 정보입니다.(EL 방식). <hr>
	아이디 : ${param.id}<br>
	비밀번호 : ${param["pwd"]}
</body>
</html>