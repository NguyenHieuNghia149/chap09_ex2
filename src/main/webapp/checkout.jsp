<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
<body>
<h1>CD List</h1>
<table>
    <tr>
        <th>Description</th>
        <th>Price</th></tr>'
    </tr>
    <c:forEach var="product" items="${productList}">
        <tr>
            <td><c:out value="${product.description}" /></td>
            <td><c:out value="${product.priceCurrencyFormat}" /></td>
            <td><form action="cart" method="post">
                <input type="hidden" name="productCode" value="<c:out value='${product.code}'/>">
                <input type="submit" value="Add To Cart">
            </form></td>
        </tr>
    </c:forEach>

</table>

</body>
</html>
