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
   PreparedStatement ps;
   String url ="jdbc:oracle:thin:@localhost:1521:xe";
   String uid ="system";
   String upw ="1234";
   String sql ="select count(*) from student where name =?";
   String sql1 ="select * from student where name =?";   
   
   //String sql2 ="select * from student where no =?";
   ResultSet rs ;
   int count ;
   String name;
%>
<%
try{	
	//String no =request.getParameter("no");	
	name =request.getParameter("name");		
	
   Class.forName(driver);
   conn =DriverManager.getConnection(url,uid,upw); 
   ps =conn.prepareStatement(sql);   
   ps.setString(1,name);
   rs =ps.executeQuery();
   
  rs.next();
  count =rs.getInt(1);  //필드의 순서  
  out.println("갯수:"+count+"<br>"); 
}catch(Exception e){}
%>
<a href="list.jsp">회원목록보기</a>/<a href="student_1.jsp">검색화면</a> 
<h3>검색 성공</h3>
<table width =400 border=1 cellspacing =0 bordercolor =pink>
   <tr align =center>
   <td>no</td><td>pw</td><td>name</td><td>hp</td>
   </tr>
   <%
     if(count>0){    	 
    	 ps =conn.prepareStatement(sql1);  
         ps.setString(1,name);  
         rs=ps.executeQuery();   
         while(rs.next()){
        	 String no =rs.getString(1);
        	 String pw =rs.getString(2);
        	 String name=rs.getString(3);
        	 String hp =rs.getString(4);
         %>
        	<tr align =center><td><%=no %></td>  
        	<td><%=pw %></td>
        	<td><%=name %></td>    
        	<td><%=hp %></td>  
        	</tr>
       <% 	
        }//while
        	 out.println("<tr><td colspan =4>");
        	 out.println(name+"님은 "+count+" 명 존재합니다.");
        	 out.println("</td></tr>");
     }else{
    	 out.println("<tr><td colspan =4>");
    	 out.println(name+"님은 존재하지 않습니다.");
    	 out.println("</td></tr>");
     }
   %>
</table>
<%
	rs.close();
	ps.close();
	conn.close();	

%>	
</body>
</html>