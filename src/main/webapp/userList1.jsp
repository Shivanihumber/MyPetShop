
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<html>
<head>
    <title>User List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <table class="table-dark" border = "1" width = "100%">
        <tr>
            <th>User Name</th>
            <th>User Password</th>
            <th>User Email</th>

        </tr>
        <c:forEach var = "user" items = "${requestScope.list}">
            <tr>
                <td><c:out value = "${user.userName}"/></td>
                <td><c:out value = "${user.userPassword}"/></td>
                <td><c:out value = "${user.userEmail}"/></td>

            </tr>
        </c:forEach>
    </table>
    <c:if test="${fn:length(requestScope.userList) gt 1}">
        <p><b>OMG, we have a
            startup!
        </b></p>
    </c:if>
</body>
</html>
