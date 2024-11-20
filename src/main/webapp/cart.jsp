<%--
  Created by IntelliJ IDEA.
  User: hieun
  Date: 9/23/2024
  Time: 1:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
<h1 class = "text-2xl text-4xl font-extrabold dark:text-blue py-2">Your Cart</h1>
    <table class="mx-5">
        <tr>
            <th class="px-4 py-2">Quantity</th>
            <th class="px-4 py-2">Description</th>
            <th class="px-4 py-2">Price</th>
            <th class="px-4 py-2">Amount</th>
            <th class="px-4 py-2">&nbsp;</th>
        </tr>


        <c:forEach var="item" items="${cart.items}">
            <tr>
                <td class="border px-4 py-2">
                    <form action="cart"   method="post">
                        <input type="hidden" name="productCode" value="<c:out value='${item.product.code}'/>">
                        <input type="hidden" name="action" value="update">
                        <input type="text" name="quantity" value="<c:out value='${item.quantity}'/>">
                        <input class="textUpdate" type="submit" value="Update">
                    </form>
                </td>
                <td class="border px-4 py-2"><c:out value="${item.product.description}" /></td>
                <td class="border px-4 py-2">${item.product.priceCurrencyFormat}</td>
                <td class="border px-4 py-2">${item.totalCurrencyFormat}</td>
                <td class="border px-4 py-2">
                    <form  class = "addCart"  action="cart" method="post">
                        <input type="hidden" name="productCode" value="<c:out value='${item.product.code}'/>">
                        <input type="hidden" name="quantity" value="0">
                        <input type="hidden" name="action" value="removeItem">
                        <input type="submit" value="Remove item">
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>

<p class = "my-5"><b>To change the quantity</b>, enter the new quantity and click on the Update button.</p>

<form class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded btn mx-5 cursor-pointer " action="cart" method="post">
    <input type="hidden" name="action" value="shop">
        <input type="submit" value="Continue shopping">
</form>

<form class="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded btn mx-5 my-1 cursor-pointer" action=cart method="post">
    <input type="hidden" name="action" value="checkout">
    <input type="submit" value="Checkout">
</form>

<div class="font-bold mx-5 my-1 py-2 px-4 text-lg " style = "color : #FF4545">
    <c:if test="${not empty message}">
        <p>
                ${message}
        </p>
    </c:if>
</div>
</body>
</html>
