<%-- 
    Document   : objavaSingle
    Created on : Nov 24, 2020, 1:06:18 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    <body>

        <jsp:include page="nav.jsp" />
        <div class="w-100  d-flex justify-content-center mt-5">
            <div class="w-75">
                <h1></h1>
                <div class="row mt-3">
                    <div class="col-2 d-flex flex-column align-items-center">
                        <h2 class="text-center font-weight-bold">Komentari</h2>
                        <h1 class="text-center text-primary  font-weight-bold">${novost.komentari.size()}</h1>
                        <a href="objave" class="btn btn-outline-primary ">Novosti</a>
                    </div>
                    <div class="col-7 w-100"> 
                        <img src="${novost.slika}" class="w-100" />
                        <p class="display-5 font-weight-bold mt-5">${novost.sadrzaj}</p>
                    </div>
                </div>
                <h1 class="font-weight-bold">KOMENTARI</h1>
                <c:if test="${sessionScope.korisnik != null}">
                    <form action="dodajKomentar" method="post">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Napisi komentar</label>
                            <input type="hidden" name="id" value ="${id} ">
                            <input type="text" class="form-control" id="exampleInputEmail1" name="komentar">
                            <small id="emailHelp" class="form-text text-muted">Pisite komentare u skladu sa pravilima.</small>
                        </div>
                    </form>
                </c:if>
                <c:forEach items="${novost.komentari}" var="nov" >
                    <div class="bg-light pl-3 d-flex justify-content-between align-items-center mb-3"> 
                        <div >
                            <small class="text-primary">${nov.datum}</small>
                            <div class="d-flex">
                                <img src="https://www.flaticon.com/svg/static/icons/svg/3135/3135715.svg" style="width:40px;height: 4s0px;"><h3 class="ml-2">${nov.user}</h3>
                            </div>

                            <p class="font-weight-bold mt-2">${nov.sadrzaj} </p>
                        </div>
                        <c:if test="${korisnik.rola == 1 || korisnik.rola==3}">
                            <form method="POST" action="obrisiKomentar">
                                <input type="hidden" name="id" value=${nov.id}>
                                <input type="hidden" name="idObjave" value=${id}>
                                <input type="submit" class="btn btn-outline-danger h-25 mr-3" value="Remove">  
                            </form>
                        </c:if>
                    </div>

                </c:forEach>
            </div>
        </div> 
    </body>
</html>
