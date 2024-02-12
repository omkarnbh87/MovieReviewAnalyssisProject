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
    PreparedStatement pst=con.prepareStatement("update movies set movie_name=?,release_date=? where movie_name=?");
    pst.setString(1,mn);
    pst.setString(2,rd);
    pst.setString(3,mn);
    pst.executeUpdate();
    con.close();
    response.sendRedirect("manage_movie.jsp?msg=Movie Updated"); 
	}
	catch(Exception e)
	{
		response.sendRedirect("manage_movie.jsp?msg= Movie Not Updated!");
	}
%>
</body>
</html>