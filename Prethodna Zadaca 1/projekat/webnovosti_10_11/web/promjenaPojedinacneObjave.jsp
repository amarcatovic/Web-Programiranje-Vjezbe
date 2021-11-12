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
            <h1 class="display-4 font-weight-bold">Promjena objave</h1>
            <div class="form-row justify-content-center align-items-center">
                <form action="izmjenaOdredjeneObjave" method="POST">
                    <% String hidden = request.getParameter("id"); %>
                    <% String opis = request.getParameter("opis"); %>
                    <% String naslov = request.getParameter("naslov"); %>
                    <% String slika = request.getParameter("slika"); %>
                   <% String sadrzaj = request.getParameter("sadrzaj"); %>
                   <input type="hidden" value="<%=hidden %>" name="id">
                    <div class="p-2 d-flex justify-content-between"><label class="font-weight-bold">Naslov: </label><input type="text" class="form-control" name="naslov" value="<%=naslov %>"></div>
                    <div class="p-2 d-flex justify-content-between"><label class="font-weight-bold">Opis: </label><input type="text"  class="form-control" name="opis" value="<%=opis%>"></div>
                    <p class="font-weight-bold">Slika objave:</p><img src="<%=slika%>" />
                    <div class="p-2 d-flex justify-content-between"><label class="font-weight-bold">Link slike: </label><input type="text"  class="form-control" name="slika" value="<%=slika%>"></div>

                    <div class="p-2 d-flex justify-content-between"><label class="font-weight-bold">Sadržaj </label><input type="text"  class="form-control" name="sadrzaj" value="<%=sadrzaj%>"></div>
           
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
                width: 300px;
            }
            .btn{width:240px; 
                 margin-left: 50px;}
        </style>
    </body>
</html>