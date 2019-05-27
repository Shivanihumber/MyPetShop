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

<img src="images/petimage.jpg"  style="align-items: center" width="100%" height="300px" class="center"/><br/>
<div align="center">
    <form method="post" action="update">
        <caption align="center">
            <h2>
                Edit Pet
            </h2>
        </caption>
        <table border="1" cellpadding="5">

            <input type="hidden" name="id" value="${requestScope.pet.id}"/>
            <tr>
                <th>Gender: </th>
                <td>
                    <input type="text" name="name" size="30"
                           value="${requestScope.pet.name}"/>

                </td>
            </tr>
            <tr>
                <th>Color: </th>
                <td>
                    <input type="text" name="color" size="30"
                           value="${requestScope.pet.color}"/>

                </td>
            </tr>
            <tr>
                <th>Price: </th>
                <td>
                    <input type="text" name="price" size="30"
                           value="${requestScope.pet.price}"/>

                </td>
            </tr>
            <tr>

                <th>Breed: </th>
                <td>
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
                    </select>

                </td>

            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save Pet" />
                </td>
            </tr>

        </table>
        <div class="footer-copyright text-center py-3">© 2019 Copyright:Pet Shop

        </div>
    </form>
</div>
</body>

</html>

