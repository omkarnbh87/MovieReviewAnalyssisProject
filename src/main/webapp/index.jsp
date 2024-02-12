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
<form action="view_review.jsp" method="post">
<label>Select Movie:</label>
<select name="movie">
<option>---select---</option>
<%@page import="java.sql.*,mra.*" %>
<%
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from movies");
	while(rs.next())
	{
%>
	<option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
<%		
	}
	con.close();
%>
</select>
<input type="submit" value="Review">
</form>
<div style="float: right;">
<label style="color:red;padding-left: 50px;">
<% 
String msg=request.getParameter("msg");
if(msg!=null)
	out.println(msg);
%>
</label>
<form action="login.jsp" method="post" style="padding-left:10px;margin; background-color:pink;border:solid 1px;">
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
	<td><label>Select Type:</label></td>
	<td><select name="type">
	<option value="user">User</option>
	<option value="admin">Admin</option>
	
	</select></td>
	</tr>
	
	<tr>
	<td><input type="submit" value="login"></td>
	<td><input type="reset" value="reset"></td>
	</tr>
	
	<tr>
	<td><a href="forgotpass.jsp">Forgot Password</a></td>
	<td><a href="signup.jsp">Sign up</a></td>
	</tr>
</table>
</form>
</div>
</body>
</html>