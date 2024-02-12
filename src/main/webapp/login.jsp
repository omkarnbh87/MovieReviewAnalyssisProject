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
	String type=request.getParameter("type");
    String u=request.getParameter("user");
    String p=request.getParameter("pass");
    if(type.equals("admin"))
    {
    	if("admin".equals(u) && "admin".equals(p))
    	{
    		response.sendRedirect("welcome_admin.jsp");
    	}
    	else
    	{
    		response.sendRedirect("index.jsp?msg=Invalid Username/Password");
    	}
    }
    else
    {
    	Connection con=ConnectionProvider.getCon();
        PreparedStatement ps=con.prepareStatement("select * from users where name=? and password=?");
        ps.setString(1,u);
        ps.setString(2,p);
        ResultSet rs=ps.executeQuery();
        if(rs.next())
        {
        	session.setAttribute("user",u);
        	response.sendRedirect("welcome_user.jsp");
        }
        else
        {
        	response.sendRedirect("index.jsp?msg=Invalid Username or Password!");
        }
        con.close();
    }
%>
</body>
</html>