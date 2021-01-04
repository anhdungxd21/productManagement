<%--
  Created by IntelliJ IDEA.
  User: Faceless
  Date: 1/4/2021
  Time: 10:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit product</title>
</head>
<body>
    <h1>Edit product</h1>
    <a href="products">Back to product list</a><br>
    <c:if test='${requestScope["message"]!=null}'>
        <span>${requestScope["message"]}</span>
    </c:if>
    <form method="post">
    <fieldset>
        <legend>Edit product</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" id="name" value="${product.getName()}"></td>
            </tr>
            <tr>
                <td>Brand: </td>
                <td><input type="text" name="brandName" id="brandName" value="${product.getBrandName()}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Edit"></td>
            </tr>
        </table>
    </fieldset>
    </form>
</body>
</html>
