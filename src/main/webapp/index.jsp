<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/7/11
  Time: 11:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>登录界面</title>

  </head>
  <body>
  <h1  >图书登录网站</h1>

    <form id="div1" action="/user/login">
      用户名:<input type="text"  name="username"  placeholder="请输入用户名"><br>
        密码:<input type="text"  name="password"  placeholder="请输入密码"><br>
      <input type="submit"  value="登录">
    </form>
    ${requestScope.message}
    <a href="register.jsp">新用户注册</a>

  </body>
</html>
