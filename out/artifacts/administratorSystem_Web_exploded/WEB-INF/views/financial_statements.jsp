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
		<title>财务报表</title>
		<link rel="stylesheet" type="text/css" href="${ctx}/bootstrap/css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="${ctx}/dist/bootstrap-table.css" />
		<script type="text/javascript" src="${ctx}/js/jquery-3.3.1.min.js"></script>
		<script type="text/javascript" src="${ctx}/js/popper.min.js"></script>
		<script type="text/javascript" src="${ctx}/bootstrap/js/bootstrap.js"></script>
		<script type="text/javascript" src="${ctx}/dist/bootstrap-table.js"></script>
		<script type="text/javascript" src="${ctx}/dist/extensions/export/bootstrap-table-export.js"></script>
		<script type="text/javascript" src="${ctx}/tableExport/tableExport.js"></script>
		<script type="text/javascript" src="${ctx}/dist/extensions/toolbar/bootstrap-table-toolbar.js"></script>
		<script type="text/javascript" src="${ctx}/dist/bootstrap-table-locale-all.js"></script>

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
			.btn-default {
				height: 34px;
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
						<li>
							<a href="index?id=${id}">我要进货</a>
						</li>
						<li>
							<a href="Inventory_check?id=${id}">查库存</a>
						</li>
						<li>
							<a href="Sale?id=${id}">销售</a>
						</li>
						<li class="active">
							<a href="financial_statements?id=${id}">财务</a>
						</li>
                        <li>
                            <a href="Out_of_stock?id=${id}">出库记录</a>
                        </li>
						<li>
							<a href="logout?id=${id}">注销</a>
						</li>
					</ul>
				</div>
				<div class="col-xs-9">
					<div id="reportTableDiv" class="span10">
						<table id="reportTable">
						</table>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			$('#reportTable').bootstrapTable({
				url:"selectallSale",
				method: 'post',
				//toolbar:"#toolbar",
				cache: false,
				//width:740,
				//height: 550,
				locale:"zh-CN",
				striped: true,
				pagination: true,//分页
				pageSize: 10,
				pageNumber: 1,
				sortable: true,                     //是否启用排序
				sortOrder: "asc",                   //排序方式
				pageList: [10, 20, 50, 100, 200, 500],
				paginationPreText: "前一页",
				paginationNextText: "下一页",
				paginationFirstText: "第一页",
				paginationLastText: "最后一页",
				search: true,
				showColumns: true,
				showRefresh: true,
				showToggle:true,
				showExport: true,
				exportTypes: ['excel'],
				clickToSelect: true,
				columns: [{
					field: "id",
					title: "编号",
					align: "center",
					valign: "middle",
					sortable: "true"
				},{
						field: "oldid",
						title: "入库编号",
						align: "center",
						valign: "middle",
						sortable: "true"
					},{
					field: "username",
					title: "经办人",
					align: "center",
					valign: "middle",
					sortable: "true"
				},{
					field: "out_name",
					title: "商品名称",
					align: "center",
					valign: "middle",
					sortable: "true"
				},
					{
						field: "out_price",
						title: "出售价格",
						align: "center",
						valign: "middle",
						sortable: "true"
					},
					{
						field: "out_number",
						title: "出售数量",
						align: "center",
						valign: "middle",
						sortable: "true"
					},
					{
						field: "client",
						title: "客户",
						align: "center",
						valign: "middle",
						sortable: "true"
					},
					{
						field: "money",
						title: "金额",
						align: "center",
						valign: "middle",
						sortable: "true"
					},
					{
						field: "out_des",
						title: "备注",
						align: "center",
						valign: "middle",
						sortable: "true"
					},
					{
						field: "time",
						title: "出库时间",
						align: "center",
						valign: "middle",
						sortable: "true"
					}
				],
				onPageChange: function(size, number) {
					//console.log("页面发生了变化")

				},

			});
		</script>
	</body>

</html>