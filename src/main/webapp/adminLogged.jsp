<%@ page import="my.model.Breed" %>
<%@ page contentType="text/html;charset=UTF-8"%>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Pet</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<main>
    <div align = "center">

        <img src="images/petimage.jpg"  style="align-items: center" width="100%" height="300px" class="center"/><br/>

    <h1 align="center">
        Fill in the Form to Add Pet
    </h1>
    </div>
    <h2>
        <caption align="center">
            <h2 align="center">
                <a href="new">Add Pet</a>
                &nbsp;&nbsp;&nbsp;
                <a  href="list">List Pets</a>
                &nbsp;&nbsp;&nbsp;
            </h2>
        </caption>

       <!-- <a  style="text-align: center"  href="listById">List By Id</a>-->
    </h2>
    <p class="ml-1"><i class="text-danger">${validationMessage}</i></p>
    <div class="container-fluid ml-2">
        <div class="center-block">
            <form method="post" action="insert">
    <table border="1" cellpadding="5" width = "30%" align="center"  class="table-light">

        <tr><td align="right"> Gender:</td><td><input type="text" name="name" size="30"></td></tr>
        <tr><td align="right"> Color :</td><td><input type="text" name="color" size="30"></td></tr>
        <tr><td align="right"> Price :</td><td><input type="text" name="price" size="30"></td></tr>
        <tr><td align="right">  <label for="breed">Breed: </label></td>
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
            <td colspan="2" align="center">
                <input type="submit" value="Add Pet" />
            </td>
        </tr>
    </table>
            </form>
        </div>
    </div><div align="center">
    <form action="login.jsp"  >
        <input type="submit" value="Log Out">
    </form></div>
</main>
</body>
<div class="footer-copyright text-center py-3">© 2019 Copyright:Pet Shop</div>
</html>