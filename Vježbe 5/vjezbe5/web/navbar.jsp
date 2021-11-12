<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Mini E-Commerce</a>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home.jsp">Home</a>
        </li>
      </ul>
      <c:if test="${user.role != 3}">
        <form action="Logout" method="POST" class="d-flex">
            <span class="navbar-text" style="margin-right: 10px">${user.username}</span>  
            <button class="btn btn-outline-danger" type="submit">Log out</button>
        </form>
      </c:if>
      <c:if test="${user.role == 3}">
        <form action="Logout" method="POST" class="d-flex">
            <span class="navbar-text" style="margin-right: 10px">${user.username}</span>  
            <button class="btn btn-outline-success" type="submit">Login</button>
        </form>
      </c:if>
    </div>
  </div>
</nav>