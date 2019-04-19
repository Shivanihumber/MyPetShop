<%--
  Created by IntelliJ IDEA.
  User: Owner
  Date: 4/16/2019
  Time: 8:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="my.model.Breed" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<html>
<head>
    <title>Pet Edit</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

<form method="post" action="update">
    <br/>
    <input type="hidden" name="id" value="${requestScope.pet.id}"/>
    Gender: <input type="text" name="name" value="${requestScope.pet.name}"/><br/><br/>
    Color: <input  type="text" name="color" value="${requestScope.pet.color}"/><br/><br/>
    Price: <input type="text" name="price" value="${requestScope.pet.price}"/><br/><br/>
    <div class="form-group">
        <label for="breed">Breed: </label>
        <select class="form-control" id="breed" name="breed" size="1">
            <% for (Breed breed :
                    Breed.values()) { %>
            <c:if test="${requestScope.pet.breed == breed}">
                <option selected="selected"><%out.print(breed);%></option>
            </c:if>
            <c:if test="${requestScope.pet.breed != breed}">
                <option><%out.print(breed);%></option>
            </c:if>
            <%}%>
        </select> <br/>
    </div>
    <br/><br/>
    <input type="submit" value="Save Pet">
</form>
</body>
</html>

