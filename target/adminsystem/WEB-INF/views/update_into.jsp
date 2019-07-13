<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>销售</title>
	<link rel="stylesheet" type="text/css" href="${ctx}/bootstrap-3.3.7-dist/css/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="${ctx}/dist/bootstrap-table.css" />
	<script type="text/javascript" src="${ctx}/js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="${ctx}/js/popper.min.js"></script>
	<script type="text/javascript" src="${ctx}/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
	<script type="text/javascript" src="${ctx}/dist/bootstrap-table.js"></script>
	<script type="text/javascript" src="${ctx}/dist/extensions/export/bootstrap-table-export.js"></script>
	<script type="text/javascript" src="${ctx}/dist/extensions/toolbar/bootstrap-table-toolbar.js"></script>
	<script type="text/javascript" src="${ctx}/dist/bootstrap-table-locale-all.js"></script>
	<script type="text/javascript" src="${ctx}/tableExport/tableExport.js"></script>
	<script type="text/javascript" src="${ctx}/js/config.js"></script>
	<style>
		/* Custom Styles */

		ul.nav-tabs {
			width: 190px;
			margin-top: -30px;
			border-radius: 4px;
			border: 2px solid #ddd;
			box-shadow: 0 1px 4px rgba(0, 0, 0, 0.067);
		}

		ul.nav-tabs li {
			margin: 0;
			border-top: 1px solid #ddd;
		}

		ul.nav-tabs li:first-child {
			border-top: none;
		}

		ul.nav-tabs li a {
			margin: 0;
			padding: 8px 16px;
			border-radius: 0;
		}

		ul.nav-tabs li.active a,
		ul.nav-tabs li.active a:hover {
			color: #fff;
			background: #0088cc;
			border: 1px solid #0088cc;
		}

		ul.nav-tabs li:first-child a {
			border-radius: 4px 4px 0 0;
		}

		ul.nav-tabs li:last-child a {
			border-radius: 0 0 4px 4px;
			margin-bottom: 577px;
		}

		ul.nav-tabs.affix {
			top: 30px;
			/* Set the top position of pinned element */
		}
	</style>
	<script>
	</script>
</head>

<body data-spy="scroll" data-target="#myScrollspy">
<div class="container">
	<div class="jumbotron">
		<h1>建材管理系统</h1>
	</div>
	<div class="row">
		<div class="col-xs-3" id="myScrollspy">
			<ul class="nav nav-tabs nav-stacked" id="myNav">
				<li>
					<a href="index?id=${id}">我要进货</a>
				</li>
				<li>
					<a href="Inventory_check?id=${id}">查库存</a>
				</li>
				<li>
					<a href="Sale?id=${id}">销售</a>
				</li>
				<li>
					<a href="financial_statements?id=${id}">财务</a>
				</li>
				<li>
					<a href="Out_of_stock?id=${id}">出库记录</a>
				</li>
				<li class="active">
					<a href="update_into?id=${id}">入库更新</a>
				</li>
				<li>
					<a href="logout?id=${id}">注销</a>
				</li>
			</ul>
		</div>
		<div class="col-xs-9">
			<div>
				<h2>销售出库</h2>
			</div>
			<%--搜索框--%>
			<div class="input-group " style="margin-top:0px; position: relative;">
				<input id="search" type="text" class="form-control" placeholder="请输入产品id号"/>
				<span class="input-group-btn">
						   <button class="btn btn-info btn-search">查找</button>
						</span>
			</div>

			<form role="form" action="upDate_into" method="post" onsubmit="return dosubmit();">
				<div class="form-group">
					<input type="text" class="form-control" id="id" name="id" placeholder="id" style="display: none">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" id="userid" name="userid" placeholder="用户id" value="${id}" style="display: none">
				</div>
				<div class="form-group">
					<label>产品名</label>
					<input type="text" class="form-control" id="out_name" name="out_name" placeholder="产品名称">
				</div>
				<div class="form-group">
					<label>品牌名</label>
					<input type="text" class="form-control" id="brand" name="out_brand" placeholder="品牌">
				</div>


				<div style="clear: both"></div>
				<br/>
				<div class="form-group">
					<label>类别</label>
					<input class="form-control" id="item" name="along_to" >
				</div>
				<div class="form-group">
					<label style="color: red">输入增加数量</label>
					<input type="number" step="0.01"  class="form-control" id="number" name="number" min="1" placeholder="数量">
				</div>
				<button id="output" class="btn btn-default" type="submit">更新</button>
			</form>
		</div>
	</div>
</div>

<script type="text/javascript ">

	var isCommitted = false;//表单是否已经提交标识，默认为false
	function dosubmit(){
		if(isCommitted==false){
			isCommitted = true;//提交表单后，将表单是否已经提交标识设置为true
			return true;//返回true让表单正常提交
		}else{
			return false;//返回false那么表单将不提交
		}
	}
	function change(obj){
		var value = $(obj).find('option:selected').val();
		$('#datashow').val(value);

	}
	$(".btn-search").click(function () {
		var text=$("#search").val();
		$("#id").val(text);
		//console.log( $('#id').val())
		$.ajax({
			type:"post",
			//headers : {'Access-Control-Allow-Origin':'*'},
			url:"getInstock",
			data:{"id":text},
			success:function (res) {
				//console.log(res)
				if(res!=null)
				{
					$("#out_name").val(res.goods_name);
					$("#brand").val(res.brand);
					$("#model").val(res.model_size);
					$("#item").val(res.item);
					$("#number").val(res.number);
					//设置最大值
					//$("#number").attr("max",res.number);
					$("#unit").val(res.unit);
					$("#priceone").val(res.retail_price);
					$("#pricetow").val(res.trade_price)
					$("#datashow").val(res.retail_price);

				}

			},
			error:function (res) {

			},
			async:true
		});
	});
</script>
</body>

</html>