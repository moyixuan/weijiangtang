<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>


<!doctype html>
<html>

	<head>
		<meta charset="utf-8">
		<title>创蓝微讲堂——客户管理</title>
		<!--引入页面的js  -->
		<%@ include file="/comm/header.jsp" %>
		<link rel="stylesheet" type="text/css" href="${ctx}/css/cust.css" />
		<script type="text/javascript" src="${ctx}/js/cust.js"></script>

	</head>

	<body>
		<!--引入头部导航栏  -->
		<%@ include file="/comm/nav.jsp" %>

		<!--主内容区 begin-->
		<div class="container-fluid">
			<!--面包屑导航 begin-->
			<ol class="breadcrumb">
				<li>
					<a href="${ctx }/toindex">首页</a>
				</li>
				<li class="active">客户管理</li>
			</ol>
			<!--面包屑导航 end-->
			<!--功能模块区 begin-->
			<div class="main">
				<!--查询区begin-->
				<div class="panel panel-default cb-query">
					<div class="panel-body">
						<form class="form-horizontal" role="form" action="${ctx }/cust_query" method="post">
							<div class="form-group form-group-sm">
								<label for="name" class="col-sm-1 control-label">手机号</label>
								<div class="col-sm-2">
									<input type="text" class="form-control" name="custMobile" placeholder="请输入手机号" value="${param.custMobile}">
								</div>
								<label for="name" class="col-sm-1 control-label">姓名</label>
								<div class="col-sm-2">
									<input type="text" class="form-control" name="custName" placeholder="请输入名称" value="${param.custName }">
								</div>
								<label for="name" class="col-sm-1 control-label">昵称</label>
								<div class="col-sm-2">
									<input type="text" class="form-control" name="custNichen" placeholder="请输入昵称" value="${param.custNichen }">
								</div>
							</div>
						</form>
					</div>
				</div>
				<!--查询区 end-->
				<!--按钮 begin-->
				<div class="panel panel-default cb-opers">
					<div class="panel-body">
						<button type="button" class="btn btn-info  btn-sm cust-query">查询</button>
					</div>
				</div>
				<!--按钮 end-->
				<div class="cb-data-list">

					<table class="table table-bordered">
						<thead>
							<tr>
								<th>姓名</th>
								<th>手机号</th>
								<th>昵称</th>
								<th>头像</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page.list }" var="c">
								<tr>
									<td>${c.custName }</td>
									<td>${c.custMobile }</td>
									<td>${c.custNichen}</td>
									<td><span style="background-image: url(${ctx}${c.custImg})"></span></td>
								</tr>
							</c:forEach>
							
						</tbody>
					</table>

					<ul class="pagination pagination-sm pull-right">
						<!-- 中间页 -->
							<!--显示3页中间页[begin=起始页,end=最大页 -->
							<!-- 总页数没有3页 -->
							<c:choose>
								<c:when test="${page.pages<=3 }">
									<c:set var="begin" value="1"></c:set>
									<c:set var="end" value="${page.pages }"></c:set>
								</c:when>
								 <c:when test="${page.pageNum<=2}">
				                     <c:set var="begin" value="1"></c:set>
				                     <c:set var="end" value="4"></c:set>
				                </c:when>
								<c:when test="${page.pageNum>2}">
				                     <c:set var="begin" value="${page.pageNum-1}"></c:set>
				                     <c:set var="end" value="${page.pageNum+1}"></c:set>
				                     <c:if test="${page.pageNum+1 == page.pages}">                         
				                     	<c:set var="begin" value="${page.pages-2}"></c:set>
				                     	<c:set var="end" value="${page.pages}"></c:set>                     
				                     </c:if>
				                     <c:if test="${page.pageNum+1 > page.pages}">                         
				                     	<c:set var="begin" value="${page.pages-3}"></c:set>
				                     	<c:set var="end" value="${page.pages}"></c:set>                     
				                     </c:if>
				                </c:when>
							</c:choose>
						<li>
							<a <c:if test="${page.hasPreviousPage == true }"> href="${ctx }/cust_query?pageIndex=${page.prePage}&custMobile=${param.custMobile}&custName=${param.custName }&cusetNichen=${param.cusetNichen }" </c:if> >&laquo;</a>
						</li>
						<c:if test="${page.pageNum >= 3 && page.pages >3 }">
							<li>
								<a>...</a>
							</li>
						</c:if>
						<c:forEach begin="${begin }" end="${end }" var="i">
							<li>
								<a href="${ctx}/cust_query?pageIndex=${i}&custMobile=${param.custMobile}&custName=${param.custName }&cusetNichen=${param.cusetNichen }" <c:if test="${page.pageNum == i }"> class = "pageNum"</c:if> >${i }</a>
							</li>
						</c:forEach>
						<c:if test="${page.pageNum <= 6 && page.pages >3}">
							<li>
								<a>...</a>
							</li>
						</c:if>
						<li>
							<a <c:if test="${page.hasNextPage == true }"> href="${ctx}/cust_query?pageIndex=${page.nextPage}&custMobile=${param.custMobile}&custName=${param.custName }&cusetNichen=${param.cusetNichen }" </c:if> >&raquo;</a>
						</li>
					</ul>
				</div>
				<!--功能模块区 end-->
			</div>
			<!--主内容区 end-->
	</body>

</html>