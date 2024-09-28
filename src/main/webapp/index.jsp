<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

</head>
<body>
<h1 style = "font-size: 40px;">CD List</h1>

<div class="relative overflow-x-auto">
    <table class="mx-5">
        <tr>
            <th class="px-4 py-2">Description</th>
            <th class="px-4 py-2">Price</th>
        </tr>
        <c:forEach var="product" items="${productList}">
            <tr >
                <td class="border px-4 py-2"><c:out value="${product.description}" /></td>
                <td class="border px-4 py-2"><c:out value="${product.priceCurrencyFormat}" /></td>
                <td class="border px-4 py-2">
                    <form  class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded"  action="cart" method="post">
                    <input type="hidden" name="productCode" value="<c:out value='${product.code}'/>">
                    <input  type="submit" value="Add To Cart">
                </form></td>
            </tr>
        </c:forEach>

    </table>
</div>

</body>
</html>
