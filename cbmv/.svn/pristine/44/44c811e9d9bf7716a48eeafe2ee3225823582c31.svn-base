<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!doctype html>
<html>

	<head>
		<meta charset="utf-8">
		<title>创蓝微讲堂——用户${not empty user.userId? '修改':'新增' }</title>
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
				<c:choose>
				   <c:when test="${not empty user.userId }">
					 <li class="active">修改</li>
				   </c:when>
				   <c:otherwise>
				     <li class="active">新增</li>
				  </c:otherwise>
				</c:choose>
			</ol>
			<!--面包屑导航 end-->
			<!--功能模块区 begin-->
			<div class="main">
				
				<form class="form-horizontal cb-form" role="form" action="${ctx }/user_save" method="post" >
				<!-- 防重复提交的token -->
				<input type="hidden" name = "repeaToken" value="${repeaToken }">
				
				
				<c:if test="${not empty user.userId }">
					<input type="hidden" name="userId" value="${user.userId }">
				</c:if>
					<div class="form-group form-group-sm">
						<label for="name" class="col-sm-3 control-label ">姓名 <span class="notnull">*</span></label>
						<div class="col-sm-5 fj">
							<input  type="text" class="form-control" id="name" name="name" placeholder="请输入姓名" value="${user.name }" >
							<div class="hint hintName" id="hint">提示信息</div>
						</div>
						
					</div>
					<div class="form-group form-group-sm">
						<label for="name" class="col-sm-3 control-label nonull">手机号 <span class="notnull">*</span></label>
						<div class="col-sm-5">
							<input type="text" class="form-control" id="mobile" name="mobile" placeholder="请输入手机号" value="${user.mobile }">
							<div class="hint hintMbile" id="hint">提示信息</div>
						</div>
					</div>
					<div class="form-group form-group-sm">
						<label for="name" class="col-sm-3 control-label nonull">身份证<span class="notnull">*</span></label>
						<div class="col-sm-5">
							<input type="text" class="form-control" id="idcard" name="idcard" placeholder="请输入身份证" value="${user.idcard }">
							<div class="hint hintIdcard" id="hint">提示信息</div>
						</div>
					</div>
					
					<!-- 判断是新增还是修改，修改则隐藏密码框 -->
					<c:if test="${empty user.userId }">
						<div class="form-group form-group-sm">
							<label for="name" class="col-sm-3 control-label nonull">密码<span class="notnull">*</span></label>
							<div class="col-sm-5">
								<input type="password" class="form-control" id="pwd" name="pwd" placeholder="请输入密码" >
								<div class="hint hintPwd" id="hint">提示信息</div>
							</div>
						</div>
						<div class="form-group form-group-sm">
							<label for="name" class="col-sm-3 control-label nonull">确认密码<span class="notnull">*</span></label>
							<div class="col-sm-5">
								<input type="password" class="form-control" id="cpwd" name="cpwd" placeholder="请输入密码" >
								<div class="hint hintCpwd" id="hint">提示信息</div>
							</div>
						</div>
					</c:if>
					<c:if test="${not empty user.userId }">
						<div class="form-group form-group-sm">
							<label for="name" class="col-sm-3 control-label nonull">状态<span class="notnull">*</span></label>
							<div class="col-sm-5">
								<select name="status" class="form-control">
									<option value="1" <c:if test="${user.status eq '1' }"> selected="selected"</c:if>>在职</option>
									<option value="0" <c:if test="${user.status eq '0' }"> selected="selected"</c:if>>离职</option>
								</select>
							</div>
						</div>
					</c:if>
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