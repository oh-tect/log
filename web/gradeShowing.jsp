<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2019/12/2
  Time: 21:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>成绩查询</title>
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
        <a class="navbar-brand" href="#">成绩查询</a>
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
</nav><br><br><br>

<div class="row">
    <div class="col-xs-3" id="myScrollspy">
        <ul class="nav nav-tabs nav-stacked" data-spy="affix" data-offset-top="200">
            <li><a href="#">主页</a></li>
            <li><a href="#">成绩修改</a></li>
            <li><a href="#">设置</a></li>
        </ul>
    </div>
</div>
</body>
</html>
