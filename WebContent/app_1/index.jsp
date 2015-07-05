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
  
   String name = request.getParameter("name");
  
  if( name != null && !name.trim().equals("") )
  {
	  Cookie cookie = new Cookie("customer" ,name);
	  cookie.setMaxAge(10);
	  response.addCookie(cookie);
  }else
  {
	  Cookie[] cookies = request.getCookies();
	  for( Cookie cookie : cookies )
	  {
		  String cookieName = cookie.getName();
		  if( cookie.getValue().equals( "customer" ) )
		  {
			  String value = cookie.getValue();
			  name = value; 
			  break;
		  }
	  }
	  
  }
  
  if(  name != null && !name.trim().equals("") )
  {
	  out.print("Hello: " + name);
	  
  }else
  {
	  response.sendRedirect("login.jsp");
  }
  
  
  %>

</body>
</html>