<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="${ctx}/bootstrap-3.3.7-dist/css/bootstrap.css"/>
    <script type="text/javascript" src="${ctx}/js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="${ctx}/js/popper.min.js"></script>
    <script type="text/javascript" src="${ctx}/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <title>success</title>
</head>
<body>
<a href="${pageContext.request.contextPath }/login.jsp" class=" btn btn-danger" style="margin-left: 43%;margin-top: 30%; width: 200px">注销成功返回登录页面</a>
</body>
</html>
