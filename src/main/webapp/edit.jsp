<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/7/13
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>edit</title>
</head>
<body>
<c:if test="${sessionScope.user.username eq null}">
    <c:redirect url="/index.jsp"/>
</c:if>
<h1>edit page</h1>
当前用户 ${sessionScope.user.username}
<hr>
<a href="/user/logout">LOG OUT</a>
<hr>
<form action="/book/update" method="post">
    <input type="hidden" name="id" value="${sessionScope.book.id}">
    <input type="text" name="title" placeholder="TITLE" value="${sessionScope.book.title}"><br>
    <input type="text" name="author" placeholder="AUTHOR" value="${sessionScope.book.author}"><br>
    <input type="text" name="date" placeholder="DATE" value="${sessionScope.book.date}"><br>
    <input type="text" name="price" placeholder="PRICE" value="${sessionScope.book.price}"><br>
    <input type="text" name="amount" placeholder="AMOUNT" value="${sessionScope.book.amount}"><br>
    <input type="submit" value="保存"><br>
</form>
</body>
</html>
