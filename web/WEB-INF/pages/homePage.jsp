<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: sdlylzhr
  Date: 2018/12/4
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
</head>
<body>
主页
<c:if test="${user == null}" var="re">
    <a href="/loginview">登录</a>
</c:if>
<c:if test="${re == false}">
    ${user}
</c:if>
</body>
</html>
