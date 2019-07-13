<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>登录</title>
	<link rel="stylesheet" type="text/css" href="${ctx}/bootstrap/css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="${ctx}/css/bootstrap-table.css" />
	<link rel="stylesheet" type="text/css" href="${ctx}/css/bootstrap-theme.css" />
	<script type="text/javascript" src="${ctx}/js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="${ctx}/js/popper.min.js"></script>
	<script type="text/javascript" src="${ctx}/bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript" src="${ctx}/js/bootstrap-table.min.js"></script>
	<script type="text/javascript" src="${ctx}/js/bootstrap-table-export.min.js"></script>
	<script type="text/javascript" src="${ctx}/js/tableExport.min.js"></script>
	<script type="text/javascript" src="${ctx}/js/bootstrap-table-locale-all.min.js"></script>
	<style type="text/css">
		.dialog{
			margin-top: 50px;
			margin-left: 43%;
			align-content: center;
			font-size:3em;
			text-align: center;
			width: 430px;
			height: 60px;
			border-radius: 5px;

		}
	</style>
</head>
<body>
	<div class="dialog" id="dialog">

	</div>
	<a href="${pageContext.request.contextPath }/login.jsp" class=" btn btn-danger" style="margin-left: 43%;width: 200px">返回登录页面</a>



	<script src="${ctx}/js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
		window.onload=function () {
            var msg = ${msg};
            if(msg==1){
                $('#dialog').html("用户不存在或密码错误").addClass('alert-success');
                return false;
            }else if (msg==2){
                $('#dialog').html("用户已在线").addClass('alert-success');
                return false;
            }else {

            }
            }
	</script>
</body>
</html>