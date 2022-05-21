<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html><html><head><meta charset="UTF-8"><title>Insert </title></head>
<body>
<%!
   String driver ="oracle.jdbc.driver.OracleDriver";
   Connection conn;   
   PreparedStatement ps;
   String url ="jdbc:oracle:thin:@localhost:1521:xe";
   String uid ="system";
   String upw ="1234";
   String sql ="insert into student values(?,?,?,?)";   
%>
<%
try{	
	String no =request.getParameter("no");
	String pw =request.getParameter("pw");
	String name =request.getParameter("name");
	String hp =request.getParameter("hp");
	out.println(no+","+pw+","+name+","+hp+"<br>");
	
   Class.forName(driver);
   conn =DriverManager.getConnection(url,uid,upw); 
   ps =conn.prepareStatement(sql);   
   ps.setString(1,no);
   ps.setString(2,pw);
   ps.setString(3,name);
   ps.setString(4,hp);
   int n =ps.executeUpdate();
   if(n>0)
	   out.println("입력성공<br>");
   else
	   out.println("입력실패<br>");
   
}catch(Exception e){}
finally{	
	ps.close();
	conn.close();	
}
%>
<h3>회원 가입 성공</h3>
	<a href="list.jsp"> 회원 전체 목록 보기 </a> }
</body>
</html>