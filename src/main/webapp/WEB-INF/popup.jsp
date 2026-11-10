<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팝업</title>
</head>
<body>
<%
  boolean showPopup =true; //팝업이 보여지는 상태를 저장 ->true->팝업이 보여지는상태

  Cookie[] cookies = request.getCookies();
  //클라이언트의 웹브라우저에서 쿠키 가져오기
  if(cookies != null){
	  for(Cookie cookie: cookies){
		  if(cookie.getName().equals("hidePopup")){
			  showPopup=false;
			  break;
		  }
	  }
  }
  //showPopup값이 true->체크하지않고 닫기를 누른 웹브라우저 or 처음 방문한 웹브라우저
  //false->체크한 상태로 닫기 누른 웹브라우저
%>
<%
   if(showPopup){
	   
  
%>
<div style ="border:2px solid black;padding:30px;width:300px;">
<h2>특별 할인 이벤트</h2>
<p> 전 상품 20% 할인 이벤트</p>
겨울 맞이 패딩을 특별이벤트로 20% 전상품 할인합니다.
고객분들의 많은 참여 바라겠습니다.
<form action="popupClose.jsp">
<input type="checkbox" name="onlyToday" value="yes">
오늘 하루 보지 않기 <br><br>
<input type="submit" value="닫기">
</form>
</div>
<%
   }
%>
</body>
</html>