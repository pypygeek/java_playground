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
<%
	String[] movieList = { "타이타닉", "시네마 천국", "흑성 탈출", "킹콩" };
	pageContext.setAttribute("movieList", movieList);
%>
<%-- forEach문으로 배열의 내용을 출력하기 --%>
<c:forEach var = "movie" items="${movieList}">
	${movie}
</c:forEach>
<br>
<ol type = 1>
	<li>빨강</li>
	<li>노랑</li>
	<li>보라</li>
</ol>
<br>
<hr>
<ul>
	<c:forEach var="movie" items="${movieList}" varStatus = "status">
		<c:choose>
			<c:when test="${status.last}">
				<li style="font-weight:bold; color:red;">${movie}</li>
			</c:when>
				<c:otherwise>
					<li>${movie}</li>
				</c:otherwise>
		</c:choose>
	</c:forEach>
</ul>
<br>
<table border="1" cellspacing=0 style="width:100%; text-align:center;">
	<tr>
		<th>index</th>
		<th>count</th>
		<th>title</th>
	</tr>
	<c:forEach var="movie" items="${movieList}" varStatus = "status">
	<tr>
		<td>${status.index}</td>
		<td>${status.count}</td>
		<td>${movie}</td>
	</tr>
	</c:forEach>
</table>
<hr>
<table>
	<c:forEach var="cnt" begin="7" end="10" varStatus="status">
		<tr>
			<td>${status.index}</td>
			<td>${status.count}</td>
			<td>${cnt}</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>