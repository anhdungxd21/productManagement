<%--
  Created by IntelliJ IDEA.
  User: Faceless
  Date: 1/3/2021
  Time: 10:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product management</title>
</head>
<body>
    <h1>Product management</h1>
    <a href="/products?action=create">Create a new product</a>
    <table border="1">
        <tr>
            <td>Name</td>
            <td>Brand</td>
            <td>Edit</td>
            <td>Delete</td>
        </tr>
        <c:forEach items='${requestScope["products"]}' var="product">
            <tr>
                <td><a href="/products?action=view&id=${product.getId()}">${product.getName()}</a></td>
                <td>${product.getBrandName()}</td>
                <td><a href="/products?action=edit&id=${product.getId()}">Edit</a></td>
                <td><a href="/products?action=delete&id=${product.getId()}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
