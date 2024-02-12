<%@ include file="header_login.html" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #f1f1f1;
  border: 1px solid #555;
}

li a {
  display: block;
  color: #000;
  padding: 8px 16px;
  text-decoration: none;
}

li {
  text-align: center;
  border-bottom: 1px solid #555;
}

li:last-child {
  border-bottom: none;
}

li a.active {
  background-color: #4CAF50;
  color: white;
}

li a:hover:not(.active) {
  background-color: #555;
  color: white;
}
</style>
</head>
<body>

<div>
<h5>Welcome Admin</h5>
<ul>
  <li><a  href="welcome_admin.jsp">Home</a></li>
  <li><a  class="active" href="#">Add Movie</a></li>
  <li ><a href="manage_movie.jsp">Manage Movies</a></li>
  <li ><a href="#">Manage Users</a></li>
  <li ><a href="index.jsp?msg=You are logged out!">Logout</a></li>
</ul>
</div>

<div style="position:absolute; text-align:center; left:40%;top:30%;">
<label><h2>Add Movie</h2></label>
<form action="addmovie_db.jsp" method="post">
<table cellspacing=20>
	<tr>
	<td><label>Movie Name:</label></td>
	<td><input type="text" name="movie" required="required"></td>
	</tr>
	
	<tr>
	<td><label>Release Date:</label></td>
	<td><input type="date"></td>
	</tr>
	
	<tr>
	<td><input type="submit" value="Add"></td>
	<td><input type="reset" value="Reset"></td>
	</tr>
	
</table>
</form>

<label style="color:red;padding-left: 50px;">
<% 
String msg=request.getParameter("msg");
if(msg!=null)
	out.println(msg);
%>
</label>
</div>
</body>
</html>