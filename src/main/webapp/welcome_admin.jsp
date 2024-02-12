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
<h4>Welcome Admin</h4>
<ul>
  <li><a class="active" href="#">Home</a></li>
  <li><a href="addmovie.jsp">Add Movie</a></li>
  <li><a href="manage_movie.jsp">Manage Movies</a></li>
  <li><a href="manage_users.jsp">Manage Users</a></li>
  <li><a href="finallogout.jsp?msg=You have successfully Logged out!">Logout</a></li>
</ul>

</div>
</body>
</html>