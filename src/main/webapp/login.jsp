<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Final Project</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <h1>
        Login Page
    </h1>
    <img src="images/petimage.jpg"  style="align-items: center" width="100%" height="300px" class="center"/><br/>
    <form action="loginRegister" method="post">
        <table border = "1" width = "40%" align="center"  class="table-light" >
            <tr><td align="right"><h3 style="color:red;">Login Page</h3></td><td></td></tr>
            <tr><td align="right">User Email :</td><td><input type="text" name="userEmail"></td></tr>
            <tr><td align="right">Password :</td><td><input type="password" name="userPassword"></td></tr>
            <tr><td align="right"><input type="submit" name="submit" value="login" ></td><td><a href="index.jsp">Registration</a></td></tr>
        </table>


    </form>
</body>
</html>