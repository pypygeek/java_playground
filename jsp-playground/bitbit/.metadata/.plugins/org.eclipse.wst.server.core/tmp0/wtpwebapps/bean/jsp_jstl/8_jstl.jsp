<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:out value="음료수"></c:out>
	<c:set var="msg" value="hello" scope="page"></c:set><br>
	\${msg} = ${msg}<br>
	<c:set var="age" scope="request">
		25
	</c:set>
	\${age} = ${age}<br>
	<c:remove var="age"></c:remove>
	\${age} = ${age}<br>
	<hr>
	<c:set var="member" value="<%= new com.saeyan.javabeans.MemberBean() %>"></c:set>
	<c:set target="${member}" property="name" value="아이유" ></c:set>
	<c:set target="${member}" property="userid">카카오톡</c:set>
	\${member.name} = ${member.name}<br>
	\${member.userid} = ${member.userid}<br><hr>
	
	<c:set var="add" value="${10 + 5}"></c:set>
	\${add} = ${add}<br>
	<c:set var="flag" value="${10 > 5}"></c:set>
	\${flag} = ${flag}<br>
</body>
</html>