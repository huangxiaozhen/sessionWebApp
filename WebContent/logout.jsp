<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

   
    sessionId:
	<%=session.getId()%>
	<br>
	<br>

    isNew:<%= session.isNew() %>
	<br>
	<br>

    maxInactiveInterval:<%= session.getMaxInactiveInterval() %>
	<br>
	<br>
   
    createTime:<%= session.getCreationTime() %>
	<br>
	<br>
	
	lastAccessTime:<%= session.getLastAccessedTime() %>
	<br>
	<br>
	
	Bye:<%= session.getAttribute( "username") %>
	
	<%
	  session.invalidate();
	%>
	
	<a href="login.jsp">重新登陆</a>


</body>
</html>