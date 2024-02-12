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
	String user=session.getAttribute("user").toString();
    String movie=request.getParameter("movie");
    String review=request.getParameter("review");
   
    Connection con=ConnectionProvider.getCon();
    PreparedStatement pst=con.prepareStatement("insert into review values(?,?,?)");
    pst.setString(1,movie);
    pst.setString(2,review);
    pst.setString(3,user);
    
    pst.executeUpdate();
    con.close();
    response.sendRedirect("welcome_user.jsp?msg=Thanks for your review..."); 
	}
	catch(Exception e)
	{
		response.sendRedirect("welcome_user.jsp?msg=Some error occured!");
	}
%>
</body>
</html>