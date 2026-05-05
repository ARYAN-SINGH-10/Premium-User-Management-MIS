<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Management System</title>
<link rel="stylesheet" type="text/css" href="style.css?v=2.0">
</head>
<body>
<div class="container">
    <h1>User Management</h1>
    <div style="display: flex; flex-direction: column; gap: 1rem;">
        <a href="adduserform.jsp" class="nav-btn" style="background: var(--card-bg); padding: 1.5rem; border-radius: 16px; border: 1px solid var(--border); text-align: center; color: white; font-weight: 600; font-size: 1.1rem; transition: all 0.3s ease;">
            ➕ Add New User
        </a>
        <a href="viewusers.jsp" class="nav-btn" style="background: var(--card-bg); padding: 1.5rem; border-radius: 16px; border: 1px solid var(--border); text-align: center; color: white; font-weight: 600; font-size: 1.1rem; transition: all 0.3s ease;">
            📋 View All Users
        </a>
    </div>
</div>
</body>
</html>