<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!doctype html>
<html>

	<head>
		<meta charset="utf-8">
		<title>创蓝微讲堂——客户${not empty type.typeId? '修改':'新增' }</title>
		<!--引入页面的js  -->
		<%@ include file="/comm/header.jsp" %>
		<link rel="stylesheet" type="text/css" href="${ctx}/css/subj.css" />
		
		<script type="text/javascript" src="${ctx}/js/subj.js"></script>
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
					<a href="${ctx }/type_query">分类管理</a>
				</li>
				<c:choose>
				   <c:when test="${not empty type.typeId  }">
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
				
				<form class="form-horizontal cb-form" role="form" action="${ctx }/type_save" method="post" >
				<!-- 防重复提交的token -->
				<input type="hidden" name = "repeaToken" value="${repeaToken }">
				
				
				<c:if test="${not empty type.typeId }">
					<input type="hidden" name="typeId" value="${type.typeId }">
				</c:if>
					<div class="form-group form-group-sm">
						<label for="name" class="col-sm-3 control-label ">技术编号 <span class="notnull">*</span></label>
						<div class="col-sm-5 fj">
							<input  type="text" class="form-control" id="name" name="typeCode" placeholder="请输入编号" value="${type.typeCode }" >
							<div class="hint hintName" id="hint">提示信息</div>
						</div>
						
					</div>
					<div class="form-group form-group-sm">
						<label for="name" class="col-sm-3 control-label nonull">技术名称 <span class="notnull">*</span></label>
						<div class="col-sm-5">
							<input type="text" class="form-control" id="mobile" name="typeName" placeholder="请输入技术名称" value="${type.typeName }">
							<div class="hint hintMbile" id="hint">提示信息</div>
						</div>
					</div>
					<div class="form-group form-group-sm">
						<label for="name" class="col-sm-3 control-label nonull">技术描述<span class="notnull">*</span></label>
						<div class="col-sm-5">
							<textarea rows="10" cols="43" name="typeDis">${type.typeDis}</textarea>
							<div class="hint hintIdcard" id="hint" >提示信息</div>
						</div>
					</div>
					
					
					<c:if test="${not empty type.typeId }">
						<div class="form-group form-group-sm">
							<label for="name" class="col-sm-3 control-label nonull">状态<span class="notnull">*</span></label>
							<div class="col-sm-5">
								<select name="status" class="form-control">
									<option value="1" <c:if test="${type.status eq '1' }"> selected="selected"</c:if>>启用</option>
									<option value="0" <c:if test="${type.status eq '0' }"> selected="selected"</c:if>>禁用</option>
								</select>
							</div>
						</div>
					</c:if>
					
					
					
					<div class="form-group form-group-sm">
						<label for="name" class="col-sm-3 control-label"></label>
						<div class="col-sm-5 cb-btn-group">
							<a href="#" class="btn btn-info type-save">提交</a>
							<a href="#" class="btn btn-info type-reset">重置</a>
							<a href="#" class="btn btn-info type-back">返回</a>
						</div>
					</div>
				</form>
				<!--功能模块区 end-->
			</div>
			<!--主内容区 end-->
	</body>

</html>