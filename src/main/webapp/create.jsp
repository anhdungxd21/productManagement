<%--
  Created by IntelliJ IDEA.
  User: Faceless
  Date: 1/4/2021
  Time: 9:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new product</title>
    <style>
        .message{
            color: red;
        }
    </style>
</head>
<body>
    <a href="/products">Back to product list</a>
    <h1>Create new product</h1>
    <c:if test='${requestScope["message"]!=null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
    <form method="post">
    <fieldset>
        <legend>Create new product</legend>
        <table>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>Brand: </td>
                <td><input type="text" name="brandName" id="brandName"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Create"></td>
            </tr>
        </table>
    </fieldset>
    </form>
</body>
</html>
