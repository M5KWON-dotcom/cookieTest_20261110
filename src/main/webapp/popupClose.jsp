<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팝업 닫기</title>
</head>
<body>
<%
   String closeToday = request.getParameter("onlyToday");
//유저가 오늘하루 보지않기 체크박스 체크여부 불러오기
   if(closeToday!= null){ //true->유저가 체크박스에 체크를 한상태로 닫기 버튼클릭
	   Cookie cookie =new Cookie("hidePopup","yes");
	   
       cookie.setMaxAge(60*60*24);
	   response.addCookie(cookie);
   }
   response.sendRedirect("cookie");

%>
</body>
</html>