<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>登录</title>
	<link rel="stylesheet" type="text/css" href="${ctx}/bootstrap-3.3.7-dist/css/bootstrap.css"/>
	<script type="text/javascript" src="${ctx}/js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="${ctx}/js/popper.min.js"></script>
	<script type="text/javascript" src="${ctx}/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
	<style type="text/css">
		body{
			background: url("${ctx}/images/bg1.jpg");
			animation-name:myfirst;
			animation-duration:12s;
			/*变换时间*/
			animation-delay:2s;
			/*动画开始时间*/
			animation-iteration-count:infinite;
			/*下一周期循环播放*/
			animation-play-state:running;
			/*动画开始运行*/
		}
		@keyframes myfirst
		{
			0%   {background:url("${ctx}/images/bg1.jpg");}
			34%  {background:url("${ctx}/images/bg1.jpg");}
			67%  {background:url("${ctx}/images/bg1.jpg");}
			100% {background:url("${ctx}/images/bg1.jpg");}
		}
		.form{width:400px;margin:120px auto;}
		/*阴影*/
		.fa{display: inline-block;top: 27px;left: 6px;position: relative;color: #ccc;}
		input[type="text"],input[type="password"]{padding-left:26px;}
		.checkbox{padding-left:21px;}

		.form-control{
			width: 350px;
		}
		.form-title{
			text-align: center;
		}
		.btn{
			width: 350px;
		}
		.dialog{
			margin: 10px 43%;
			align-content: center;
			font-size:3em;
			text-align: center;
			width: 320px;
			height: 60px;
			border-radius: 5px;

		}
	</style>


</head>
<body>
<div class="container">
	<div class="form row">
		<div class="form-horizontal col-md-offset-3" id="login_form">
			<h3 class="form-title">登录</h3>
			<form action="login" method="post" onsubmit="return loginBeforeCheck();">
			<div class="col-md-9">
				<div class="form-group">
					<i class="fa fa-user fa-lg"></i>
					<input id="id" class="form-control required" type="text" placeholder="账号："  name="id" autofocus="autofocus" maxlength="20"/>
				</div>
				<div class="form-group">
					<i class="fa fa-lock fa-lg"></i>
					<input id="password" class="form-control required" type="password" placeholder="密码："  name="password" maxlength="8"/>
				</div>

				<div class="form-group col-md-offset-9">
					<button  class="btn btn-success " type="submit">登录</button>
				</div>
			</div>
			</form>
		</div>
	</div>
	<div class="dialog" id="dialog">

	</div>
</div>
<script type="text/javascript">
	function loginBeforeCheck() {
        var id = $("#id").val();
		var password = $("#password").val();
		if(id==""){
            $('#dialog').html("用户名不能为空").addClass('alert-success').show().delay(5000).fadeOut();
			return false;
		  }else if (password==""){
            $('#dialog').html("密码不能为空").addClass('alert-success').show().delay(5000).fadeOut();
            return false;
		}else {
		    return true;
		}
    }
   // function login() {
   //     var id = $("#id").val();
   //     var password = $("#password").val();
   //     $.ajax({
   //         type: "POST",
   //         url: "http://127.0.0.1:8089/login",
	// 	  	 data:{"id":id,"password":password},
   //         dataType: "json",
   //         success: function (data) {
   //
   //         },
   //         error: function (data) {
   //             //alert("error")
   //         }
   //     });
   // }
</script>
</body>

</html>
</html>
