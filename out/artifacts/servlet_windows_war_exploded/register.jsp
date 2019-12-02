<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2019/11/16
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页</title>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <style>
        .css{width:960px;height:200px;margin:0 auto;}
    </style>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-header">
        <a class="navbar-brand" href="#">注册</a>
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
<div style="text-align: center;">
<h1>注册</h1>
    <hr style="width:30% ">
</div>
<div style="text-align: center;">
    <center>
        <form name="register"action="Register"method="post">
        <div class="form-group">
            <label> 用户名：</label>
            <input type="text"class="form-control"style="width: 30%"name="uname">
        </div>
        <div class="form-group">
            <label>密码：</label>
            <input type="password"class="form-control"style="width: 30%"name="pwd">
        </div>
        <label>确认密码：</label>
        <input type="password"class="form-control"style="width: 30%"name="repwd"><br>

            <button type="submit"class="btn btn-info"style="width: 30%">注册</button>
        </form>

    </center>
</div>
</body>
</html>
