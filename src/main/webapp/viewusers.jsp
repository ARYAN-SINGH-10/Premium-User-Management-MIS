<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style-users.css?v=2.0">
</head>
<body>
<%@page import="abc.UserDao"%>
<%@page import="java.util.*"%>
<%@ page import="abc.User" %>
<%
List<User> list=UserDao.getAllRecords();
request.setAttribute("list",list);
%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="table-container">
    <h1>Users Database</h1>
    <table border="0">
    <thead>
    <tr>
    	<th>Id</th>
    	<th>Name</th>
    	<th>Password</th>
    	<th>Email</th>
    	<th>Country</th>
    	<th>Edit</th>
    	<th>Delete</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="u">
    	<tr>
    	<td>${u.getId()}</td>
    	<td>${u.getName()}</td>
    	<td>${u.getPassword()}</td>
    	<td>${u.getEmail()}</td>
    	<td>${u.getCountry()}</td>
    <td><a href="editform.jsp?id=${u.getId()}">Edit</a>
    </td><td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>
    </c:forEach>
    </tbody>
    </table>
</div>

<a href="adduserform.jsp" class="add-link">➕ Add New User</a>
<a href="index.jsp" class="add-link" style="background: rgba(255,255,255,0.05); margin-left: 1rem;">🏠 Home</a>

</body>
</html>

