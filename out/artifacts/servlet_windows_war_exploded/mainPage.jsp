<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2019/12/1
  Time: 3:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页面</title>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%HttpSession hs=request.getSession();
  String name= (String) hs.getAttribute("name");
  %>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-header">
        <a class="navbar-brand" href="#">个人主页</a>
    </div>
    <div class="container">
        <ul class="nav navbar-nav">
            <li class="active"><a href="index.jsp"><span class="glyphicon glyphicon-home"></span> 首页</a></li>
            <li><a href="#"><span class="glyphicon glyphicon-comment"></span> 关于</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <span class="glyphicon glyphicon-user"></span>
                    <%=name%>
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="#">一个选项</a></li>

                </ul>
            </li>
            <li><a href="login.jsp"class="glyphicon glyphicon-log-out">注销</a></li>
        </ul>
    </div>
</nav><br><br>

<div class="container">
    <div class="jumbotron">
        <h1>欢迎登陆页面！</h1>
        <p><a class="btn btn-primary btn-lg" role="button">
            学习更多</a>
        </p>
    </div>
</div>


<div class="row clearfix">
    <div class="col-md-4 column">
        <h2>
           选项一
        </h2>
        <p>
           smod. Donec sed odio dui.
        </p>
        <p>
            <a class="btn" href="gradeShowing.jsp">进入>></a>
        </p>
    </div>
    <div class="col-md-4 column">
        <h2>
            Heading
        </h2>
        <p>
            Donec sed odio dui.
        </p>
        <p>
            <a class="btn" href="#">View details »</a>
        </p>
    </div>
    <div class="col-md-4 column">
        <h2>
            Heading
        </h2>
        <p>
            uismod. Donec sed odio dui.
        </p>
        <p>
            <a class="btn" href="#">View details »</a>
        </p>
    </div>
</div>
</div>
</body>
</html>
