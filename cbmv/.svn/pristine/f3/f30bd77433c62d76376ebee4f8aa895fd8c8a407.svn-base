onload = function(){
	if(document.querySelector(".cb-query")){
		//删除单个用户
		let dels = document.querySelectorAll(".type-del");
		for (let i = 0; i < dels.length; i++) {
			dels[i].addEventListener("click", function() {
				del(this.dataset.typeid);
			});
		}
		
		//删除多个用户
		document.querySelector(".del-all").addEventListener("click", function() {
			delBySelect();
		});
		//全选
		let selectAll = document.querySelector("#selectall");
		let tlist = document.querySelectorAll(".tlist input[type='checkbox']");
		
		selectAll.addEventListener("change", function() {
			for(var i = 0; i < tlist.length; i++) {
				tlist[i].checked = selectAll.checked;
			}
		});
		
		//查询
		document.querySelector(".type-query").addEventListener("click", function() {
			document.querySelector("form").submit();
		});
		
		//新增
		document.querySelector(".type-add").addEventListener("click", function() {
			location.href = ctx + "/type_edit";
		});
		
		//修改状态
		let status = document.querySelectorAll(".type-status");
		for (let i = 0; i < status.length; i++) {
			status[i].addEventListener("click", function() {
				stus(this.dataset.typeid,this.dataset.status);
			});
		}
		
	}else{
		
		// 新增/修改页面
		document.querySelector(".type-save").addEventListener("click",function(){
			if(check()){
				document.querySelector("form").submit();
			}
			
		});
		
		//重置按钮
		document.querySelector(".type-reset").addEventListener("click",function(){
			document.querySelector("form").reset();
			
		});
		
		//返回按钮
		document.querySelector(".type-back").addEventListener("click",function(){
			let ref = location.href;
			if(ref.lastIndexOf("#") > 0){
				history.go(-2);
			}else{
				history.back();
			}
			
			
		});
		
		
		
	}
}

//单个删除
function del(typeId) {
	if(confirm("您确定要删除此用户信息吗？")) {
		location.href = ctx + "/type_del?typeId=" +typeId;
	}
}

//多选删除
function delBySelect() {
	//被选中的checkbox
	let tlist = document.querySelectorAll(".tlist input:checked");
	if(tlist && tlist.length > 0) {
		if(confirm("您确定要删除这" + tlist.length + "个用户吗？")) {
			let params = "";
			for(var i = 0; i < tlist.length; i++) {
				params += "&typeId=" + tlist[i].value;
			}
			location.href = ctx + "/type_del?" + params.substring(1);
		}
	} else {
		alert("请选择要删除的用户")
	}

}

function stus(typeId,status) {
	if(confirm("您确定要修改此分类状态吗？")) {
		if(status == 1){
			status = 0;
		}else{
			status = 1;
		}
		location.href = ctx + "/type_stus?typeId=" + typeId + "&status=" +status;
	}
}


//检查
function check(){
	let is = true;//定义验证结果变量，默认通过
	let code = document.forms[0].typeCode.value;
	let name = document.forms[0].typeName.value;
	let dis = document.forms[0].typeDis.value;
	
	if(code.trim() == ""){
		alert("编号不能为空");
		return false;
	}
	if(name.trim() == ""){
		alert("名称不能为空");
		return false;
	}
	if(dis.trim() == ""){
		alert("描述不能为空");
		return false;
	}
	//return is;
	return true;
}
