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
    <link rel="stylesheet" href="CSS.css">
    <title>登录界面</title>
  </head>
  <body>
  <h1>图书登录网站</h1>
  <div  id="div1">
    <form action="/user/login">
      用户名：<input type="text"  name="username"  placeholder="请输入用户名">
      密码：  <input type="text"  name="password"  placeholder="请输入密码">
      <input type="submit"  value="用户注册">
    </form>
  </div>

  </body>
</html>
