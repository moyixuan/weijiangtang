// JavaScript Document
/*$(function(){
	$(".form-control").bind("blur",function(){
		$(this).tooltip({title : Math.random(),placement : "bottom",animation:true})
		.on('shown.bs.tooltip', function () {
			var t = this;
		  setTimeout(function(){$(t).tooltip('destroy')},3000)
		}).tooltip("show");
	}).bind("focus",function(){
		$(this).tooltip('destroy');
	})
	$(".jslogin").bind("click",function(){
		location.href = "index.html"
	})
})
*/

//表单验证
function check() {
	//获取表单数据
	var mobile = document.forms[0].mobile.value;
	var pwd = document.forms[0].pwd.value;
	
	//验证状态
	let flag = true;
	//验证规则
	if(mobile == ""){
		$("#mobile").tooltip({title : "手机号不能为空",placement : "bottom",animation:true})
		.on('shown.bs.tooltip', function () {
			var t = this;
		  setTimeout(function(){$(t).tooltip('destroy')},3000)
		}).tooltip("show");
		flag = false;
	}
	if(pwd == ""){
		$("#pwd").tooltip({title : "密码不能为空",placement : "bottom",animation:true})
		.on('shown.bs.tooltip', function () {
			var t = this;
		  setTimeout(function(){$(t).tooltip('destroy')},3000)
		}).tooltip("show");
		flag =  false;
	}
	return flag;
}


//点击验证码刷新
onload = function(){
	document.querySelector(".verifyCode").addEventListener("click",function() {
		var src = "getVerifyCode?" + new Date().getTime();//加时间戳，防止浏览器利用缓存
		this.src = src;
	});
}
