<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    List<String> shoppingList;
    Object shoppingListObject = request.getSession().getAttribute("shoppingList");
    if (shoppingListObject == null) {
        shoppingList = new ArrayList<String>();
    } else {
        shoppingList = (ArrayList<String>) shoppingListObject;
    }
%>

<h4>Scriplets:</h4>
<ul class="list-group">
    <%for (int i = 0; i < shoppingList.size(); ++i) {%>
    <li class="list-group-item"><%= shoppingList.get(i) %></li>
    <%}%>
</ul>

<c:if test="${shoppingList.size() > 0}">
    <h4>Expression language:</h4>
</c:if>
<ul class="list-group">
    <c:forEach items="${shoppingList}" var="listItem">
        <li class="list-group-item">${listItem}</li>
    </c:forEach>
</ul>
    
<hr>
<hr>
<hr>

<form action="GetItems" method="GET">
    <input type="submit" class="btn btn-success" value="Get From DB" />
</form>