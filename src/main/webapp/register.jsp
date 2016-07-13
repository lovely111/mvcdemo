<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/7/12
  Time: 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>register</title>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script>
        $(function(){
            $('form').submit(function(){
                if ($('#username').val().trim() == '') {
                    alert("username is required.");
                    $('#username').focus();
                    return false;
                }
                if ($('#password').val() == '') {
                    alert("password is required.");
                    $('#password').focus();
                    return false;
                }
                return true;
            });
        });
    </script>
</head>
<body>
<h1>新用户注册</h1>
<form action="/user/create">
    <input type="text"  id="username"  name="username"  placeholder="请输入用户名"><br>
   <input type="text"  id="password" name="password"  placeholder="请输入密码"><br>
            <input type="submit"  value="注册">
</form>

</body>
</html>
