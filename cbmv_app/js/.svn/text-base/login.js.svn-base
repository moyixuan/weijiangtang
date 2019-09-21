$(function(){


	$(".login").on("click",function(e){
		$("#test_msg1").text($("#test_msg1").text()+"1");
		e.preventDefault();
		if (check()) {
			var params=$("form").serialize();
			$.ajax({
			type:"post",
			url:ctx+"/frontlogin",
			data:params,
			dataType:'text',
			complete:function(XMLHttpRequest,textStatus){
				$("#test_msg").text(XMLHttpRequest.readyState 
					+ ',' +XMLHttpRequest.status + ','+textStatus
				+','+ XMLHttpRequest.responseText);
			},
			success:function(res){//回调函数
				res = JSON.parse(res);
				if(res.state==0){
			/*sessionStorage.setItem("userToken",res.data.token); */   //客户端会话缓存，浏览器关闭就没了
			console.log(res.data)
				
				localStorage.setItem("cust",JSON.stringify(res.data));
				   alert(res.msg);
			    location.href = "index.html"; 	
           // check();          	     	
				}else{
					alert(res.msg);	
				}  
				
			}
		});
		}
		
	
		
		
	return false;
	})

})

//填充
  
function check(){
	var is = true;
	if (!custmobile()) {
		is = false;
	}else if(!custpwd()){
		is = false;
	}
	return is;
}




	
function custmobile(){
	var mobile=$(".mobile").val();
	if(!mobile){
		alert("密码不能为空或手机号不能为空");
		return false;
	}
	return true;
	
}
function custpwd(){
	var pwd=$(".pwd").val();
	if(!pwd){
		alert("密码不能为空或手机号不能为空");
		return false;
	}
	return true;
	
}




	
	


