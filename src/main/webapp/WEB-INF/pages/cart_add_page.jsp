<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cart</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/">Shop</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="/">Home</a></li>

            <li><a href="/order_add_page">Order</a></li>
            <li><a href="/admin">Admin</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        </ul>
    </div>
</nav>
<div class="container">


<table class="table table-striped">
    <thead>
    <tr><td><b></b></td>
        <td><b>Device</b></td>
        <td><b>Price</b></td>
        <td><b>Items</b></td>
        <td><b>Total price:${total}</b></td>


    </tr>
    </thead>
<c:forEach items="${carts}" var="cart">
    <tr>
        <td><a href="/cart/delete/${cart.id}" class="btn btn-info" role="button">Delete from cart</a></td>
        <td>${cart.device.name}</td>
        <td>${cart.device.price}</td>
        <td>${cart.items}</td>
        <td><a href="/${cart.device.id}/-1" class="btn btn-info" role="button">-</a>
        <a href="/${cart.device.id}/1" class="btn btn-info" role="button">+</a> </td>
        <td><a href="/order_add_page" class="btn btn-info" role="button">Make Order</a></td>
    </tr>
    </c:forEach>

</table>

</div>
</body>
</html>
