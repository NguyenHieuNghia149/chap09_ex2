<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Product Cart</title>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <script src="https://cdn.tailwindcss.com"></script> <!-- Import Tailwind CSS -->
</head>
<body class="bg-gray-100">
<div class="container mx-auto mt-10">
    <h1 class="text-2xl font-bold text-gray-800 mb-4">Cart Details</h1>
    <div class="overflow-x-auto shadow-md sm:rounded-lg">
        <table class="min-w-full bg-white border border-gray-200">
            <thead class="bg-gray-100 border-b border-gray-300">
            <tr>
                <th class="px-4 py-2">Description</th>
                <th class="px-4 py-2">Price</th>
                <th class="px-4 py-2">Quantity</th>
                <th class="px-4 py-2">Amount</th>
            </tr>
            </thead>
            <tbody class="divide-y divide-gray-200">
            <c:forEach var="item" items="${cart.items}">
                <tr>
                    <td class="border px-4 py-2"><c:out value="${item.product.description}" /></td>
                    <td class="border px-4 py-2">${item.product.priceCurrencyFormat}</td>
                    <td class="border px-4 py-2"><c:out value="${item.quantity}" /></td>
                    <td class="border px-4 py-2">${item.totalCurrencyFormat}</td>
                </tr>
            </c:forEach>
            </tbody>
            <tfoot class="bg-gray-100">
            <tr>
                <td colspan="3" class="px-6 py-3 text-right font-semibold text-gray-800">Total:</td>
                <td class="px-6 py-3 text-gray-800 font-bold" ><c:out value="${cartTotal}"/></td>
            </tr>
            </tfoot>
        </table>
    </div>
</div>

<form class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded btn mx-5 my-2 cursor-pointer w-48 " action="cart" method="post">
    <input type="hidden" name="action" value="shop">
    <input type="submit" value="Continue shopping">
</form>

<form class="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded btn mx-5 my-1 cursor-pointer w-48" action=cart method="post">
    <input type="hidden" name="action" value="confirm">
    <input type="submit" value="Confirm">
</form>
</body>
</html>
