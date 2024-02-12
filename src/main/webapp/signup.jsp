<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.html" %>

<div style="position:absolute; left:30%; top:35%">
<h1>User SignUp</h1>
<label style="color:red;padding-left: 50px;">
<% 
String msg=request.getParameter("msg");
if(msg!=null)
	out.println(msg);
%>
</label>
<form action="register_users_db.jsp" method="post" style="padding-left:10px;margin-top:20px; background-color:pink;border:solid 1px;">
<table cellspacing=20>
	<tr>
	<td><label>Username:</label></td>
	<td><input type="text" name="user" required="required"></td>
	</tr>
	
	<tr>
	<td><label>Password:</label></td>
	<td><input type="password" name="pass" required="required"></td>
	</tr>
	
	<tr>
	<td><label>Email:</label></td>
	<td><input type="email" name="email" required="required"></td>
	</tr>
	
	<tr>
	<td><label>Mobile No:</label></td>
	<td><input type="number" name="mobile" required="required"></td>
	</tr>
	
	<tr>
	<td><input type="submit" value="Register">
	<td><input type="reset" value="Reset">
	</tr>
</table>
</form>
</div>
</body>
</html>