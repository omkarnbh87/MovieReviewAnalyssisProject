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
	String mn=request.getParameter("user_name");
	Connection con=ConnectionProvider.getCon();
	PreparedStatement pst=con.prepareStatement("delete from users where name=?");
	pst.setString(1,mn);
	pst.executeUpdate();
	con.close();
	response.sendRedirect("manage_users.jsp?msg=User Deleted");
%>
</body>
</html>