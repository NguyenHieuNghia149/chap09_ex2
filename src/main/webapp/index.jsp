<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
</head>
<body>
<h1 class="text-4xl font-extrabold dark:text-blue py-2">CD List</h1>

<form action=cart method="get" >
    <c:if test="${not empty cookie.emailCookie}">
        <!-- Use flexbox to align the items in one row -->
        <div class="flex items-center space-x-4">
            <p>Welcome, <c:out value="${cookie.emailCookie.value}" />!</p>
            <input type="hidden" name="action" value="logout">
            <input style="color: #FF4545" class ="font-bold cursor-pointer" type="submit" value="Log out">
        </div>
    </c:if>
</form>


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
                        <input type="hidden" name="action" value="add">
                        <input  type="submit" value="Add To Cart">
                </form></td>
            </tr>
        </c:forEach>

    </table>
</div>

</body>
</html>
