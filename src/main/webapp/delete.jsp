<%--
  Created by IntelliJ IDEA.
  User: Faceless
  Date: 1/4/2021
  Time: 10:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Product</title>
</head>
<body>
    <h1>Delete Product</h1>
    <form method="post">
        <fieldset>
            <legend>Product information</legend>
            <table>
                <tr>
                    <td>Name: </td>
                    <td>${product.getName()}</td>
                </tr>
                <tr>
                    <td>Brand:</td>
                    <td>${product.getBrandName()}</td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Delete"></td>
                </tr>
            </table>
        </fieldset>
    </form>
</body>
</html>
