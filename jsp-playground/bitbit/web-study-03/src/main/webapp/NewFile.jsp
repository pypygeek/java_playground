<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="jstest.js"></script>
</head>
<body>
<h1>서버로 전달하는 방법1</h1>
<form action="Servlet" method = "post" name="form">
	id: <input type  = "text" name = "id" /><br>
	age: <input type ="text" name = "age" ><br>
	좋아하는 과일입력:<input type = "text" name = "fruit"><br>
	pw: <input type  = "password" name = "pw" /><br>
	성별:<br>
	<input type = "radio" id = "mail" value = "남성" name = "gender"/>mail
	<input type = "radio" id = "fmail" value = "여성" name = "gender"/>fmail
	<br>
	인사 및 남기고 싶은말<br>
	<textarea rows="5" cols="40" name="ta"></textarea><br>
	관심분야:<input type="checkbox" name="check" value="DB">DB
	<input type="checkbox" name="check" value="movie">movie
	<input type="checkbox" name="check" value="english">english
	<input type="checkbox" name="check" value="game">game<br>
	<select id = "coffee" name = "bean">
		<option value = "americano">americano</option>
		<option value = "valina Latte">valina Latte</option>
		<option value = "moca">moca</option>
	</select>
	<input type = "submit" value = "submit" onclick="return check()">
	<input type = "reset" value = "cansle">
</form>
<%!
	String str = "안녕하세요!";
	int a = 10, b = -5;
	public int abs(int n){
		if(n<0) {
			n = -n;
		}
		return n;
	}
%>
<%
	out.print(a+"의 절대값:" + abs(a)+"<BR>");
%>
str=<%=str %><br>
a=<%=a %><br>
b=<%=b %><br>
<%
	a = a+b;
	b = b*3;
	out.print(a+"<BR>");
	out.print(b+"<BR>");
%>
<%@ include file="footer.jsp" %>
</body>
</html>