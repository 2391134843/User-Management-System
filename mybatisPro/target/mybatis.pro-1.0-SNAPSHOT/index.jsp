<%--
  Created by IntelliJ IDEA.
  User: 育  Danger
  Date: 2018/10/5
  Time: 10:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--<%@taglib prefix="c" uri= %>--%>
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
            <p><a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/addUser.jsp" role="button">添加用户</a></p>
        </div>
    </div>
    <div class="row">
        <table class="table table-hover table-striped">
            <tr>
                <th>用户编号</th>
                <th>登录账号</th>
                <th>用户昵称</th>
                <%--<th>用户年龄</th>--%>
                <th>用户性别</th>
                <th>邮箱</th>
                <th>联系方式</th>
                <th>账号创建的时间</th>
                <%--<th>最后修改时间</th>--%>
                <%--<th>最后登录时间</th>--%>
                <th>用户状态</th>
                <%--<th>操作方式</th>--%>
            </tr>
            <c:forEach var="user" items="${userList}">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.nickname}</td>
                <%--<td>18</td>--%>
                <td>${user.gender}</td>
                <td>${user.email}</td>
                <td>${user.phone}</td>
                <fmt:formatDate value="${user.lastLogin}" pattern="yyyy-MM-dd"></fmt:formatDate>
                <%--<td>2018-10-2</td>--%>
                <%--<td>2018-10-3</td>--%>
                <c:if test="${user.userStatus==0}">
                    <td>正常</td>
                </c:if>
                <c:if test="${user.userStatus==1}">
                    <td>锁定</td>
                </c:if>
                <c:if test="${user.userStatus==2}">
                    <td>删除</td>
                </c:if>
                <td>
                    <a href="${pageContext.request.contextPath}/detail?id=${user.id}">查看详情</a>
                    <c:if test="${user.userStatus==0}">
                        <a href="${pageContext.request.contextPath}/deluser?id=${user.id}&type=lock">锁定用户</a>
                    </c:if>
                    <c:if test="${user.userStatus==1}">
                        <a href="${pageContext.request.contextPath}/deluser?id=${user.id}&type=unLock">解锁用户</a>
                    </c:if>
                    <a href="${pageContext.request.contextPath}/deluser?id=${user.id}&type=del">删除用户</a>
                </td>
            </tr>
            </c:forEach>
        </table>
    </div>
</div>

</body>
</html>
