<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.saeyan.javabeans.MemberBean" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
♣ 자바로만들고 가져오는 방식 <br>
<%
	com.saeyan.javabeans.MemberBean member1 = new com.saeyan.javabeans.MemberBean();
	String name = member1.getName();
	out.print(name);
%>
<hr>
<br>♣ 자빈 만들기 <br>
<jsp:useBean class="com.saeyan.javabeans.MemberBean" id="member" scope = "page">
	♣ 자바 빈 객체 생성 후 저장된 정보 출력하기 <br>
	이름 : <%= member.getName() %> <br>
	아이디 : <%= member.getUserid() %> <br>
	<hr>
	<%
		member.setName("강아지 차차");
		member.setUserid("chacha");
	%>
	이름 : <%= member.getName() %> <br>
	아이디 : <%= member.getUserid() %> <br>
	<hr>
	이름 : <jsp:getProperty name="member" property="name" /> <br>
	아이디 : <jsp:getProperty name="member" property="userid" /> <br>
	<hr>
	<jsp:setProperty name="member" property="name" value="moomin"/> <br>
	<jsp:setProperty name="member" property="userid" value="free"/> <br>
	<hr>
	이름 : <jsp:getProperty name="member" property="name" /> <br>
	아이디 : <jsp:getProperty name="member" property="userid" /> <br>
	
</jsp:useBean>
</body>
</html>