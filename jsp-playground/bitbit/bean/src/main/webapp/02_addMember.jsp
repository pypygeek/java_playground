<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.PreparedStatement" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!    
    Connection conn = null;    
   PreparedStatement pstmt = null;
   String url = "jdbc:oracle:thin:@localhost:1521:XE";
   String uid = "system";
   String pass = "1234";
   String sql ="insert into student values(?,?,?,?)";
   %>   
   <%
      request.setCharacterEncoding("UTF-8");
      String no = request.getParameter("no");
      String pw = request.getParameter("pw");
      String name = request.getParameter("name");
      String hp = request.getParameter("hp");
      
      out.println("학번 : "+no+", 비밀번호 : "+pw+", 이름 : "+name+", 전화번호 : "+hp);
      
      if(no == null || pw == null || name == null || hp == null || no.trim().equals("") || pw.trim().equals("") || name.trim().equals("") || hp.trim().equals("")) {
     %>
     <script type="text/javascript">
     	alert("학번, 비밀번호, 이름, 전화번호를 공란없이 입력하세요!!");
     	history.back();
     </script>
     
     <%
      }
      
      try {
      //1드라이버 찾기 
      Class.forName("oracle.jdbc.driver.OracleDriver");
      //2. 오라클과연결
      conn = DriverManager.getConnection(url, uid, pass);
      //3.질의문 넣어 실행하기 
      pstmt = conn.prepareStatement(sql);
       //4. 바인딩변수 연결
      pstmt.setString(1,no);
      pstmt.setString(2, pw);
      pstmt.setString(3,name);
      pstmt.setString(4,hp);
      //실행하기 
      pstmt.executeUpdate();
      
      }catch(Exception e){}
      %>
      <h3>회원가입성공<br>
      <a href ="01_allMember.jsp">전체내용보기</a>
      </h3>
</body>
</html>