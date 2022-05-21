<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<h2>회원정보 입력폼</h2>
<form action="02_addMember.jsp" method="post">
	<table>
		<tr><td>학번</td><td><input type="text" name="no"></td></tr>
		<tr><td>비밀번호</td><td><input type="password" name="pw"></td></tr>
		<tr><td>이름</td><td><input type="text" name="name"></td></tr>
		<tr><td>전화번호</td><td><input type="text" id="hp" name="hp"></td></tr>
		<tr>
			<td>
				<input type="submit" value="전송">
			</td>
			<td>
				<input type="reset" value="취소">
			</td>
		</tr>
		</form>
	</table><br>
	<h2>학생 검색</h2><hr width = 400/>
		<form action="find.jsp" method="post">
			<tr>
				<td>이름</td><input type = "text" name = "name"/>
			</tr>
			<tr>
				<td cellspan = 2><input type = "submit" value="전송"/>
			</tr>
		</form>
		><br>
	<h2>학생 삭제</h2><hr width = 400/>
		<form action="delete.jsp" method="post">
			<tr>
				<td>이름</td><input type = "text" name = "name"/>
			</tr>
			<tr>
				<td cellspan = 2><input type = "submit" value="전송"/>
			</tr>
		</form>
</center>
</body>
</html>