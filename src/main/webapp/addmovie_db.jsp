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
	String mn=request.getParameter("movie");
    String rd=request.getParameter("releasedate");
    Connection con=ConnectionProvider.getCon();
    PreparedStatement pst=con.prepareStatement("insert into movies values(?,?)");
    pst.setString(1,mn);
    pst.setString(2,rd);
    pst.executeUpdate();
    con.close();
    response.sendRedirect("addmovie.jsp?msg=Movie Added"); 
	}
	catch(Exception e)
	{
		response.sendRedirect("addmovie.jsp?msg= Movie Already Exist!");
	}
%>
</body>
</html>