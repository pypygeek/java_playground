<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   request.setCharacterEncoding("UTF-8");
    String name  =request.getParameter("name");
    out.print("name:"+ name);
  
    String gender = request.getParameter("gender");
	out.println("성별 : ");
	if(gender.equals("male"))
		out.print("남성입니다.<br>");
	else 
		out.print("여성입니다.<br>");
	
	String seasonArr[] = request.getParameterValues("season");
	out.println("당신이 좋아하는 계절은 ");
	for(String season:seasonArr){
		int n = Integer.parseInt(season);
		switch(n){
		case 1: out.print("봄을 좋아하는 군요<br>");
		        break;
		case 2: out.print("여름을 좋아하는 군요<br>");
                break;
		case 3: out.print("가을을 좋아하는 군요<br>");
                break;
		case 4: out.print("겨율을 좋아하는 군요<br>");
               break;
		}
	}
%>
</body>
</html>