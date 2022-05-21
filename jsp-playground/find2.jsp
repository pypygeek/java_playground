<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="com.test.ex.StudentDTO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id = "stu" class = "com.test.ex.StudentDAO"/>
<%
   String name = request.getParameter("name");
if(name ==null ||name.trim().equals("")){
	response.sendRedirect("student_2.jsp");
	return;
}//클라이언트쪽 유효성 검사
 StudentDTO[] arr =stu.find(name);
 if(arr ==null)
	 out.println(name+" 님은 존재하지 않습니다.<br>");
%>
<table border=1 cellspacing =0 >
<tr>
   <td>번호</td>
   <td>비밀번호</td>
   <td>이름</td>
   <td>전화번호</td>
</tr>
<%
  for(StudentDTO dto:arr){	  
%>
<tr>
   <td><%=dto.getNo() %></td>
   <td><%= dto.getPw()%></td>
   <td><%= dto.getName()%></td>
   <td><%= dto.getHp()%></td>
</tr>
<%
    }
%>

</table>
</body>
</html>