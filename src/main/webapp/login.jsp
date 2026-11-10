<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<%
     Cookie[] cookies = request.getCookies();
     //저장된 쿠키 확인하기
     if(cookies!=null){
    	     for(int i=0;i<cookies.length;i++){
  
    		 out.println(cookies[i].getName()+"<br>");
    		 out.println(cookies[i].getValue()+"<br>");
    		 out.println("===================="+"<br>");
    	     }
    	     }else {
    	     out.println("첫방문이시군요! 저장된 쿠키가 없습니다.");
             }
%>

<h2>회원 로그인</h2>
<hr>
<form action= "loginok.jsp">
아이디:  <input type="text" name="memberId"><br><br>
비밀번호: <input type="password" name="memberPw"><br><br>
        <input type="submit" value="로그인">
</form>

</body>
</html>