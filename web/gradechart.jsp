<%--
  Created by IntelliJ IDEA.
  User: LENOVO
  Date: 2020/1/7
  Time: 19:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>成绩表</title>
    <link rel="stylesheet"href="cs/css.css">
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
</head>
<body>
<%
    HttpSession hs=request.getSession();
    int ch= (int) hs.getAttribute("Chinese");
    int ma=(int) hs.getAttribute("Math");
    int en=(int) hs.getAttribute("English");
    int po=(int) hs.getAttribute("Politics");
    int hi=(int) hs.getAttribute("History");
    int ge=(int) hs.getAttribute("Geography");
    int bi=(int) hs.getAttribute("Biography");
    int ph=(int) hs.getAttribute("Physics");
    int che=(int) hs.getAttribute("Chemistry");
%>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="navbar-header">
        <a class="navbar-brand" href="#">成绩表</a>
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
</nav>
<br><br><br>
<table class="table table-hover">
    <thead>
    <tr>
        <th>名称</th>
        <th>语文</th>
        <th>数学</th>
        <th>英语</th>
        <th>政治</th>
        <th>历史</th>
        <th>地理</th>
        <th>生物</th>
        <th>物理</th>
        <th>化学</th>
    </tr>
    <td> </td>
    <td><%=ch%></td>
    <td><%=ma%></td>
    <td><%=en%></td>
    <td><%=po%></td>
    <td><%=hi%></td>
    <td><%=ge%></td>
    <td><%=bi%></td>
    <td><%=ph%></td>
    <td><%=che%></td>
    </thead>
    </table>
 </body>
</html>
