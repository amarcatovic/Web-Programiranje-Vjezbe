<%-- 
    Document   : prikaz
    Created on : Nov 15, 2020, 11:43:29 AM
    Author     : User
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <jsp:include page="nav.jsp" />
        <c:if test="${korisnik.rola == 1} "><h1 class="text-center font-weight-bold mb-5">ADMIN DASHBOARD</h1></c:if>
        <c:if test="${korisnik.rola == 3} "><h1 class="text-center font-weight-bold mb-5">UREDNIK DASHBOARD</h1></c:if>
            <div class="d-flex flex-column align-items-center">
                <h1> ${poruka}</h1>

            <p><strong>Username: </strong> ${korisnik.username}</p>
            <p><strong>Password: </strong>${korisnik.password}</p>
            <p><strong>Ime: </strong>${korisnik.ime}</p>
            <p><strong>Prezime: </strong>${korisnik.prezime}</p>
            <p><strong>Email: </strong>${korisnik.email}</p>
            <p><strong>Telefon: </strong>${korisnik.telefon}</p>
            <p><strong>Rola: </strong>${korisnik.rola}</p>
            <p><strong>Aktivan: </strong>${korisnik.aktivan}</p>
            <div>
                <a href="promjena.jsp" class="btn btn-outline-primary mb-3">Promjena podataka</a>
                <a href="objave" class="btn btn-outline-info mb-3">Vijesti</a>
                <a href="logout" class="btn btn-outline-danger mb-3">Logout</a>
            </div>

        </div>

        <div class="d-flex justify-content-center">
            <c:if test="${korisnik.rola == 1}">
                <div style="width: 90%">
                    <h1>Users</h1>
                    <a href="dodaj.jsp" class="btn btn-outline-primary mb-3" >Dodaj novog korisnika</a>
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                    <c:forEach items="${naslovi}" var="naslov">
                                    <th scope="col">${naslov}</th>
                                    </c:forEach>
                                <th scope="col">Deaktiviranje</th>
                                 <th scope="col">Izmjena</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${korisnici}" var="korisnik">
                                <c:if test="${korisnik.aktivan}">
                                    <tr class="bg-light">
                                    </c:if>
                                    <c:if test="${!korisnik.aktivan}">
                                    <tr style="background-color: #dc354550">
                                    </c:if>
                                    <th scope="row">1</th>
                                    <td>${korisnik.username}</td>
                                    <td>${korisnik.ime}</td>
                                    <td>${korisnik.prezime}</td>
                                    <td>${korisnik.password}</td>
                                    <td>${korisnik.email}</td>
                                    <td>${korisnik.aktivan}</td>
                                    <td>${korisnik.telefon}</td>
                                    <td><form method="POST" action="deaktivirajKorisnika">
                                            <input type="hidden" name="username" value=${korisnik.username}>
                                            <input type="submit" class="btn btn-outline-danger h-25 mr-3" value="Deactivate">  
                                        </form></td>
                                    <td>
                                        <form method="GET" action="promjenaPojedinacnogUsera.jsp">
                                            <input type="hidden" name="username" value=${korisnik.username}>
                                                 <input type="hidden" name="ime" value=${korisnik.ime}>
                                                 <input type="hidden" name="prezime" value=${korisnik.prezime}>
                                                 <input type="hidden" name="email" value=${korisnik.email}>
                                                 <input type="hidden" name="telefon" value=${korisnik.telefon}>
                                                 <input type="hidden" name="aktivan" value=${korisnik.aktivan}>
                                                <input type="hidden" name="password" value=${korisnik.password}>
                                            <input type="submit" class="btn btn-outline-danger h-25 mr-3" value="Izmijeni">
                                        </form>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </c:if>
            <c:if test="${korisnik.rola == 3}">
                <div style="width: 90%">
                    <h1>Objave</h1>
                    <a href="dodajNovost.jsp" class="btn btn-outline-primary mb-3" >Dodaj novu objavu</a>
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                    <c:forEach items="${naslovi}" var="naslov">
                                    <th scope="col">${naslov}</th>
                                    </c:forEach>
                                <th scope="col">Komentari</th>
                                <th scope="col">Brisanje</th>
                                <th scope="col">Uređivanje</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${novosti}" var="novost">
                                <tr class="bg-light">

                                    <th scope="row">1</th>
                                    <td>${novost.naslov}</td>
                                    <td>${novost.opis}</td>

                                    <td><a href="/WebApplication4/dohvatiNovosti?id=${novost.id}" class="btn btn-outline-primary h-25 mr-3" > Pregled komentara  </td>
                                    <td><form method="POST" action="obrisiObjavu">
                                            <input type="hidden" name="id" value=${novost.id}>
                                            <input type="submit" class="btn btn-outline-danger h-25 mr-3" value="Delete">  
                                        </form></td>  
                                    <td> <form method="POST" action="promjenaPojedinacneObjave.jsp">
                                            <input type="hidden" name="id" value="${novost.id}">
                                            <input type="hidden" name="naslov" value="${novost.naslov}">
                                            <input type="hidden" name="opis" value="${novost.opis}">
                                            <input type="hidden" name="slika" value="${novost.slika}">
                                            <input type="hidden" name="sadrzaj" value="${novost.sadrzaj}">
                                            <input type="submit" class="btn btn-outline-danger h-25 mr-3" value="Izmijeni">
                                        </form></td>  
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </c:if>
        </div>
    </body>
</html>
