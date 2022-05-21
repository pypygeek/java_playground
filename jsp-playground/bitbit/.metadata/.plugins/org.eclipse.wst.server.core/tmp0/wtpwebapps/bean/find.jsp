<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*" %>
 
 <%
 	// 입력값을 얻어오기
 	String name = request.getParameter("name");
 	// 유효성 체크
 	if(name == null || name.trim().equals("")){
 		response.sendRedirect("01_allMember.jsp");
 		return;
 	}
 	//데이터베이스 연결
 	request.setCharacterEncoding("UTF-8");
 	Class.forName("oracle.jdbc.driver.OracleDriver");
 	String url = "jdbc:oracle:thin:@localhost:1521:XE";
 	String uid = "system", pwd = "1234";
 	
 	Connection conn = DriverManager.getConnection(url, uid, pwd);
 	
 	out.println("데이터베이스 연결 완료 : "+ conn);
 	
 	String sql = "select count(*) from student where name=?";
 	String sql2 = "select * from student where name=?";
 	
 	PreparedStatement ps = conn.prepareStatement(sql);
 	ps.setString(1, name);
 	ResultSet rs = ps.executeQuery();
 	rs.next();
 	
 	int cnt = rs.getInt(1); // 1은 필드의 순서를 의미
 	
 	rs.close();
 	ps.close();
 	
 	out.println("<br/>"+cnt+"명");
 	
 %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="student_1.jsp">등록</a>
	<a href="find.jsp">검색</a>
<table width = 500 border=1>
	<tr>
		<th width=25%>학번</th>
		<th width=25%>비밀번호</th>
		<th width=25%>이름</th>
		<th width=25%>전화번호</th>
	</tr>
	<%
		if(cnt>0) {
			ps=conn.prepareStatement(sql2);
			ps.setString(1, name);
			rs = ps.executeQuery();
			while(rs.next()){
				String no = rs.getString(1);
				String pw = rs.getString(2);
				String name2 = rs.getString(3);
				String hp = rs.getString(4);
	%>
	<tr>
		<td><%=no %></td>
		<td><%=pw %></td>
		<td><%=name2 %></td>
		<td><%=hp %></td>
	</tr>
	<%
			} //while End
		out.println("<tr><td colspan=4>");
		out.println(name+"님 은 전체"+cnt+"명 입니다.");
		out.println("</td></tr>");
		}
	%>
</table>
</body>
</html>