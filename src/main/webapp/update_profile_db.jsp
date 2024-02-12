<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*,mra.*" %>
<%
	try
	{
	String user=request.getParameter("user");
    String pass=request.getParameter("pass");
    String email=request.getParameter("email");
    String mobile=request.getParameter("mobile");
    Connection con=ConnectionProvider.getCon();
    PreparedStatement pst=con.prepareStatement("update users set password=?,email=?,mobile=? where name=?");
    pst.setString(1,pass);
    pst.setString(2,email);
    pst.setString(3,mobile);
    pst.setString(4,user);
  
    pst.executeUpdate();
    con.close();
    response.sendRedirect("welcome_user.jsp?msg=Profile updated successfully"); 
	}
	catch(Exception e)
	{
		response.sendRedirect("welcome_user.jsp?msg=Some error occured!");
	}
%>
</body>
</html>