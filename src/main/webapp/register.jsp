<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
<body class="bg-gray-100 font-sans">
<div class="max-w-2xl mx-auto p-6 bg-white rounded-lg shadow-lg mt-10">
    <h1 class="text-3xl font-bold text-center mb-6">Registration</h1>
    <p class="text-center text-gray-600 mb-4">To register for our shopping, enter your name and email address below. Then, click on the Submit button.</p>

    <form action="cart" method="post">
        <input type="hidden" name="action" value="registerUser">

        <div class="mb-4">
            <label for="email" class="block text-sm font-medium text-gray-700">Email:</label>
            <input type="email" name="email" value="${user.email}" id="email" class="w-full px-4 py-2 mt-1 border border-gray-300 rounded-lg focus:ring-blue-500 focus:border-blue-500">
        </div>

        <div class="mb-4">
            <label for="firstName" class="block text-sm font-medium text-gray-700">First Name:</label>
            <input type="text" name="firstName" value="${user.firstName}" id="firstName" class="w-full px-4 py-2 mt-1 border border-gray-300 rounded-lg focus:ring-blue-500 focus:border-blue-500">
        </div>

        <div class="mb-6">
            <label for="lastName" class="block text-sm font-medium text-gray-700">Last Name:</label>
            <input type="text" name="lastName" value="${user.lastName}" id="lastName" class="w-full px-4 py-2 mt-1 border border-gray-300 rounded-lg focus:ring-blue-500 focus:border-blue-500">
        </div>

        <div class="text-center">
            <input type="submit" value="Register" class="px-6 py-2 bg-blue-500 text-white rounded-lg hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-opacity-50">
        </div>
    </form>
</div>
</body>
</html>
