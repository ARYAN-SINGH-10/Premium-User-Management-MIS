<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="abc.UserDao" %>
<%@ page import="abc.User" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add User</title>
</head>
<body>
<%@page import="abc.UserDao"%>
<%@page import="abc.User"%>
<jsp:useBean id="u" class="abc.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
try {
    int i = UserDao.save(u);
    if(i > 0){
        response.sendRedirect("addusersuccess.jsp");
    } else {
        response.sendRedirect("addusererror.jsp?error=InsertFailed");
    }
} catch (Exception e) {
    session.setAttribute("lastError", e.getMessage());
    response.sendRedirect("addusererror.jsp");
}
%>

</body>
</html>
