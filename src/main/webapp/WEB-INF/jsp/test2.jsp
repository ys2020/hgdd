<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/23
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<html>
<head>
    <title>Title</title>
</head>
<body>

    <c:if test="${empty user}" var="testValue">
        aaaaaaaaaaaaaaa
    </c:if>
    <c:if test="${not testValue}" >
        bbbbb
    </c:if>

    <img src="/statics/images/prod-1.jpg" alt="">
</body>
</html>
