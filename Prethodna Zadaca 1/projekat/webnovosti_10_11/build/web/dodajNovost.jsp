<%-- 
    Document   : dodajNovost
    Created on : Dec 6, 2020, 7:06:18 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div class="cijela">

            <h1 class="display-1 mt-5 ">${(poruka != null) ? poruka : "Dodavanje novosti"}</h1>
            <div class="d-flex flex-column" >
                <div>
                    <form action="dodajNovost" method="POST" class="d-flex flex-column align-items-center justify-content-between" >
                    <div class="p-2 w-25 d-flex justify-content-between"><label class="un font-weight-bold">Naslov:</label> <input type="text" style="width: 300px"  name="naslov"></div>
                    <div class="p-2 w-25 d-flex justify-content-between"><label class="pass font-weight-bold">Opis:</label><input type="text" style="width: 300px"  name="opis"></div>
                    <div class="p-2 w-25 d-flex justify-content-between"><label class="pass font-weight-bold">Slika:</label><input type="text" style="width: 300px"  name="slika" placeholder="Slika je iskljucivo link sa nekog servisa"></div>
                    <div class="p-2 w-25 d-flex justify-content-end"><label class="pass font-weight-bold">Sadrzaj: <textarea class="form-control" style="width: 300px"  name="sadrzaj" rows="3"></textarea></div>

                    <div class="p-2"><button type="submit" class="btn btn-dark font-weight-bold">Dodaj</button></div>
                </form>
</div>
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

        </style>
    </body>
</html>
