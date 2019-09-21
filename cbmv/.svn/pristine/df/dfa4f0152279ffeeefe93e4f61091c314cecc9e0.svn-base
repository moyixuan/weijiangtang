<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!doctype html>
<html>

	<head>
		<meta charset="utf-8">
		<title>创蓝微讲堂——用户</title>
		<!--引入页面的js  -->
		<%@ include file="/comm/header.jsp" %>
		<link rel="stylesheet" type="text/css" href="${ctx}/css/um.css" />
		<script type="text/javascript" src="${ctx}/js/um.js"></script>
		
		
		
	
		
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
				<li>
					<a href="${ctx }/user_query">用户管理</a>
				</li>
			</ol>
			<!--面包屑导航 end-->
			<!--功能模块区 begin-->
			<div class="main">
			<ul calss="userinfromation">
			<li>
				<div class="form-group form-group-sm">
						<label for="name" class="col-sm-3 control-label ">姓名 <span class="notnull">*</span></label>
						<div class="col-sm-5 fj">
							<span  class="form-control" id="name" name="name"  value="${user.name}" >${user.name}</span>
						</div>
					</div>
			</li>
			<li>
				<div class="form-group form-group-sm">
						<label for="name" class="col-sm-3 control-label ">电话<span class="notnull">*</span></label>
						<div class="col-sm-5 fj">
							<span  class="form-control" id="mobile" name="mobile"  value="${user.mobile}" >${user.mobile}</span>
						</div>
					</div>
			</li>
			<li>
			<div class="form-group form-group-sm">
						<label for="name" class="col-sm-3 control-label ">状态 <span class="notnull">*</span></label>
						<c:choose>
											<c:when test="${user.status eq '1'}">
												<div class="col-sm-5 fj">
							<span  class="form-control" id="usertatus" name="usertatus">在职</span>
						</div>
											</c:when>
											<c:otherwise>
												<div class="col-sm-5 fj">
							<span  class="form-control" id="usertatus" name="usertatus" >离职</span>
						</div>
											</c:otherwise>
										</c:choose>
					</div>
			</li>
			</ul>
				
			
					
					
				<!--功能模块区 end-->
			</div>
			<!--主内容区 end-->
	</body>

</html>