<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>欢迎进入用户管理中心</title>
    <%--导入bootstrap的css文件--%>
    <link rel="stylesheet" href="lib/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <%--导入bootstrap的js文件--%>
    <script src="lib/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <%--导入jQuery文件--%>
    <script src="lib/2.2.4/jquery-1.12.4.min.js"></script>
</head>

<body>
<div class="container">
    <div class="row">
        <div class="page-header">
            <h1>客户管理系统 <small>用户数据管理中心</small></h1>
        </div>
    </div>
    <div class="row">
        <div class="jumbotron">
            <h1>mybatis基础入门</h1>
            <p>客户管理案例</p>
            <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
        </div>
    </div>

    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <%--这些是不需要修改的内容--%>
            <form class="form-horizontal" action="${pageContext.request.contextPath}/addusers">

                <div class="form-group">
                    <label for="username" class="col-sm-2 control-label">用户账号</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="username" name="username" placeholder="请输入用户账号">
                    </div>
                </div>
                <div class="form-group">
                    <label for="userpass" class="col-sm-2 control-label">登录密码</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="userpass" name="userpass" placeholder="请输入登录密码">
                    </div>
                </div>
                <div class="form-group">
                    <%--name用来传值，id用来当属性--%>
                    <label for="nickname" class="col-sm-2 control-label">昵称</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="nickname" value="${user.nickname}" name="nickname" placeholder="请输入昵称">
                    </div>
                </div>
                <div class="form-group">
                    <label for="age" class="col-sm-2 control-label">年龄</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="age" name="age" value="${user.age}" placeholder="请输入年龄">
                    </div>
                </div>
                <div class="form-group">
                    <label for="gender" class="col-sm-2 control-label">性别</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="gender" name="gender" value="${user.gender}" placeholder="请输入性别">
                    </div>
                </div>
                <div class="form-group">
                    <label for="phone" class="col-sm-2 control-label">联系方式</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="phone" name="phone" value="${user.phone}" placeholder="请输入联系方式">
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-2 control-label">邮箱</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="email" name="email" value="${user.email}" placeholder="请输入邮箱">
                    </div>
                </div>

                <div class="form-group">
                    <input type="submit" value="点击新增用户" class="btn btn-primary">
                    <div align="center">
                        <%--<a  href="/index">点击回到首页</a>--%>
                        <a class="btn btn-default" href="/index" role="button">点击回到首页</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
