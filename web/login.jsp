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
    <link rel="stylesheet"href="cs/css.css">
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
</head>
<body background="picture/ChMkJ1bKwb-IOlZuADJ-mwIXIlwAALGdQDHn-0AMn6z560.png">
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-header">
        <a class="navbar-brand" href="#">登录</a>
    </div>
    <div class="container">
        <ul class="nav navbar-nav">
            <li class="active"><a href="index.jsp"><span class="glyphicon glyphicon-home"></span> 首页</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-comment"></span> 关于</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>
        </ul>
    </div>
</nav><br><br><br>
<center>
    <div class="sss">
    <form action="Servlet"method="post">
        <h1>登录</h1>
        <hr style="width:30% ">
        <div class="form-group">
            <label for="name"style="text-align: left">用户名</label>
            <input type="text" class="form-control"style="width:30%"id="name" name="username"placeholder="用户名">
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
    </div>
</center>
</body>
</html>
