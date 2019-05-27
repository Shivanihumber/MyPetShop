
<%--
  Created by IntelliJ IDEA.

  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>my.model.User Manager</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>


<div class="container-fluid ml-2">
    <div class="center-block">
<form method="post" action="users">
    <img src="images/petimage.jpg"  style="align-items: center" width="100%" height="300px" class="center"/><br/>
    <div align="center"><p class="ml-1"><i class="text-danger">${validationMessage}</i></p></div>
    <table border = "1" width = "40%" align="center"  class="table-light">
        <tr><td><h3 style="color:black;">Register Page</h3></td><td></td></tr>

        <tr><td align="right"> Name :</td><td><input type="text" name="userName"></td></tr>
        <tr><td align="right"> Password :</td><td><input type="password" name="userPassword"></td></tr>
        <tr><td  align="right">Email :</td><td><input type="email" name="userEmail"></td></tr>
        <tr><td align="right"><input type="submit" name="submit" value="Add User" ></td><td><a href="login.jsp">Login</a></td></tr>
    </table>

</form>
    </div>
</div>
</body>
<div class="footer-copyright text-center py-3">© 2019 Copyright:Pet Shop</div>
</html>
</html>