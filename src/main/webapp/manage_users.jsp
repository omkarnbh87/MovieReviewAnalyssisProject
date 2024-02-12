<%@ include file="header_login.html" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css"/>
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
<h4>Welcome Admin</h4>
<ul>
  <li><a href="welcome_admin.jsp">Home</a></li>
  <li><a href="addmovie.jsp">Add Movie</a></li>
  <li><a href="manage_movie.jsp">Manage Movies</a></li>
  <li><a class="active" href="manage_users.jsp">Manage Users</a></li>
  <li><a href="finallogout.jsp">Logout</a></li>
</ul>

</div>

<div style="position: absolute;left:30%;top:30%;">
<label style="color:red;padding-left: 50px;">
<% 
String msg=request.getParameter("msg");
if(msg!=null)
	out.println(msg);
%>
</label>

<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Sr.No</th>
      <th scope="col">Username</th>
      <th scope="col">Email</th>
      <th scope="col">Mobile</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
<%@page import="java.sql.*,mra.*" %>
<%
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from users");
	int sr=0;
	while(rs.next())
	{
		sr++;
%>
	<tr scope="row">
	<td><%=sr%></td>
	<td><%=rs.getString(1)%></td>
	<td><%=rs.getString(3)%></td>
	<td><%=rs.getString(4)%></td>
	
	<td><a href="delete_user.jsp?user_name=<%=rs.getString(1)%>">Delete</a></td>
	
	</tr>
<%		
	}
	con.close();
%>
  </tbody>
</table>
</div>

</body>
</html>