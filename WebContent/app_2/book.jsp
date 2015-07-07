<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

     <h3>Book detail infomation</h3>
	
	bookName:<%= request.getParameter("book") %>
	<br><br>
	
	<a href="books.jsp">Return books list</a>
	
	<%
	 String book = request.getParameter("book");
	 
	 List<Cookie> bookCookies = new ArrayList<Cookie>();
	 
	 Cookie tempCookie = null;
	
	 Cookie[] cookies = request.getCookies();
	 if( cookies != null && cookies.length > 0 )
	 {
		for( Cookie cookie : cookies )
		{
			 String cookieName = cookie.getName();
			 
			 if( cookieName.startsWith("book_") )
			 {
				 bookCookies.add(cookie);
				 
				 if( cookie.getValue().equals( book ) )
				 {
					 tempCookie = cookie;
				 }
			 }
		}
	 }
	 
	 //判断传入大book在不在cookie中
	 if( bookCookies.size() >= 5 && tempCookie == null )
	 {
		 tempCookie = bookCookies.get(0);
	 }
	 
	 if( tempCookie != null )
	 {
		 tempCookie.setMaxAge(0);
		 response.addCookie(tempCookie);
	 }
	
	 // 添加到cookie中
	 Cookie cookie = new Cookie( "book_" + book ,book);
	 response.addCookie(cookie);
	%>
	
</body>
</html>