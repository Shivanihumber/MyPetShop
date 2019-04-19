<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

<form method="post" >

    <br/><br/>
    Name:  <c:out value = "${pet.name}"/><br/><br/>

    Color: <c:out value = "${pet.color}"/><br/><br/>
    Price: <c:out value = "${pet.price}"/><br/><br/>

        <label>Breed: </label>
    <c:out value = "${pet.breed}"/>

    <h4>Click  Order To Complete the Purchage.</h4>
    <h4>Please Call before coming to Pick up Your Order.</h4>

    <br/><br/>
    <input  type="submit" value="Order">
</form>
</body>
</html>