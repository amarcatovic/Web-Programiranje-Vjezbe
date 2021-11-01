<%-- 
    Document   : hellojsp
    Created on : 01-Nov-2021, 18:39:44
    Author     : amar_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <h1>Home Page!</h1>
            <form action="expressions.jsp">
                <input class="btn btn-primary" type="submit" value="Expressions">
            </form>
            <br />
            <form action="scriplets.jsp">
                <input class="btn btn-secondary" type="submit" value="Scriplets with declarations"
            </form>    
        </div>
    </body>
</html>
