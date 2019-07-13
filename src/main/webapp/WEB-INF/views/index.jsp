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
		<title>我要进货</title>
		<link rel="stylesheet" type="text/css" href="${ctx}/bootstrap-3.3.7-dist/css/bootstrap.css"/>
		<script type="text/javascript" src="${ctx}/js/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="${ctx}/bootstrap-3.3.7-dist/js/bootstrap.js"></script>

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
	</head>

	<body data-spy="scroll" data-target="#myScrollspy">
		<div class="container">
			<div class="jumbotron">
				<h1>建材管理系统</h1>
			</div>
			<div class="row">
				<div class="col-xs-3" id="myScrollspy">
					<ul class="nav nav-tabs nav-stacked" id="myNav">
						<li class="active">
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
						<li>
							<a href="update_into?id=${id}">入库更新</a>
						</li>
						<li>
							<a href="logout?id=${id}">注销</a>
						</li>
					</ul>

				</div>
				<div class="col-xs-9">
					<form role="form" action="insertOneInStock" method="post" onsubmit="return dosubmit();">
						<div class="form-group">
							<input type="text" class="form-control" name="userid"  id="userid"  value="${id}" style="display: none">
						</div>
						<div class="form-group">
							<label>品牌</label>
							<input type="text" class="form-control" id="brand" name="brand" placeholder="品牌">
						</div>
						<div class="form-group">
							<select class="form-control" name="item">
								<option>所属类别</option>
								<option value="文具类">文具类</option>
								<option value="日杂类">日杂类</option>
								<option value="管材类">管材类</option>
								<option value="工具类">工具类</option>
								<option value="装修类">装修类</option>
								<option value="JDG类">JDG类</option>
								<option value="楼梯类">楼梯类</option>
								<option value="其他">其他</option>
							</select>
						</div>
						<div class="form-group">
							<label>产品名</label>
							<input type="text" class="form-control" id="name" name="goods_name" placeholder="产品名称">
						</div>
						<div class="form-group">
							<label>规格型号</label>
							<input type="text" class="form-control" id="model" name="model_size" placeholder="规格型号">
						</div>
						<div class="form-group">
							<label>单位</label>
							<input type="text" class="form-control" id="unit" name="unit" placeholder="单位">
						</div>
						<div class="form-group">
							<label>数量</label>
							<input type="number" step="0.01" class="form-control" id="number" name="number" placeholder="数量">
						</div>
						<div class="form-group">
							<label>进货单价</label>
							<input type="number" step="0.01" class="form-control" id="purchase_price" name="purchase_price" placeholder="进货单价">
						</div>
						<div class="form-group">
							<label>参考批发价</label>
							<input type="number" step="0.01" class="form-control" id="trade_price" name="trade_price" placeholder="参考批发价">
						</div>
						<div class="form-group">
							<label>参考零售价</label>
							<input type="number" step="0.01" class="form-control" id="retail_price" name="retail_price" placeholder="参考零售价(￥)">
						</div>
						<div class="form-group">
							<label>备注</label>
							<textarea type="text" class="form-control" id="remarks" name="des" placeholder="备注" rows="8" cols="18"></textarea>
						</div>

						<button type="submit" class="btn btn-default">入库</button>
					</form>
				</div>
			</div>

		</div>
		<script type="application/javascript">
			var isCommitted = false;//表单是否已经提交标识，默认为false
			function dosubmit(){
				if(isCommitted==false){
					isCommitted = true;//提交表单后，将表单是否已经提交标识设置为true
					return true;//返回true让表单正常提交
				}else{
					return false;//返回false那么表单将不提交
				}
			}
		</script>
	</body>

</html>