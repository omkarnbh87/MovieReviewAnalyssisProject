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
    String u=request.getParameter("user");
    String m=request.getParameter("mobile");
    Connection con=ConnectionProvider.getCon();
    PreparedStatement ps=con.prepareStatement("select password from users where name=? and mobile=?");
    ps.setString(1,u);
    ps.setString(2,m);
    ResultSet rs=ps.executeQuery();
    if(rs.next())
    {
    	response.sendRedirect("forgotpass.jsp?msg=Your password is:"+rs.getString(1));
    }
    else
    {
    	response.sendRedirect("forgotpass.jsp?msg=Invalid Username or Password!");
    }
    con.close();
   %>
</body>
</html>