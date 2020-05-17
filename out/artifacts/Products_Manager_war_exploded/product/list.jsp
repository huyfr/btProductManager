<%--
  Created by IntelliJ IDEA.
  User: pysga1996
  Date: 7/18/19
  Time: 11:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<h1>Products</h1>
<p>
    <a href="products?action=create">Create new product</a>
</p>
<form method="get">
    <input type="text" name="name" placeholder="Type a product name to search">
    <input type="submit" name="action" value="Search">
</form>
<table border="1">
    <tr>
        <td>Developer</td>
        <td>Model</td>
        <td>Price</td>
        <td>Description</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["products"]}' var="product">
        <tr>
            <td><a href="products?action=view&id=${product.getId()}">${product.getDeveloper()}</a></td>
            <td>${product.getModel()}</td>
            <td>${product.getPrice()}</td>
            <td>${product.getDescription()}</td>
            <td><a href="products?action=edit&id=${product.getId()}">edit</a></td>
            <td><a href="products?action=delete&id=${product.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
