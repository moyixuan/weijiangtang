<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!doctype html>
<html>

	<head>
		<meta charset="utf-8">
		<title>创蓝微讲堂——用户列表</title>
		<!--引入页面的js  -->
		<%@ include file="/comm/header.jsp" %>
		<link href="${ctx }/css/um.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="${ctx }/js/um.js"></script>
		
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
				<li class="active">用户管理</li>
				
			</ol>
			<!--面包屑导航 end-->
			<!--功能模块区 begin-->
			<div class="main">

				<!--查询区begin-->
				<div class="panel panel-default cb-query">
					<div class="panel-body">
						<form class="form-horizontal" role="form" action="${ctx }/user_query" method="post">
							<div class="form-group form-group-sm">
								<label for="name" class="col-sm-1 control-label">手机号</label>
								<div class="col-sm-2">
									<input type="text" class="form-control" name="mobile" placeholder="请输入名称" value="${param.mobile}">
								</div>
								<label for="name" class="col-sm-1 control-label">姓名</label>
								<div class="col-sm-2">
									<input type="text" class="form-control" name="name" placeholder="请输入名称" value="${param.name}">
								</div>
								<label for="name" class="col-sm-1 control-label">状态</label>
								<div class="col-sm-2">
									<select name="status" class="form-control">
										<option value="">全部</option>
										<option value="1" <c:if test="${param.status eq '1' }"> selected="selected"</c:if> >在职</option>
										<option value="0" <c:if test="${param.status eq '0' }"> selected="selected"</c:if>>离职</option>
									</select>
								</div>
							</div>
						</form>
					</div>
				</div>
				<!--查询区 end-->
				<!--按钮 begin-->
				<div class="panel panel-default cb-opers">
					<div class="panel-body">
						<button type="button" class="btn btn-info  btn-sm user-query">查询</button>
						<button type="button" class="btn btn-info  btn-sm user-add">新增</button>
						<button type="button" class="btn btn-info  btn-sm del-all">删除</button>
					</div>
				</div>
				<!--按钮 end-->
				<div class="cb-data-list">

					<table class="table table-bordered">
						<thead>
							<tr>
								<th><input type="checkbox" name="selectall" class="selectall" id="selectall" value="" /></th>
								<th>姓名</th>
								<th>手机号</th>
								<th>身份证</th>
								<th>状态</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody class="ulist">
							<c:forEach items="${page.list }" var="u">
								<tr>
									<td class="col-check"><input type="checkbox" name="userId" value="${u.userId }" /></td>
									<td>${u.name }</td>
									<td>${u.mobile }</td>
									<td>${u.idcard }</td>
									<td>
										<c:choose>
											<c:when test="${u.status eq '0'}">
												离职
											</c:when>
											<c:otherwise>
												在职
											</c:otherwise>
										</c:choose>
									</td>
									<td class="col-oper">
										<a href="${ctx }/user_edit?userId=${u.userId}">修改</a>
										<a href="#" class="user-del" data-userid="${u.userId}">删除</a>
										<c:choose>
											<c:when test="${u.status eq '0'}">
												<a href="#" class=" user-status" data-userid="${u.userId}" data-status="${u.status}">在职</a>
											</c:when>
											<c:otherwise>
												<a href="#" class=" user-status" data-userid="${u.userId}" data-status="${u.status}">离职</a>
											</c:otherwise>
										</c:choose>
									</td>
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
							<a <c:if test="${page.hasPreviousPage == true }"> href="${ctx }/user_query?pageIndex=${page.prePage}&mobile=${param.mobile}&name=${param.name }&status=${param.status }" </c:if> >&laquo;</a>
						</li>
							<c:if test="${page.pageNum >= 3 && page.pages >3 }">
								<li>
									<a>...</a>
								</li>
							</c:if>
						<c:forEach begin="${begin }" end="${end }" var="i">
							<li>
								<a href="${ctx}/user_query?pageIndex=${i}&mobile=${param.mobile}&name=${param.name }&status=${param.status }" <c:if test="${page.pageNum == i }"> class = "pageNum"</c:if> >${i }</a>
							</li>
						</c:forEach>
						<c:if test="${page.pageNum <= 6 && page.pages >3}">
								<li>
									<a>...</a>
								</li>
						</c:if>
						<li>
							<a <c:if test="${page.hasNextPage == true }"> href="${ctx}/user_query?pageIndex=${page.nextPage}&mobile=${param.mobile}&name=${param.name }&status=${param.status }" </c:if> >&raquo;</a>
						</li>
					</ul>
				</div>

				<!--功能模块区 end-->
			</div>
			<!--主内容区 end-->
	</body>

</html>