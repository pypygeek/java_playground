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
 	
 	int n = ps.executeUpdate(); // 1은 필드의 순서를 의미
 	String str = "삭제성공";
 	if(n>0) {
 		str += "삭제성공";
 	} else {
 		str = "삭제할 데이터를 찾지 못했습니다. 실패!";
 	}
 	out.println("<br>"+str);
 	ps.close();
 %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
	<a href="student_1.jsp">등록</a>
	<a href="list.jsp">검색</a>
</center>
</body>
</html>
<%
	if(ps!=null) ps.close();
	if(conn != null) conn.close();
%>