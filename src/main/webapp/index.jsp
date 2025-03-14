<%@ page import="java.time.LocalTime" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>LAB 2</title>
</head>
<body>
<h1>
    <%
        int hour = LocalTime.now().getHour();
        String greeting = (hour < 12) ? "Good morning" : "Good afternoon";
    %>
    <%= greeting %>, Lucianna, Welcome to COMP367
</h1>
</body>
</html>