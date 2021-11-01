<%-- 
    Document   : result
    Created on : 01-Nov-2021, 19:03:49
    Author     : amar_
--%>

<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! int userNumber; %>
<%
    userNumber = Integer.parseInt(request.getParameter("userNumber"));
    Random rand = new Random();
    int randomNumber = rand.nextInt(11);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <% if (userNumber != randomNumber) {%>
        <h1 class="alert alert-warning"> Better luck next time! The number was <%= randomNumber %> </h1>
        <%} else { %>
        <h1 class="alert alert-success"> Well done! </h1>
        <%}%>
    </body>
</html>
