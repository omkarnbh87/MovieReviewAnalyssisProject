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
  <li><a href="welcome_user.jsp">Home</a></li>
  <li><a class="active" href="update_profile.jsp">Update Profile</a></li>
  <li><a href="add_review.jsp">Add Review</a></li>
  <li><a href="finallogout.jsp">Logout</a></li>
</ul>

</div>

<div style="position:absolute; text-align:center; left:40%;top:30%;">
<label><h2>Update Profile</h2></label>
<%@page import="java.sql.*,mra.*" %>
<%
	Connection con=ConnectionProvider.getCon();
	PreparedStatement st=con.prepareStatement("select * from users where name=?");
	st.setString(1,session.getAttribute("user").toString());	
	ResultSet rs=st.executeQuery();
	rs.next();
	String u=rs.getString(1);
	String p=rs.getString(2);
	String e=rs.getString(3);
	String m=rs.getString(4);
	con.close();
%>
<form action="update_profile_db.jsp" method="post">
<table cellspacing=20>
	<tr>
	<td><label>Username:</label></td>
	<td><input type="text" name="user" value="<%=u%>" readonly="readonly"></td>
	</tr>
	
	<tr>
	<td><label>Password:</label></td>
	<td><input type="text" name="pass" value="<%=p%>" required="required"></td>
	</tr>
	<tr>
	<td><label>Email:</label></td>
	<td><input type="email" name="email" value="<%=e%>" required="required"></td>
	</tr>
	<tr>
	<td><label>Mobile No:</label></td>
	<td><input type="number" name="mobile" value="<%=m%>" required="required"></td>
	</tr>
	
	<tr>
	<td><input type="submit" value="Update"></td>
	<td><input type="reset" value="reset"></td>
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