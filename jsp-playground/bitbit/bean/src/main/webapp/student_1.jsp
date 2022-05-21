<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>student_1.jsp</title>
<style>
 h3{background:yellow;color:blue; width:300px; padding:10px;}
</style>
</head>
<body>
<center><b>
<h3>학생등록하기</h3><hr width =300>
<form action = "insert.jsp">
    학번:<input type="text" name = "no"/><br>
    비밀번호:<input type="text" name = "pw"/><br>
    이름:<input type="text" name = "name"/><br>
    전화번호:<input type="text" name = "hp"/><br>
     <input type ="submit" value ="등록"/>
     <input type ="reset" value ="취소"/>
<a href="list.jsp">목록보기</a></form>

<form action = "find.jsp">
   <h3>학생검색하기</h3><hr width =300>
   학번:<input type="text" name = "no"/><br>
   이름:<input type="text" name = "name"/><br>
   <input type ="submit" value ="검색"/>
   <input type ="reset" value ="취소"/>
 </form>
   <a href="list.jsp">목록보기</a>

<h3>학생삭제하기</h3><hr width =300>
<form action = "delete.jsp">
  학번:<input type="text" name = "no"/><br>
  이름:<input type="text" name = "name"/><br>
  <input type ="submit" value ="삭제"/>
   <input type ="reset" value ="취소"/>
</form>
<a href="list.jsp">목록보기</a>
</b></center>
</body>
</html>