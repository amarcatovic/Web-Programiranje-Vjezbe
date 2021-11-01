<%-- 
    Document   : scriplets
    Created on : 01-Nov-2021, 18:53:37
    Author     : amar_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Scriplets Page</title>
    </head>
    <body>
        <h1>Guess the number (0 - 10)</h1>
        
        
        <form action="result.jsp" method="POST">
            Enter the number: <input type="text" name="userNumber" />
            <br />
            
            <input type="submit" value="Guess" />
        </form>
    </body>
</html>
