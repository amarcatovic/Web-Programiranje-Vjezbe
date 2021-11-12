<%-- 
    Document   : nav
    Created on : Nov 25, 2020, 11:13:26 PM
    Author     : User
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <div class="row navbar navbar-light bg-light d-flex justify-content-center">
            <div class="col-10">
                <div class="row d-flex justify-content-between">
                    <div class="col-3">
                        <img src="https://static.klix.ba/images/klix-logo2020.png" style=" transform: scale(0.5)" />
                    </div> 
                    <div class="col-7 d-flex align-items-center" style="height: 90px;">
                        <div class="row d-flex justify-content-between w-100">
                            
                            <c:if test="${sessionScope.korisnik != null}"><div class="col-3 d-flex align-items-center font-weight-bold ">
                                <a class="btn btn-outline-danger" href="logout">Odjava</a>
                            </div></c:if>
                            
                        </div>
                        
                    </div> 
                </div>
            </div>
        </div>
    </body>
</html>
