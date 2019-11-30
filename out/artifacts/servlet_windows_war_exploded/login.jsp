<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2019/11/15
  Time: 21:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面</title>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container">
        <ul class="nav navbar-nav">
            <li class="active"><a href="index.jsp">首页</a></li>
            <li><a href="">关于</a></li>
            <li><a href="login.jsp">登录</a></li>
        </ul>
    </div>
</nav>
<center>

    <form action="Servlet"method="get">
        <h1>登录</h1>
        <hr style="width:30% ">
        <div class="form-group">
            <label for="name">用户名</label>
            <input type="text" class="form-control"style="width:30%"id="name" name="username"placeholder="请输入名称">
        </div>

        <div class="form-group">
            <label for="name">密码</label>
            <input type="password"style="width:30%" class="form-control" name="password" placeholder=""><br>
        </div>

        <button type="submit"class="btn btn-info"style="width: 30%">登录</button>
    </form>

    <form method="get"action="register.jsp">
        <button type="submit"class="btn btn-info"style="width: 30%">注册</button>
    </form>

</center>



</body>
</html>
