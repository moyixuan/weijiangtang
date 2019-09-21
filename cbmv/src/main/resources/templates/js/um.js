onload = function() {
	if(document.querySelector(".cb-query")) {
		//删除单个用户
		let dels = document.querySelectorAll(".user-del");
		for (let i = 0; i < dels.length; i++) {
			dels[i].addEventListener("click", function() {
				del(this.dataset.userid);
			});
		}
		
		//删除多个用户
		document.querySelector(".del-all").addEventListener("click", function() {
			delBySelect();
		});

		//全选
		let selectAll = document.querySelector(".selectall");
		let ulist = document.querySelectorAll(".ulist input[type='checkbox']");

		selectAll.addEventListener("change", function() {
			for(var i = 0; i < ulist.length; i++) {
				ulist[i].checked = selectAll.checked;
			}
		});

		//新增
		document.querySelector(".user-add").addEventListener("click", function() {
			location.href = ctx + "/user_edit";
		});
		
		//查询
		document.querySelector(".user-query").addEventListener("click", function() {
			document.querySelector("form").submit();
		});
		
		//修改状态
		let status = document.querySelectorAll(".user-status");
		for (let i = 0; i < status.length; i++) {
			status[i].addEventListener("click", function() {
				stus(this.dataset.userid,this.dataset.status);
			});
		}
		
		
		
	}else{// 新增/修改页面
		//提交按钮
		//失去焦点验证
		document.querySelector("#name").addEventListener("blur",validName);
		document.querySelector("#mobile").addEventListener("blur",validMobile);
		document.querySelector("#idcard").addEventListener("blur",validIdcard);
		let userId = document.forms[0].userId;
		if(!userId){
		document.querySelector("#pwd").addEventListener("blur",validPwd);
		document.querySelector("#cpwd").addEventListener("blur",validCpwd);
		}
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

}

function del(userId) {
	if(confirm("您确定要删除此用户信息吗？")) {
		location.href = ctx + "/user_del?userId=" + userId;
	}
}


function delBySelect() {
	//被选中的checkbox
	let ulist = document.querySelectorAll(".ulist input:checked");
	if(ulist && ulist.length > 0) {
		if(confirm("您确定要删除这" + ulist.length + "个用户吗？")) {
			let params = "";
			for(var i = 0; i < ulist.length; i++) {
				params += "&userId=" + ulist[i].value;
			}
			location.href = ctx + "/user_del?" + params.substring(1);
		}
	} else {
		alert("请选择要删除的用户")
	}

}

function stus(userId,status) {
	if(confirm("您确定要修改此用户状态吗？")) {
		if(status == 1){
			status = 0;
		}else{
			status = 1;
		}
		location.href = ctx + "/user_stus?userId=" + userId + "&status=" +status;
	}
}


//检查
function check(){
	let is = true;//定义验证结果变量，默认通过
	
	let name = document.forms[0].name.value;
	let mobile = document.forms[0].mobile.value;
	let idcard = document.forms[0].idcard.value;
	let pwd = document.forms[0].pwd;
	let cpwd = document.forms[0].cpwd;
	let userId = document.forms[0].userId;
	
	/*if(name.trim() == ""){
		alert("姓名不能为空");
		is= false;
	}*/
	
	
	if(mobile.trim() == ""){
		alert("手机号码不能为空");
		is= false;
	}else if(!/^1[0-9]{10}$/.test(mobile)){
		alert("手机号码格式不正确");
		is= false;
	}
	
	
	if(idcard.trim() == ""){
		alert("身份证号码不能为空");
		is= false;
	}else if(!/^[0-9]{17}[0-9X]$/.test(idcard)){
		alert("身份证号码格式不正确");
		is= false;
	}
	
	
	
	if(!userId){
		if (pwd.value == "") {
			alert("密码不能为空");
			is= false;
		}
		if (pwd.value != cpwd.value) {
			alert("两次密码输入不一致");
			is= false;
		}
		if(!validPwd()){
			is = false;
		}
		if(!validCpwd()){
			is = false;
		}
	}
	
	/*if(!validName()){
		is = false;
	}*/
	if(!validMobile()){
		is = false;
	}
	if(!validIdcard()){
		is = false;
	}
	
	
	return is;
	
}

//姓名验证
function validName(){
	document.querySelector(".hintName").style.display="inline";
	let value = document.querySelector("#name").value.trim();
	if(value.length == 0){
		document.querySelector(".hintName").innerText="用户名不能为空";
		return false;
	}
	document.querySelector(".hintName").innerText= "";
	document.querySelector(".hintName").style.display="none";
	return true;
}

//手机号码验证
function validMobile(){
	document.querySelector(".hintMbile").style.display="inline";
	let mobile = document.querySelector("#mobile").value.trim();
	if(mobile.length == 0){
		document.querySelector(".hintMbile").innerText="手机号码不能为空";
		return false;
	}else if(!/^1[0-9]{10}$/.test(mobile)){
		document.querySelector(".hintMbile").innerText="手机号码格式不正确";
		return false;
	}
	document.querySelector(".hintMbile").innerText= "";
	document.querySelector(".hintMbile").style.display="none";
	return true;
}


//身份证验证
function validIdcard(){
	document.querySelector(".hintIdcard").style.display="inline";
	let idcard = document.querySelector("#idcard").value.trim();
	if(idcard.length == 0){
		document.querySelector(".hintIdcard").innerText="身份证不能为空";
		return false;
	}else if(!/^[0-9]{17}[0-9X]$/.test(idcard)){
		document.querySelector(".hintIdcard").innerText="身份证格式不正确";
		return false;
	}
	document.querySelector(".hintIdcard").innerText= "";
	document.querySelector(".hintIdcard").style.display="none";
	return true;
}

//密码验证
function validPwd(){
	document.querySelector(".hintPwd").style.display="inline";
	
	let pwd = document.querySelector("#pwd").value.trim();
	let cpwd = document.querySelector("#cpwd").value;
	
	if(cpwd.length != 0){
		document.querySelector(".hintCpwd").style.display="inline";
	}
	
	if(pwd.length == 0){
		document.querySelector(".hintPwd").innerText="密码不能为空";
		return false;
	}else if(pwd != cpwd && cpwd.length != 0){
		document.querySelector(".hintPwd").innerText= "";
		document.querySelector(".hintPwd").style.display="none";
		document.querySelector(".hintCpwd").innerText="两次密码不相同";
		return false;
	}
	document.querySelector(".hintPwd").innerText= "";
	document.querySelector(".hintPwd").style.display="none";
	document.querySelector(".hintCpwd").style.display="none";
	return true;
}

function validCpwd(){
	document.querySelector(".hintCpwd").style.display="inline";
	let cpwd = document.querySelector("#cpwd").value;
	let pwd = document.querySelector("#pwd").value;
	if(cpwd.length == 0){
		document.querySelector(".hintCpwd").innerText="确认密码不能为空";
		return false;
	}else if(pwd != cpwd ){
		document.querySelector(".hintCpwd").innerText="两次密码不相同";
		return false;
	}
	document.querySelector(".hintCpwd").innerText= "";
	document.querySelector(".hintCpwd").style.display="none";
	return true;
}

