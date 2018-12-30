<%--
  Created by IntelliJ IDEA.
  User: 育  Danger
  Date: 2018/10/5
  Time: 16:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>【官方】管理员登录中心</title>
    <%--导入bootstrap的css文件--%>
    <link rel="stylesheet" href="lib/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <%--导入bootstrap的js文件--%>
    <script src="lib/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <%--导入jQuery文件--%>
    <script src="lib/2.2.4/jquery-1.12.4.min.js"></script>
</head>
<body>
<%--<%--%>
    <%--response.sendRedirect("/index");--%>
<%--%>--%>
<div class="container">
<div class="row">
    <div class="page-header">
        <h1>客户管理系统 <small>管理员登录中心</small></h1>
    </div>
</div>
<div class="row">
    <div class="jumbotron">
        <h1 align="centre">系统管理员 登录平台</h1>
        <p align="centre">
            <a class="btn btn-primary btn-lg" href="https://github.com/2391134843/User-Management-System" role="button">点击查看项目源码地址</a>
        </p>

    </div>
    <form action="/login" method="post">
        <div>
            <%=request.getAttribute("loginInfo")==null?"\n":request.getAttribute("loginInfo")%>
        </div>
        <div class="form-group">
            <label for="inputEmail" class="col-sm-2 control-label">Email</label>
            <div class="col-sm-10">
                <input type="email" class="form-control" name="inputEmail" placeholder="Email">
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword" class="col-sm-2 control-label">Password</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" name="inputPassword" placeholder="Password">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <div class="checkbox">
                    <label>
                        <input type="checkbox"> Remember me
                    </label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <%--<button type="submit" class="btn btn-default">Sign in</button>--%>
                <input type="submit" value="sign in"/>
            </div>
        </div>
    </form>
</div>
    </div>
</body>
</html>
