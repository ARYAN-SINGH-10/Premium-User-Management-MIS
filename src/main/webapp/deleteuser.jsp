<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="abc.UserDao"%>
<%
	String id= request.getParameter("id");
	int id1= Integer.parseInt(id);
%>
<%
	UserDao.delete(id1);
	response.sendRedirect("viewusers.jsp");
%>

</body>
</html>