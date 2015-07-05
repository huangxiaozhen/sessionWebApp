<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		Cookie[] cookies = request.getCookies();
	
	    String value = null;

		if (cookies != null && cookies.length > 0)
		{
			for (Cookie cookie : cookies)
			{
				String cookieName = cookie.getName();
				
				if( cookieName.equals( "cookiePath" ) )
				{
					value = cookie.getValue();
				}
			}
		}
	%>
	
	cookieValue: <%= value %>

</body>
</html>