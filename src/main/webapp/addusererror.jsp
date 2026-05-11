<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="container">
    <div class="notification error">Sorry, an error occured!</div>
    <%
        String error = (String) session.getAttribute("lastError");
        if(error != null) {
            out.print("<div class='notification error' style='font-size: 0.8rem;'><strong>Error Details:</strong> " + error + "</div>");
            session.removeAttribute("lastError");
        }
    %>
    <jsp:include page="userform.html"></jsp:include>
</div>
</body>
</html>