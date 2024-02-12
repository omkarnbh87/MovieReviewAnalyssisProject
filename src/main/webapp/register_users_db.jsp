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
    String moblie=request.getParameter("mobile");
    Connection con=ConnectionProvider.getCon();
    PreparedStatement pst=con.prepareStatement("insert into users values(?,?,?,?)");
    pst.setString(1,user);
    pst.setString(2,pass);
    pst.setString(3,email);
    pst.setString(4,moblie);
    pst.executeUpdate();
    con.close();
    response.sendRedirect("index.jsp?msg=You have registered successfully"); 
	}
	catch(Exception e)
	{
		response.sendRedirect("index.jsp?msg=User already exists!");
	}
%>
</body>
</html>