<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>创蓝微讲堂——用户登录</title>
<link href="${ctx }/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="${ctx }/css/cbmv.css" rel="stylesheet" type="text/css">
<link href="${ctx }/css/login.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${ctx }/js/jquery.min.js"></script>
<script type="text/javascript" src="${ctx }/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${ctx }/js/cbmv.js"></script>
<script type="text/javascript" src="${ctx }/js/login.js"></script>
<script type="text/javascript">
	if('${msg}'){
		alert("${msg}");
	}
</script>
</head>

<body>
	<nav class="navbar navbar-inverse" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">创蓝微讲堂</a>
			</div>

		</div>
	</nav>
	<div class="panel panel-info login">
		<div class="panel-heading">
			<h3 class="panel-title">用户登录</h3>
		</div>
		<div class="panel-body">
			<form action="${ctx }/login" method="post" class="form-horizontal" role="form" onsubmit="return check()">
				<div class="form-group">
					<label for="mobile" class="col-sm-3 control-label">手机号</label>
					<div class="col-sm-9">
					  <input  type="text" class="form-control" data-toggle="tooltip" data-placement="bottom" value="${param.mobile}" id="mobile" name="mobile" placeholder="请输入手机号"/>
					</div>
				</div>
				<div class="form-group">
					<label for="pwd" class="col-sm-3 control-label">密码</label>
					<div class="col-sm-9">
				  		<input type="password" class="form-control" id="pwd"  name="pwd" placeholder="请输入密码"/>
					</div>
			  	</div>
				<div class="form-group">
					<label for="captcha" class="col-sm-3 control-label">验证码</label>
					<div class="col-sm-5">
							<!-- autocomplete="off"关闭浏览器的自动补全功能 -->
				  		<input type="text" class="form-control" id="captcha" name="captcha" placeholder="请输入验证码" autocomplete="off" />
					</div>
					<div class="col-sm-4">
						<!-- 验证码图片，src的getVerifyCode是后台访问地址：项目为ssm框架 -->
				  		<img class="verifyCode" src="getVerifyCode" >
					</div>
			  	</div>
				<div class="btn-group-lg">
					<button type="submit" class="btn btn-primary btn- jslogin" data-toggle="submit"> 登录</button>
				</div>
					
			</form>
		</div>
	</div>
</body>
</html>
