<%@ page import="my.model.Breed" %>
<%@ page contentType="text/html;charset=UTF-8"%>


<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Pet</title>
    <style>
        main{
            margin: 0 auto;
            margin-top: 30px;
            padding: 20px;
            width: 30%;
            background-color: white;
            border-radius: 10px;
        }  body{
               margin: 0;
               padding: 0;
               border: 0;

               background-size: 100% ;
           }


    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<main>
    <h1>
        Fill in the Form to Add Pet
    </h1>

    <h2>
        <a href="new">Add New Item</a>
        &nbsp;&nbsp;&nbsp;
        <a  href="list">List All Items</a>
        &nbsp;&nbsp;&nbsp;

       <!-- <a  style="text-align: center"  href="listById">List By Id</a>-->
    </h2>
    <p class="ml-1"><i class="text-danger">${validationMessage}</i></p>
    <div class="container-fluid ml-2">
        <div class="center-block">
            <form method="post" action="insert">
                <br/>
                Gender: <input type="text" name="name"/><br/><br/>

                Color: <input  type="text" name="color"/><br/><br/>
                Price: <input type="text" name="price"/><br/><br/>
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
                <input  type="submit" value="Add Pet">
            </form>
        </div>
    </div>
</main>
</body>
</html>