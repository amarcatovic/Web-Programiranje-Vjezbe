<%-- 
    Document   : unosRegistracije
    Created on : 22-Nov-2020, 15:06:58
    Author     : amina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="cijela">
            <h1 class="display-4">Registracija</h1>
         <div class="form-row justify-content-center">
        <form action="dodavanje" method="POST">
            <div class="p-2 d-flex justify-content-between"><label>Username: </label> <input type="text" name="username"></div>
            <div class="p-2 d-flex justify-content-between"><label>Password: </label> <input type="text" name="password"></div>
                 <div class="p-2 d-flex justify-content-between"><label>Ime: </label> <input type="text" name="ime"></div>
                  <div class="p-2 d-flex justify-content-between"><label>Prezime: </label> <input type="text" name="prezime"></div>
                   <div class="p-2 d-flex justify-content-between"><label>Telefon: </label> <input type="text" name="tel"></div>
                    <div class="p-2 d-flex justify-content-between"><label>Email: </label><input type="text" name="email"></div>
                    <button type="submit" class="btn btn-dark">Registracija</button>
        </form>
        </div>
        </div>
        <style>
             body{
                background-image: url("https://cdn.pixabay.com/photo/2016/11/29/01/13/background-1866485_960_720.jpg");
                background-repeat: no-repeat;
                background-size: cover;
            }
             .cijela{
                text-align: center;
                color:white;
            }
            .p-2{
                width:400px;
            }
            .btn{width:240px;
                 margin-top: 70px;}
            form{margin-top: 30px;}
        </style>
    </body>
</html>
