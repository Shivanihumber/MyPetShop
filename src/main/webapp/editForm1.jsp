<%--
  Created by IntelliJ IDEA.
  User: Owner
  Date: 4/17/2019
  Time: 1:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="my.model.Pet" %>
<%@ page import="my.model.Breed" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Pet Application</title>
</head>
<body>
<div align="center">

    <h1 style="text-align: center">Pet Management</h1>
    <h2>
        <a href="new">Add New Item</a>
        &nbsp;&nbsp;&nbsp;
        <a  href="list">List All Items</a>
        &nbsp;&nbsp;&nbsp;

    </h2>
</div>
<div align="center">
    <c:if test="${pet != null}">
    <form action="edit" method="post">
        </c:if>
        <c:if test="${pet == null}">
        <form action="insert" method="post">
            </c:if>
            <table border="1" cellpadding="5">
                <caption>
                    <h2>
                        <c:if test="${pet!= null}">
                            Edit Item
                        </c:if>
                        <c:if test="${pet == null}">
                            Add New Item
                        </c:if>
                    </h2>
                </caption>
                <c:if test="${pet != null}">

                    <input type="hidden" name="id" value="<c:out value='${pet.id}' />" />
                </c:if>
                <tr>
                    <th>Name: </th>
                    <td>
                        <input type="text" name="name" size="45"
                               value="<c:out value='${(pet.name)}' />"
                        />
                    </td>
                </tr>
                <tr>

                    <th>Breed: </th>
                    <td>
                        <select class="form-control" id="breed" name="breed" size="1">
                            <% for (Breed breed :
                                   Breed.values()) { %>
                            <option><%out.print(breed);%></option>
                            <% } %>
                        </select>
                    </td>

                </tr>

                <tr>
                    <th>Color: </th>
                    <td>
                        <input type="text" name="color" size="45"
                               value="<c:out value='${pet.color}' />"
                        />
                    </td>
                </tr>
                <tr>
                    <th>Price: </th>
                    <td>
                        <input type="text" name="price" size="5"
                               value="<c:out value='${pet.price}' />"
                        />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Save" />
                    </td>
                </tr>
            </table>
        </form>
</div>
</body>
</html>

