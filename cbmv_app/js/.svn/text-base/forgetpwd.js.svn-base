$(function(){
	//验证
	/*$(".mobile").on("blur",function(){
		mobile();
	});
	$(".name").on("blur",function(){
		name();
	});
	$(".pwd").on("blur",function(){
		pwd();
	});*/
	
	$(".pwdsubmit").on("click",function(){
		if(check()){
			var params=$("form").serialize();
			$.ajax({
				type:"post",
				url:ctx+"/forgetpwd",
				data:params,
				dataType:"json",
				success:function(res){
					if(res.state == 0) {
						alert(res.msg);
						location.href="login.html";
					} else {
						alert(res.msg);
					}
				}
			});
			
		}
	})
	
})

function check(){
			var is = true;
			if (!mobile()) {
				is= false;
			}else if (!name()) {
				is= false;
			}else if (!pwd()) {
				is= false;
			}
			return is;
		}

//手机号验证
function mobile(){
	var value = $(".mobile").val();
	if (!value) {
		alert("手机号不能为空");
		return false;
	}else if(value.length != 11){
		alert("手机号码格式不正确");
		return false;
	}
	return true;
}
//姓名验证
function name(){
	var value = $(".name").val();
	if (!value) {
		alert("姓名不能为空");
		return false;
	}
	return true;
}

//密码验证
function pwd(){
	var value = $(".pwd").val();
	if (!value) {
		alert("密码不能为空");
		return false;
	}else if(value.length < 8 ){
		alert("密码不能小于8位");
		return false;
	}
	return true;
}

