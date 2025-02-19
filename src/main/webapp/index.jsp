<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>LAB 2</title>
</head>
<body>
    <h1>
        <%
            java.util.Calendar calendar = java.util.Calendar.getInstance();
            int hour = calendar.get(java.util.Calendar.HOUR_OF_DAY);
            String greeting;

            if (hour < 12) {
                greeting = "Good morning, Lucianna, Welcome to COMP367";
            } else {
                greeting = "Good afternoon, Lucianna, Welcome to COMP367";
            }

            out.println(greeting);
        %>
    </h1>
</body>
</html>