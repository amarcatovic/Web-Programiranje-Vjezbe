<%-- 
    Document   : pocetna
    Created on : 22-Nov-2020, 14:55:15
    Author     : amina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Login Page</title>
    </head>
    <body>
        <div class="cijela">

            <h1 class="display-1  ">${(poruka != null) ? poruka : "Dobrodošli"}</h1>
            <div class="d-flex flex-column">
                <form action="login" method="POST">
                    <div class="p-2"><label class="un font-weight-bold">Username:</label> <input type="text"  name="username"></div>
                    <div class="p-2"><label class="pass font-weight-bold">Password:</label><input type="text"  name="password"></div>
                    <div class="p-2"><button type="submit" class="btn btn-dark font-weight-bold">Login</button></div>
                    <div class="p-2"><button type="reset" class="btn btn-dark font-weight-bold">Clear</button></div>
                </form>


                <div class="d-flex justify-content-center font-weight-bold"><p>Niste registrovani? &nbsp; </p><a href="registracija.jsp" class="font-weight-bold">Registracija</a></div>
                <form method="GET" action="objave">
                    <div class="p-2"><button type="submit" class="btn btn-dark font-weight-bold" name="guest" value="true">As guest</button></div>
                </form>
            </div>
        </div>
        <style>
            body{
                background-image: url("https://cdn.pixabay.com/photo/2016/08/13/23/13/news-1591767_960_720.jpg");
                background-repeat: no-repeat;
                background-size: cover;
            }
            .cijela{
                text-align: center;
                color:white;
            }
            form {margin-top: 70px;}
            .btn{width:240px; }
            a{color:#1b1d1f}
            .pass{margin-right:10px;}
            .un{margin-right: 3px;}
            .p-2{margin-bottom: 25px;}
        </style>
    </body>
</html>
