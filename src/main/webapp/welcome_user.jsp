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
<h4>Welcome,<%=session.getAttribute("user")%></h4>
<ul>
  <li><a class="active" href="#">Home</a></li>
  <li><a href="update_profile.jsp">Update Profile</a></li>
  <li><a href="add_review.jsp">Add Review</a></li>
  <li><a href="finallogout.jsp">Logout</a></li>
</ul>

</div>
<label style="color:green;position:absolute;left: 40px;">
<% 
String msg=request.getParameter("msg");
if(msg!=null)
	out.println(msg);
%>
</label>
</body>
</html>