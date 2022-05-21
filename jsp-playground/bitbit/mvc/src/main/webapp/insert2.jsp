<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="student" class="com.test.ex.StudentDTO"/>
<jsp:useBean id="stu" class="com.test.ex.StudentDAO"/>
<%
	String no = request.getParameter("no");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	
	
	int n = stu.insertStudent(no, pw, name, hp);
	
	if(n>0) {
		out.println("입력성공<br>");
	} else {
		out.println("입력실패<br>");
	}
%>
</body>
</html>