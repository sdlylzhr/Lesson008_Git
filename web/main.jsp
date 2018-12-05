<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jstl测试</title>
</head>
<body>

<c:out value="随便"/>

<c:out value="<a>测试标签</a>" escapeXml="false"/>

<hr>
设置变量值
<c:set var="m" value="nnnnn"/>

获取set的变量值：${m}

<hr>

域

<c:set var="n" value="wangwu" scope="page"/>
${n}

<hr>
<p>保存se变量的值到session域中</p>
<c:set var="se" value="zhaoliu" scope="session"/>

<p>se的值是：${se}</p>

<hr>

<p>移除设置的值</p>

<c:remove var="se"/>

<p>se的值是：${se}</p>


<hr>
<p>流程控制标签c:if</p>

<c:if test="${1>10}" var="re">
    kajsdlk
</c:if>

<p>判断的结果是：${re}</p>

<hr>

<p>流程控制：choose when otherwise</p>

<c:set var="score" value="72"/>

<c:choose>
    <c:when test="${score >= 90}">
        成绩优秀！！
    </c:when>
    <c:when test="${score >= 70 && score <90}">
        成绩良好！
    </c:when>
    <c:when test="${score >= 60 && score < 70}">
        成绩及格
    </c:when>
    <c:otherwise>
        成绩看不懂
    </c:otherwise>
</c:choose>

<hr>
<p>循环标签c:forEach</p>

<%
    // 使用java代码创建一个容器(List,类似于数组)

    List<String> list = new ArrayList<>();
    list.add("刘青龙");
    list.add("黄云飞");
    list.add("向祚舰");
    // 将list变量添加到request域中
    request.setAttribute("li",list);
%>

${li}

<c:forEach var="obj" items="${li}">

    <p>${obj}</p>

</c:forEach>
<hr>
<c:forEach var="obj" items="${li}"
           begin="0" end="2" step="2" varStatus="t">

    ${t.index}
    <p>${obj}</p>

</c:forEach>





<div>
    <a href="index.jsp">test</a>
</div>

</body>
</html>
