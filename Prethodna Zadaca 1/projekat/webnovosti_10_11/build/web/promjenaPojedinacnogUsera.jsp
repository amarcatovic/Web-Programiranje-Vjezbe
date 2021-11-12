
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
            <h1 class="display-4">Promjena podataka</h1>
            <div class="form-row justify-content-center align-items-center">
                <form action="izmjenaOdredjenogKorisnika" method="POST">
                    <% String hidden = request.getParameter("username"); %>
                    <% String hidden1 = request.getParameter("password"); %>
                     <% String hidden2 = request.getParameter("ime"); %>
                      <% String hidden3 = request.getParameter("prezime"); %>
                       <% String hidden4= request.getParameter("telefon"); %>
                        <% String hidden5 = request.getParameter("email"); %>
                    <div class="p-2 d-flex justify-content-between"><label class="font-weight-bold">Trenutni username: </label><input type="text" class="form-control" name="usernameNow" value="<%=hidden %>"></div>
                    <div class="p-2 d-flex justify-content-between"><label class="font-weight-bold">Novi username: </label><input type="text" class="form-control" name="username" value="<%=hidden %>"></div>
                    <div class="p-2 d-flex justify-content-between"><label class="font-weight-bold">Ime: </label><input type="text"  class="form-control" name="ime" value="<%=hidden2 %>"></div>
                    <div class="p-2 d-flex justify-content-between"><label class="font-weight-bold">Prezime: </label><input type="text"  class="form-control" name="prezime" value="<%=hidden3 %>"></div>
                    <div class="p-2 d-flex justify-content-between"><label class="font-weight-bold">Email: </label><input type="text"  class="form-control" name="email" value="<%=hidden5 %>"></div>
                    <div class="p-2 d-flex justify-content-between"><label class="font-weight-bold">Password: </label> <input type="password"  class="form-control" name="password" value="<%=hidden1%>"></div>
                    <div class="p-2 d-flex justify-content-between"><label class="font-weight-bold">Telefon: </label><input type="text" name="telefon"  class="form-control" value="<%=hidden4 %>"></div>
                        
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


