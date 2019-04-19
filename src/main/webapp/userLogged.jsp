
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<html>
<head>
    <title>Pet Purchange</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

<table class="table-dark" border = "1" width = "60%" align="centre">
    <tr>
        <th>Pet Gender</th>
        <th>Pet Breed</th>
        <th>Pet Color</th>
        <th>Price</th>
    </tr>
    <c:forEach var = "pet" items = "${requestScope.list}">
        <tr>
            <input type="hidden" name="id" value="<c:out value='${pet.id}' />" />

            <td><c:out value = "${pet.name}"/></td>
            <td><c:out value = "${pet.breed}"/></td>
            <td><c:out value = "${pet.color}"/></td>
            <td><c:out value = "${pet.price}"/></td>
            <td>
                <a href="checkOut?id=<c:out value='${pet.id}' />">CheckOut</a>
                &nbsp;&nbsp;&nbsp;&nbsp;

            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
