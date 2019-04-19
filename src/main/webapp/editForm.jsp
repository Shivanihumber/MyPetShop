<%@ page import="my.model.Pet" %>
<%@ page import="my.model.Breed" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Pet Application</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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

<form method="post" action="update">
    <br/>

    Id: <input type="text" name="id" value='${(pet.id)}'/><br/><br/>

    Name: <input type="text" name="name" value='${(pet.name)}'/><br/><br/>

    Color: <input  type="text" name="color" value='${(pet.color)}'/><br/><br/>
    Price: <input type="text" name="price" value='${(pet.price)}'/><br/><br/>
    <div class="form-group">
        <label for="breed">Breed: </label>
        <select class="form-control" id="breed" name="breed" size="1">
            <% for (Breed breed :
                    Breed.values()) { %>
            <option><%out.print(breed);%></option>
            <% } %>
        </select> <br/>
    </div>
    <br/><br/>
    <input  type="submit" value="Save">
</form>
</body>
</html>