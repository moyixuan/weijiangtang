<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!doctype html>
<html>

<head>
<meta charset="utf-8">
<title>创蓝微讲堂——视频管理</title>
<!--引入页面的js  -->
<%@ include file="/comm/header.jsp"%>
<link rel="stylesheet" type="text/css" href="${ctx }/css/video.css" />
<script type="text/javascript" src="${ctx }/js/video.js"></script>
<script type="text/javascript" src="${ctx }/js/viewvideo.js"></script>
</head>

<body>
	<!--引入头部导航栏  -->
	<%@ include file="/comm/nav.jsp"%>

	<!--主内容区 begin-->
	<div class="container-fluid">
		<!--面包屑导航 begin-->
		<ol class="breadcrumb">
			<li><a href="${ctx }/toindex">首页</a></li>
			<li class="active">视频管理</li>
		</ol>
		<!--面包屑导航 end-->
		<!--功能模块区 begin-->
		<div class="main">
			<!--查询区begin-->
			<div class="panel panel-default cb-query">
				<div class="panel-body">
					<form class="form-horizontal" role="form" action="${ctx }/video_query" method="post">
						<div class="form-group form-group-sm">
							<label for="name" class="col-sm-1 control-label">技术名称</label>
							<div class="col-sm-2">
								<select name="typeId" class="form-control">
									<option value="">全部</option>
									<c:forEach items="${typelist }" var="t">
										<option value="${t.typeId }">${t.typeName}</option>
									</c:forEach>
								</select>
							</div>
							<label for="name" class="col-sm-1 control-label">视频名称</label>
							<div class="col-sm-2">
								<input type="text" class="form-control" id="name" name="videoName"
									placeholder="请输入视频名称">
							</div>
							
							<label for="name" class="col-sm-1 control-label">广推状态</label>
								<div class="col-sm-2">
									<select name="videoLunbo" class="form-control">
										<option value="">全部</option>
										<option value="1" <c:if test="${t.videoLunbo eq '1' }"> selected="selected"</c:if> >已广推</option>
										<option value="0" <c:if test="${t.videoLunbo eq '0' }"> selected="selected"</c:if>>取消广推</option>
									</select>
								</div>
								
								<label for="name" class="col-sm-1 control-label">上下架状态</label>
								<div class="col-sm-2">
									<select name="videoState" class="form-control">
										<option value="">全部</option>
										<option value="1" <c:if test="${t.videoState eq '1'}"> selected="selected"</c:if> >已上架</option>
										<option value="0" <c:if test="${t.videoState eq '0'}"> selected="selected"</c:if>>未上架</option>
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
					<button type="button" class="btn btn-info  btn-sm cb-btn-query video-query">查询</button>
					<button type="button" class="btn btn-info  btn-sm cb-btn-add video-add">新增</button>
					<button type="button" class="btn btn-info  btn-sm cb-btn-remove del-all">删除</button>
					<button type="button" class="btn btn-info  btn-sm cb-btn-remove upvideo-all">上架视频</button>
					<button type="button" class="btn btn-info  btn-sm cb-btn-remove downvideo-all">下架视频</button>
				</div>
			</div>
			<!--按钮 end-->
			<div class="cb-data-list">

				<table class="table table-bordered">
					<thead>
						<tr>
							<th><input type="checkbox" name="selectall" id="selectall"
								value="" /></th>
							<th class="spmc">视频名称</th>
							<th>主讲老师</th>
							<th>技术方向</th>
							<th>播放数</th>
							<th>点赞数</th>
							<th>收藏数</th>
							<th>分享数</th>
							<th>状态</th>
							<th>上下架状态</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody class="vlist">
						<c:forEach items="${page.list }" var="v">
							<tr>
								<td class="col-check"><input type="checkbox"
									name="selectall" id="selectall" value="${v.videoId }" /></td>
								<td>${v.videoName }</td>
								<td>${v.videoTeacher }</td>
								<td>${v.type.typeName }</td>
								<td>${v.playNum }</td>
								<td>${v.likeNum }</td>
								<td>${v.collectNum }</td>
								<td>${v.shareName }</td>
								<td value="${msg}">
								<c:choose>
											<c:when test="${v.videoLunbo eq '0'}">
												未广推
											</c:when>
											<c:otherwise>
												已广推
											</c:otherwise>
										</c:choose>
								</td>
								<td value="${msg}">
								<c:choose>
											<c:when test="${v.videoState eq '0'}">
												未上架
											</c:when>
											<c:otherwise>
												已上架
											</c:otherwise>
										</c:choose>
								</td>
								
								<td class="col-oper">
									<a href="${ctx }/video_edit?videoId=${v.videoId }">修改</a>
									<a href="#" class="video-del" data-videoid="${v.videoId }">删除</a>
									<c:choose>
											<c:when test="${v.videoLunbo eq '0'}">
												<a href="#" class=" videolunbo-status" data-videoid="${v.videoId}" data-lunbostatus="${v.videoLunbo}">广推</a>
											</c:when>
											<c:otherwise>
												<a href="#" class=" videolunbo-status" data-videoid="${v.videoId}" data-lunbostatus="${v.videoLunbo}">取消广推</a>
											</c:otherwise>
										</c:choose>
										<a href="#" class="video-view" data-videoid="${v.videoId }">预览</a>
										<c:choose>
										  <c:when test="${v.videoState eq '0'}">
										  <a href="#" class="video-updown" data-videoid="${v.videoId }" data-videostate="${v.videoState }">上架</a>
										  </c:when>
										  <c:otherwise>
										  <a href="#" class="video-updown" data-videoid="${v.videoId }" data-videostate="${v.videoState }">下架</a>
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
						<a <c:if test="${page.hasPreviousPage == true }"> href="${ctx }/video_query?pageIndex=${page.prePage}&typeId=${param.typeId}&videoName=${param.videoName }" </c:if> >&laquo;</a>
					</li>
					<c:if test="${page.pageNum >= 3 && page.pages >3 }">
						<li>
							<a>...</a>
						</li>
					</c:if>
					<c:forEach begin="${begin }" end="${end }" var="i">
						<li>
							<a href="${ctx}/video_query?pageIndex=${i}&typeId=${param.typeId}&videoName=${param.videoName }" <c:if test="${page.pageNum == i }"> class = "pageNum"</c:if> >${i }</a>
						</li>
					</c:forEach>
					<c:if test="${page.pageNum <= 6 && page.pages >3}">
						<li>
							<a>...</a>
						</li>
					</c:if>
					<li>
						<a <c:if test="${page.hasNextPage == true }"> href="${ctx}/video_query?pageIndex=${page.nextPage}&typeId=${param.typeId}&videoName=${param.videoName }" </c:if> >&raquo;</a>
					</li>
				</ul>
			</div>
			<!--功能模块区 end-->
		</div>
		<!--主内容区 end-->
</body>

</html>
