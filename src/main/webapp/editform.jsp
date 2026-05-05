<html>
<head>
<meta charset="UTF-8">
<title>Edit User</title>
<link rel="stylesheet" type="text/css" href="style-edit.css?v=2.0">
</head>
<%@page import="abc.UserDao"%>
<%@page import="abc.User" %>
<%
String id=request.getParameter("id");
int id1=Integer.parseInt(id);
User u=UserDao.getRecordById(id1);
%>
<body>
<div class="container">
    <a href="viewusers.jsp">← Back to Database</a>
    <h1>Modify User Details</h1>
    <form action="edituser.jsp" method="post">
        <input type="hidden" name="id" value="<%=u.getId() %>"/>
        <table border="0">
        <tr>
        	<td>Name:</td>
        	<td><input type="text" name="name" value="<%= u.getName()%>"/></td>
        </tr>
        <tr>
        	<td>Password:</td>	
        	<td><input type="password" name="password" value="<%= u.getPassword()%>"/></td>
        </tr>
        <tr>
        	<td>Email:</td>
        	<td><input type="email" name="email" value="<%= u.getEmail()%>"/></td>
        </tr>
        <tr>
        	<td>Country:</td>
        	<td>
        	<select name="country">
        	<option <%= u.getCountry().equals("India") ? "selected" : "" %>>India</option>
        	<option <%= u.getCountry().equals("USA") ? "selected" : "" %>>USA</option>
        	<option <%= u.getCountry().equals("UK") ? "selected" : "" %>>UK</option>
        	<option <%= u.getCountry().equals("Canada") ? "selected" : "" %>>Canada</option>
        	<option <%= u.getCountry().equals("Other") ? "selected" : "" %>>Other</option>
        </select>
        </td>
        </tr>
        <tr>
        	<td colspan="2"><input type="submit" value="Update Profile"/></td>
        </tr>
        </table>
    </form>
</div>
</body>
</html>


