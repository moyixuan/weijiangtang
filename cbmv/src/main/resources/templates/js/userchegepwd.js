onload = function() {
		// 新增/修改页面
		//提交按钮
		//失去焦点验证
		document.querySelector("#oldpwd").addEventListener("blur",oldpwdyz);
		document.querySelector("#pwd").addEventListener("blur",newPwd);
		document.querySelector("#agpwd").addEventListener("blur",newagpwd);
		let userId = document.forms[0].userId;
		document.querySelector(".user-save").addEventListener("click",function(){
			if(check()){
				document.querySelector("form").submit();
			}
		});
		
		//重置按钮
		document.querySelector(".user-reset").addEventListener("click",function(){
			document.querySelector("form").reset();
			
		});
		
		//返回按钮
		document.querySelector(".user-back").addEventListener("click",function(){
			let ref = location.href;
			
			if(ref.lastIndexOf("#") > 0){
				history.go(-2);
			}else{
				history.back();
			}
			
			
		});


}


//检查
function check(){
	let is = true;//定义验证结果变量，默认通过
	if(!oldpwdyz()){
		is = false;
	}
	if(!newPwd()){
		is = false;
	}
	if(!newagpwd()){
		is = false;
	}
	return is;
	
}





//原密码验证
function oldpwdyz(){
	document.querySelector(".hintoldpwd").style.display="inline";
	let oldpwd = document.querySelector("#oldpwd").value.trim();
	if(oldpwd.length == 0){
		document.querySelector(".hintoldpwd").innerText="原密码不能为空";
		return false;
	}
	document.querySelector(".hintoldpwd").innerText= "";
	document.querySelector(".hintoldpwd").style.display="none";
	return true;
}

//新密码验证
function newPwd(){
	document.querySelector(".hintnewpwd").style.display="inline";
	let pwd = document.querySelector("#pwd").value.trim();
	let agpwd = document.querySelector("#agpwd").value.trim();
	
	if(agpwd.length != 0){
		//document.querySelector(".hintagpwd").style.display="inline";
	}
	
	if(pwd.length == 0){
		document.querySelector(".hintnewpwd").innerText="密码不能为空";
		return false;
	}else if(pwd != agpwd && agpwd.length != 0){
		document.querySelector(".hintnewpwd").innerText= "";
		document.querySelector(".hintnewpwd").style.display="none";
		document.querySelector(".hintagpwd").innerText="两次密码不相同";
		return false;
	}
	document.querySelector(".hintnewpwd").innerText= "";
	document.querySelector(".hintnewpwd").style.display="none";
	document.querySelector(".hintagpwd").style.display="none";
	return true;
}

//确认密码验证
function newagpwd(){
	document.querySelector(".hintagpwd").style.display="inline";
	let agpwd = document.querySelector("#agpwd").value;
	let pwd = document.querySelector("#pwd").value;
	if(agpwd.length == 0){
		document.querySelector(".hintagpwd").innerText="确认密码不能为空";
		return false;
	}else if(pwd != agpwd ){
		document.querySelector(".hintnewpwd").style.display="none";
		document.querySelector(".hintagpwd").innerText="两次密码不相同";
		return false;
	}
	document.querySelector(".hintagpwd").innerText= "";
	document.querySelector(".hintagpwd").style.display="none";
	return true;
}

