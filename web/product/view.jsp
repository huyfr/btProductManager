<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View product</title>
</head>
<body>
<h1>Product details</h1>
<p>
    <a href="products">Back to product list</a>
</p>
<table>
    <tr>
        <td>Developer: </td>
        <td>${requestScope["product"].getDeveloper()}</td>
    </tr>
    <tr>
        <td>Model: </td>
        <td>${requestScope["product"].getModel()}</td>
    </tr>
    <tr>
        <td>Price: </td>
        <td>${requestScope["product"].getPrice()}</td>
    </tr>
    <tr>
        <td>Description: </td>
        <td>${requestScope["product"].getDescription()}</td>
    </tr>
</table>
</body>
</html>
