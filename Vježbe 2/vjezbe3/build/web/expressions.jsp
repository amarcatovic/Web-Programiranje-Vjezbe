<%-- 
    Document   : expressions
    Created on : 01-Nov-2021, 18:50:56
    Author     : amar_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Expressions</title>
    </head>
    <body>
        <ul>
            <li>Current time: <%= new java.util.Date() %></li>
            <li>Server: <%= application.getServerInfo() %></li>
            <li>Session ID: <%= session.getId() %></li>
        </ul>
    </body>
</html>
