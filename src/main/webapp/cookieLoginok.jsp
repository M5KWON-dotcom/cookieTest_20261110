<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");

    String mid= request.getParameter("memberId");
    String mpw= request.getParameter("memberPw");
    
    String saveCheck=request.getParameter("savecheck");
    //체크박스에서 체크되어있는 상태로 본페이지로 이동되면 saveId가 yes가 됨
    
    if(mid.equals("tiger")&&mpw.equals("12345")){
    	session.setAttribute("sid", mid);
    	if(saveCheck !=null){
    	Cookie cookie1 = new Cookie("cid",mid);
    	
    	
       	
    
    	response.addCookie(cookie1); 
    	
    	response.sendRedirect("loginSuccess.jsp"); 
    	 
    	}
    	
    	
    }

%>

</body>
</html>