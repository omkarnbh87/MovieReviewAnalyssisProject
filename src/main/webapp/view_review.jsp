<%@ include file="header.html" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<body>

<div style="position:absolute;left:30%;top:30%;margin-top:3px;">
<label style="color:red;padding-left: 50px;">
<% 
String msg=request.getParameter("msg");
if(msg!=null)
	out.println(msg);
%>
</label>

<table class="table">
  <tbody>
<%@page import="java.sql.*,mra.*" %>
<%
	String mv=request.getParameter("movie"); 
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from review where movie_name='"+mv+"'");
	int good_count=0;
	int avg_count=0;
	int aws_count=0;
	int ntgood_count=0;
	while(rs.next())
	{
		String rv=rs.getString("movie_review");
		if(rv.equals("Good"))
			good_count++;
		else if(rv.equals("Average"))
			avg_count++;
		else if(rv.equals("Awesome"))
			aws_count++;
		else
			ntgood_count++;
	}
	con.close();
	%>
	<table class="table">
	<tbody>

	<tr scope="row">
	<td>Good</td>
	<td><%=good_count %></td>
	</tr>
	
	<tr scope="row">
	<td>Average</td>
	<td><%=avg_count %></td>
	</tr>
	
	<tr scope="row">
	<td>Awesome</td>
	<td><%=aws_count %></td>
	</tr>
	
	<tr scope="row">
	<td>Not Good</td>
	<td><%=ntgood_count %></td>
	</tr>
	
  </tbody>
</table>
</div>
</body>
</html>