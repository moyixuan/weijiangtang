<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!doctype html>
<html>

	<head>
		<meta charset="utf-8">
		<title>创蓝微讲堂——修改密码</title>
		<!--引入页面的js  -->
		<%@ include file="/comm/header.jsp" %>
		<link rel="stylesheet" type="text/css" href="${ctx}/css/um.css" />
		<script type="text/javascript" src="${ctx}/js/userchegepwd.js"></script>
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
				 <li class="active">修改密码</li>
			</ol>
			<!--面包屑导航 end-->
			<!--功能模块区 begin-->
			<div class="main">
				<form class="form-horizontal cb-form" role="form" action="${ctx }/chage_xg" method="post" >
				<!-- 防重复提交的token -->
				<input type="hidden" name = "repeaToken" value="${repeaToken }">
				<c:if test="${not empty param.userId }">
					<input type="hidden" name="userId" value="${param.userId }">
				</c:if>
					<div class="form-group form-group-sm">
						<label for="name" class="col-sm-3 control-label ">原密码 <span class="notnull">*</span></label>
						<div class="col-sm-5 fj">
							<input  type="text" class="form-control" id="oldpwd" name="oldpwd" placeholder="请输入原密码" value="${param.oldpwd }" >
							<div class="hint hintoldpwd" id="hint">提示信息</div>
						</div>
						
					</div>
					<div class="form-group form-group-sm">
						<label for="name" class="col-sm-3 control-label nonull">新密码 <span class="notnull">*</span></label>
						<div class="col-sm-5">
							<input type="text" class="form-control" id="pwd" name="pwd" placeholder="请输入密码" value="${param.pwd }">
							<div class="hint hintnewpwd" id="hint">提示信息</div>
						</div>
					</div>
					<div class="form-group form-group-sm">
						<label for="name" class="col-sm-3 control-label nonull">确认密码<span class="notnull">*</span></label>
						<div class="col-sm-5">
							<input type="text" class="form-control" id="agpwd" name="agpwd" placeholder="请输入密码" value="${param.agpwd }">
							<div class="hint hintagpwd" id="hint">提示信息</div>
						</div>
					</div>
					<div class="form-group form-group-sm">
						<label for="name" class="col-sm-3 control-label"></label>
						<div class="col-sm-5 cb-btn-group">
							<a href="#" class="btn btn-info user-save">提交</a>
							<a href="#" class="btn btn-info user-reset">重置</a>
							<a href="#" class="btn btn-info user-back">返回</a>
						</div>
					</div>
				</form>
				<!--功能模块区 end-->
			</div>
			<!--主内容区 end-->
	</body>

</html>