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

<div align="center">
<label style="color:red;padding-left: 50px;">
<% 
String msg=request.getParameter("msg");
if(msg!=null)
	out.println(msg);
%>
</label>
<form action="getpass.jsp" method="post" style="padding-left:30px;margin-top:35px; background-color:pink;border:solid 1px;width: 40%">
<table cellspacing=20>
	<tr>
	<td><label>Username:</label></td>
	<td><input type="text" name="user" required="required"></td>
	</tr>
	<tr>
	<td><label>Mobile No:</label></td>
	<td><input type="number" name="mobile" required="required"></td>
	</tr>
	
	<tr>
	<td><input type="submit" value="login"></td>
	<td><input type="reset" value="reset"></td>
	</tr>
	
</table>
</form>
</div>
</body>
</html>