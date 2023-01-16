<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 환영</title>
</head>
<body>
	<% 
		Cookie[] cookies= request.getCookies();  //배열로 뺴야함
		
		for(int i=0;i<cookies.length;i++){
			
			String cookieValue = cookies[i].getValue();
			String cookieName = cookies[i].getName();
			int cookiAge = cookies[i].getMaxAge();  //쿠키의 유효시간
			
			out.println(cookieValue + "<br>");
			out.println("-------------------------<br>");
			out.println(cookieName + "<br>");
			out.println("-------------------------<br>");
			out.println(cookiAge + "<br>");
			out.println("-------------------------<br>");
			
			//if(cookieValue.equals("tiger")){
			//	out.println(cookieValue+"님 안녕하세요. 로그인 하셨습니다.");
			//}
		}
		
	%>
	  <a href="Logout.jsp">로그아웃</a>
</body>
</html>