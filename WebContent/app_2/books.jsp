<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<h3>Books Page</h3>

	<a href="book.jsp?book=AAAA "> AAAA </a>
	<br><br>
	
	<a href="book.jsp?book=BBBB"> BBBB </a>
	<br><br>
	
	<a href="book.jsp?book=CCCC"> CCCC </a>
	<br><br>
	
	<a href="book.jsp?book=DDDD"> DDDD </a>
	<br><br>
	
	<a href="book.jsp?book=EEEE "> EEEE</a>
	<br><br>
	
	<a href="book.jsp?book=FFFF "> FFFF </a>
	<br><br>
	
	<a href="book.jsp?book=GGGG "> GGGG </a>
	<br><br>
	
	<a href="book.jsp?book=HHHH "> HHHH </a>
	<br><br>
	
	<a href="book.jsp?book=IIII "> IIII </a>
	<br><br>
	
	<a href="book.jsp?book=JJJJ "> JJJJ </a>
	<br><br>
	
	
	<%
	 Cookie[] cookies = request.getCookies();
	
	if( cookies != null && cookies.length > 0 )
	{
		for( Cookie cookie : cookies )
		{
			String name = cookie.getName();
			if( name.startsWith("book_") )
			{
				out.print(cookie.getValue() +  "<br>");
			}
		}
	}
	%>




</body>
</html>