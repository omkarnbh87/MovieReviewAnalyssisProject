<html>
<head>
<script type="text/javascript">
function disableBackButton() 
{
	window.history.forward();
	setTimeout("disableBackButton()",0);
}
</script>
</head>
<body onload="disableBackButton()">
<%@include file="header_login.html" %>
<div style="position: absolute; top:40%; left:45%">
<a href="index.jsp?msg=You are Logged out successfully!">Are you sure?</a>
<%
session.invalidate();
%>
</div>
</body>
</html>