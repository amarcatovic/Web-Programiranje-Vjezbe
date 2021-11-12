<%-- 
    Document   : promjena
    Created on : 24-Nov-2020, 19:20:16
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
        <div class="cijela mt-5 pt-5">
            <h1 class="display-4">Promjena ličnih podataka</h1>
            <div class="form-row justify-content-center align-items-center">
                <form action="izmjena" method="POST">
                    <div class="p-2 d-flex justify-content-between"><label class="font-weight-bold">Username: </label><input type="text" class="form-control" name="username" value="${korisnik.username}"></div>
                    <div class="p-2 d-flex justify-content-between"><label class="font-weight-bold">Ime: </label><input type="text"  class="form-control" name="ime" value="${korisnik.ime}"></div>
                    <div class="p-2 d-flex justify-content-between"><label class="font-weight-bold">Prezime: </label><input type="text"  class="form-control" name="prezime" value="${korisnik.prezime}"></div>

                    <div class="p-2 d-flex justify-content-between"><label class="font-weight-bold">Email: </label><input type="text"  class="form-control" name="email" value="${korisnik.email}"></div>
                    <div class="p-2 d-flex justify-content-between"><label class="font-weight-bold">Password: </label> <input type="password"  class="form-control" name="password" value="${korisnik.password}"></div>
                    <div class="p-2 d-flex justify-content-between"><label class="font-weight-bold">Telefon: </label><input type="text" name="telefon"  class="form-control" value="${korisnik.telefon}"></div>
                    <div class="p-2 d-flex justify-content-between"><label class="font-weight-bold">Aktivan: </label> <input type="text" name="aktivan"  class="form-control" value="${korisnik.aktivan}"></div>
                    <div class="p-2 d-flex justify-content-between"><label class="font-weight-bold">Rola: </label> <input type="text" name="rola"  class="form-control" value="${korisnik.rola}"></div>
                    <div class="p-2 d-flex justify-content-between"><button type="submit" class="btn btn-dark font-weight-bold">Izmijeni</button></div>
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
            h1{margin-bottom: 50px;}
            .p-2{
                width:400px;
            }
            .form-control{
                width: 200px;
            }
            .btn{width:240px; 
                 margin-left: 50px;}
        </style>
    </body>
</html>
