<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>

<head>
<meta charset="utf-8">
<title>创蓝微讲堂——视频新增</title>
<!--引入页面的js  -->
<%@ include file="/comm/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${ctx }/css/video.css" />
<script type="text/javascript" src="${ctx }/js/video.js"></script>
</head>

<body>
	<!--引入头部导航栏  -->
	<%@ include file="/comm/nav.jsp"%>

	<!--主内容区 begin-->
	<div class="container-fluid">
		<!--面包屑导航 begin-->
		<ol class="breadcrumb">
			<li><a href="${ctx }/toindex">首页</a></li>
			<li><a href="${ctx }/video_query">视频管理</a></li>
			<c:choose>
				   <c:when test="${not empty video.videoId }">
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
			<!--查询区begin-->
			<form class="form-horizontal cb-form" role="form" method="post" enctype="multipart/form-data" action="${ctx }/video_save">
			<!-- 防重复提交的token -->
				<input type="hidden" name = "repeaToken" value="${repeaToken }">
				<c:if test="${not empty video.videoId }">
					<input type="hidden" name="videoId" value="${video.videoId }">
				</c:if>
				<div class="form-group form-group-sm">
					<label for="name" class="col-sm-3 control-label">技术名称</label>
					<div class="col-sm-5">
						<select name="type.typeId" class="form-control">
							<c:forEach items="${typelist }" var="t">
								<option value="${t.typeId }" <c:if test="${video.type.typeId == t.typeId }">selected = "selected"</c:if> >${t.typeName}</option>
							</c:forEach>
						</select>
					</div>
				</div>

				<div class="form-group form-group-sm">
					<label for="name" class="col-sm-3 control-label">视频名称</label>
					<div class="col-sm-5">
						<input type="text" class="form-control name" id="name" name="videoName"
							placeholder="请输入视频名称" value="${video.videoName }">
					</div>
				</div>
				<div class="form-group form-group-sm">
					<label for="name" class="col-sm-3 control-label">主讲老师</label>
					<div class="col-sm-5">
						<input type="text" class="form-control teacher" name="videoTeacher"
							placeholder="请输入主讲老师" value="${video.videoTeacher }">
					</div>
				</div>
				<!-- 视频播放数量 -->
				<div class="form-group form-group-sm">
					<label for="name" class="col-sm-3 control-label">播放数量</label>
					<div class="col-sm-5">
						<input type="number" class="form-control playnum" name="playNum" min="0"
							placeholder="请输入播放数量" value="${video.playNum }">
					</div>
				</div>
				<!-- 点赞数量 -->
				<div class="form-group form-group-sm">
					<label for="name" class="col-sm-3 control-label">点赞数量</label>
					<div class="col-sm-5">
						<input type="number" class="form-control likenum" name="likeNum" min="0"
							placeholder="请输入点赞数量" value="${video.likeNum }">
					</div>
				</div>
				<!-- 收藏数量 -->
				<div class="form-group form-group-sm">
					<label for="name" class="col-sm-3 control-label">点赞数量</label>
					<div class="col-sm-5">
						<input type="number" class="form-control collectnum" name="collectNum" min="0"
							placeholder="请输入收藏数量" value="${video.collectNum }">
					</div>
				</div>
				
				<div class="form-group form-group-sm">
					<label for="name" class="col-sm-3 control-label">视频上传</label>
					<div class="col-sm-5 ">
						<div class="xssp">
							<span class="spzi">请选择视频</span>
							<img alt="视频" class="sptu" src="${ctx }${video.videoUrl }">
						</div>
						<input type="file" class="videourl" name="file"  accept="image/*"
							placeholder="请选择视频">
					</div>
				</div>
				<div class="form-group form-group-sm">
					<label for="name" class="col-sm-3 control-label">视频封面上传</label>
					<div class="col-sm-5">
						<div class="xsfm">
							<span class="fmzi">请选择封面</span>
							<img alt="封面" class="fmtu" src="${ctx }${video.videoImg }">
						</div>
						<input type="file" class="form-control videoimg" name="file"  accept="image/*"
							placeholder="请选择视频封面">
					</div>
				</div>
				<div class="form-group form-group-sm">
					<label for="name" class="col-sm-3 control-label">视频描述</label>
					<div class="col-sm-5">
						<textarea class="form-control" rows="5" name="videoDis">${video.videoDis }</textarea>
					</div>
				</div>
				<div class="form-group form-group-sm">
					<label for="name" class="col-sm-3 control-label"></label>
					<div class="col-sm-5 cb-btn-group">
						<a href="#" class="btn btn-info video-save">提交</a> 
						<a href="#" class="btn btn-info video-reset">重置</a> 
						<a href="#" class="btn btn-info video-back">返回</a>
					</div>
				</div>
			</form>
			<!--功能模块区 end-->
		</div>
		<!--主内容区 end-->
</body>

</html>