$(function(){
	$(".pwdsubmit").on("click",function(){
		
	if(check()){
			var params=$("form").serialize();
		let cust=localStorage.getItem("cust");
		if(cust){
		cust=JSON.parse(cust);	
		let custid=cust.custId;
		paramss=params+"&custId="+custid;
			$.ajax({
			type:"post",
			url:ctx+"/updates",
			data:paramss,
			dataType:"json",
			success:function(res){//回调函数
				if(res.state==0){
			/*sessionStorage.setItem("userToken",res.data.token); */ 
			if(res.data!=null){
				localStorage.removeItem("cust");
				location.href = "login.html";
				alert(res.msg);	
			}//客户端会话缓存，浏览器关闭就没了
			else{
				alert(res.msg);	
				location.href = "changepwd.html";
			}
				}else{
					alert(res.msg);	
				}
			}
		});
	
		}
		
		
		
		
	}
		       
	
		
		

	})

})

function check(){
	var is = true;
	var pwd=$(".pwd").val();
	var repwd=$(".repwd").val();
	var remobile= $(".remobile").val();
	if (!remobile) {
		alert("手机号不能为空");
		is = false;
	}else if(remobile.length != 11){
		alert("手机号格式不正确");
		is = false;
	}else if(!pwd){
		alert("密码不能为空");
		is = false;
	}else if(pwd.length < 8){
		alert("密码不能小于8位");
		is = false;
	}else if(!repwd){
		alert("确认密码不能为空");
		is = false;
	}else if(repwd.length < 8){
		alert("确认密码不能小于8位");
		is = false;
	}else if(pwd!=repwd){
		alert("密码与确认密码不一致");
		is = false;
	}
	return is;
}

