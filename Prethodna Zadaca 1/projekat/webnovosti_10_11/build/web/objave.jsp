<%-- 
    Document   : objave
    Created on : Nov 24, 2020, 1:48:58 PM
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
    <style>
        .card{
            transition: all 0.5s ease;
            cursor:pointer;
        }
        .card:hover{
            transform: scale(1.05);
        }
    </style>
    <body>
        <jsp:include page="nav.jsp" />
        
        <h1>${test}</h1>
        <div class="row w-100 ml-5 mr-5">
            <c:forEach items="${novosti}" var="nov">
                <div class="card col-3 p-0 mr-4 mt-4" style="width: 18rem;">
                    <img src="${nov.slika}" class="card-img-top w-100" alt="...">
                    <div class="card-body d-flex align-items-between flex-column justify-content-between">
                        <div>
                            <h5 class="card-title">${nov.naslov}</h5>
                            <p class="card-text">${nov.opis}</p>
                        </div>
                        <a href="/WebApplication4/dohvatiNovosti?id=${nov.id}" class="btn btn-primary mt-3">Detaljno</a>
                    </div>
                </div>

            </c:forEach>
        </div>
    </body>
</html>
