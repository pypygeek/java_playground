<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>설문조사</h1>
	<form action="">
	이름: <input type="radio" id="male" name="gender" value="male">
			<label for=" male">남성</label>
			<br>
			<input type="radio" id="female" name="gender" value="female">
			<label for=" female">여성</label>
			
			<br>
			
			좋아하는 계절: <input type="checkbox" name="spring" value="spring">봄<br>
			 <input type="checkbox" name="spring" value="spring">여름<br>
			  <input type="checkbox" name="spring" value="spring">가을<br>
			   <input type="checkbox" name="spring" value="spring">겨울<br>
			   
			   <input type="submit" value="전송">
			   
			   </form>
			   <button>취소</button>
</body>
</html>