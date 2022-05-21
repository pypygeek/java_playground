<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
   String driver ="oracle.jdbc.driver.OracleDriver";
   Connection conn;
   Statement statement;
   String url ="jdbc:oracle:thin:@localhost:1521:xe";
   String uid ="system";
   String upw ="1234";
   String sql ="select * from student";
   ResultSet rs ;
%>
<b><a href="student_1.jsp">입력/검색/삭제 폼</a></b>
<table width=400 border=1 cellspacing =0 bordercolor=blue>
		<tr>
			<th>학번</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>전화번호</th>			
		</tr>
<% 
try{
   Class.forName(driver);
   conn =DriverManager.getConnection(url,uid,upw);
   statement =conn.createStatement();
   rs =statement.executeQuery(sql);
   out.println("<h2>student table</h2>");
   while(rs.next()){
	   String no =rs.getString("no");
	   String pw =rs.getString("pw");
	   String name =rs.getString("name");
	   String hp =rs.getString("hp");	   
	   //out.println(no+","+pw+","+name+","+hp+"<br>");
	   out.println("<tr>");
	   out.println("<td>" + rs.getString("no") + "</td>");
	   out.println("<td>" + rs.getString("pw") + "</td>");
	   out.println("<td>" + rs.getString("name") + "</td>");
	   out.println("<td>" + rs.getString("hp") + "</td>");					
	   out.println("</tr>");
   }  

}catch(Exception e){}
finally{
	rs.close();
	statement.close();
	conn.close();	
}
%>
</body></html>
<%-- <tr>
	  <td><%=no %></td>
	  <td><%=pw %></td>
	  <td><%=name %></td>
	  <td><%=hp %></td>
	</tr>  --%>