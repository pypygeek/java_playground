<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	th{
		background:beige;
	}
	td{
		text-align:center;
	}
</style>
</head>
<body>
<%!
	Connection conn = null;	//오라클 연동시 로그인할 때 사용
	Statement stmt = null;	// 질의문을 사용할 때
	ResultSet rs = null;
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String uid = "system";
	String pass = "1234";
	String sql = "select * from student";
%>
<center><h2>member table</h2></center><hr>
<table width='800' border=1 cellspacing=0>
	<tr>
		<th width=300>학번</th>
		<th>아이디</th>
		<th>암호</th>
		<th>전화번호</th>
	</tr>
	<%
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(url,uid,pass);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			out.println("<tr>");
			out.println("<td>" + rs.getString("no") + "</td>");
			// out.println("<td>" + rs.getString("name") + "</td>");
			// out.println("<td>" + rs.getString("userid") + "</td>");
			out.println("<td>" + rs.getString("pw") + "</td>");
			out.println("<td>" + rs.getString("name") + "</td>");
			//out.println("<td>" + rs.getString("email") + "</td>");
			out.println("<td>" + rs.getString("hp") + "</td>");
			//out.println("<td>" + rs.getString("admin") + "</td>");
			out.println("</tr>");
		}
	}catch(Exception e){
		
	} finally{
		if(rs != null) {
			rs.close();
		}
		conn.close();
		stmt.close();
		}
	%>
	<tr>
		<td colspan=6><a href = "02_addMemberform.jsp">글쓰기</a></td>
	</tr>
</table>
</body>
</html>