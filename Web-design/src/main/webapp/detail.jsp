<%--
  Created by IntelliJ IDEA.
  User: 育  Danger
  Date: 2018/10/6
  Time: 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>【官方】用户管理中心</title>
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
            <h1>商务客户信息系统</h1>
            <p>客户管理中心：</p>
            <p align="centre"><a class="btn btn-primary btn-lg" href="https://github.com/2391134843/User-Management-System" role="button">点击查看项目源码地址</a></p>
        </div>
    </div>
    <c:set var="user" value="${user}"></c:set>
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <%--这些是不需要修改的内容--%>
            <form class="form-horizontal" action="${pageContext.request.contextPath}/updateUserServlet">
                <input type="hidden" name="id" value="${user.id}">
                <div class="form-group">
                    <label class="col-sm-2 control-label">用户账号</label>
                    <div class="col-sm-10">
                        <p class="form-control-static">${user.name}</p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">登录密码</label>
                    <div class="col-sm-10">
                        <p class="form-control-static">******</p>
                    </div>
                </div>
                <%--下面是可以修改的内容--%>
                <div class="form-group">
                    <%--@declare id="nickname"--%>
                        <label for="nickname" class="col-sm-2 control-label">昵称</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="nickname" value="${user.nickname}"
                                                        placeholder="Password">
                    </div>
                </div>

                <div class="form-group">
                    <label for="age" class="col-sm-2 control-label">年龄</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="age" name="age" value="${user.age}" placeholder="请输入年龄">
                    </div>
                </div>
                <div class="form-group">
                    <%--@declare id="gender"--%>
                        <label for="gender" class="col-sm-2 control-label">性别</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="gender" id="gender" value="${user.gender}" placeholder="请输入性别">
                    </div>
                </div>
                <div class="form-group">
                    <%--@declare id="phone"--%>
                        <label for="phone" class="col-sm-2 control-label">联系方式</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="phone" id="phone"value="${user.phone}" placeholder="请输入联系方式">
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-sm-2 control-label">邮箱</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="email" name="email" value="${user.email}" placeholder="请输入邮箱">
                    </div>
                </div>
                <%--创建时间等等不需要修改--%>
                <div class="form-group">
                    <label class="col-sm-2 control-label">账号创建时间</label>
                    <div class="col-sm-10">
                        <p class="form-control-static">
                            <fmt:formatDate value="${user.createTime}" pattern="yyyy-MM-dd"></fmt:formatDate>
                            </p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">账号更新时间</label>
                    <div class="col-sm-10">
                        <p class="form-control-static">
                            <fmt:formatDate value="${user.updateTime}" pattern="yyyy-MM-dd"></fmt:formatDate>
                        </p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">账号最后登录时间</label>
                    <div class="col-sm-10">
                        <p class="form-control-static">
                            <fmt:formatDate value="${user.lastLogin}" pattern="yyyy-MM-dd"></fmt:formatDate>
                            </p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">用户状态</label>
                    <div class="col-sm-10">
                        <c:if test="${user.userStatus==0}">
                            <p class="form-control-static">正常</p>
                        </c:if>
                        <c:if test="${user.userStatus==1}">
                            <p class="form-control-static">锁定</p>
                        </c:if>
                        <c:if test="${user.userStatus==2}">
                            <p class="form-control-static">删除</p>
                        </c:if>
                    </div>
                </div>
                <div class="form-group">
                    <%--@declare id="nickname"--%>
                    <label for="remark" class="col-sm-2 control-label">备注</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="remark" id="remark"value="${user.remark}" placeholder="请添加备注信息">
                    </div>
                </div>

                <div class="form-group">
                    <input type="submit" value="保存修改内容" class="btn btn-primary">
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
