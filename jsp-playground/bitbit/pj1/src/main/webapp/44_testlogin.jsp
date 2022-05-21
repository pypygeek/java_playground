<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = "sung";
	String pwd = "1234";
	String name = "성윤정";
	
	request.setCharacterEncoding("UTF-8"); // post 한글 깨짐 방지코드
	
	if(id.equals(request.getParameter("id")) && pwd.equals(request.getParameter("pwd"))) {
		response.sendRedirect("44_main.jsp?name="+ URLEncoder.encode(name, "UTF-8"));
	} else {
		response.sendRedirect("44_logunform.jsp");
	}
%>
</body>
</html>