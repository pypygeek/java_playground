<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${"hello"}<br>
<%! String str = "Hello"; %>
<%=str %><br>
<%="Hello2" %><br>
<% out.println("Hello3"); %><br>
null:${null} <br>
${3==4}<br>
<% String input = null; %>
\1.${empty input}<br>
${5+2}:{5+2}<br>
${5/2}:{5/2}<br>
${5%2}:{5%2}<br>
${5>2}:{5>2}<br>
${(3>4)3:4}:{(3>4)3:4}<br>
${5>2 || 5<2}:{5>2 || 5<2}<br>
</body>
</html>