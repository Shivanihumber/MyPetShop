<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

<div class="container-fluid ml-2">
    <div class="center-block">
        <form method="post" >

            <img src="images/petimage.jpg"  style="align-items: center" width="100%" height="300px" class="center"/><br/>
            <table border = "1"  align="center" width="60%" cellpadding="5" class="table-light">
                <tr><td><h3 style="color:black;">Checkout</h3></td><td></td></tr>


                <tr>
                    <th>Name: </th>
                    <td width="50%">
                        <c:out value = "${pet.name}"/>
                    </td>
                </tr>
                <tr>
                    <th>Color: </th>
                    <td width="50%">
                        <c:out value = "${pet.color}"/>
                    </td>
                </tr>
                <tr>
                    <th>Price: </th>
                    <td width="50%">
                        <c:out value = "${pet.price}"/>
                    </td>
                </tr>
                <tr>
                    <th>Breed: </th>
                    <td width="50%">
                        <c:out value = "${pet.breed}"/>
                    </td>
                </tr>

                <caption>
                    <h4>Click  Order To Complete the Purchage.</h4>
                    <h4>Please Call before coming to Pick up Your Order.</h4>
                </caption>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="Order" />
                    </td>

                </tr>



            </table>

        </form>
    </div>
</div>
<div align="center">
    <form action="login.jsp"  >
        <input type="submit" value="Log Out">
    </form></div>
</body>
<div class="footer-copyright text-center py-3">© 2019 Copyright:Pet Shop

</div>
</html>