<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h4>Step1: 选择要购买的图书</h4>

	<form action="<%= request.getContextPath() %>/processStep1" method="post">

		<table border="1px" cellpadding="10px" cellspacing="0px">

			<tr>
				<th>书名</th>
				<th>购买</th>
			</tr>

			<tr>
				<td>Java</td>
				<td><input type="checkbox" name="book" value="Java" /></td>
			</tr>

			<tr>
				<td>Oracle</td>
				<td><input type="checkbox" name="book" value="Oracle" /></td>
			</tr>

			<tr>
				<td>Hibernate</td>
				<td><input type="checkbox" name="book" value="Hibernate" /></td>
			</tr>
			
			<tr>
			  <td colspan="2"><input type="submit" value="Submit"  /> </td>
			</tr>
		</table>

	</form>

</body>
</html>