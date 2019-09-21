$(function(){
	var s = true;
	/*$(".custNichen").on("blur",function(){
		
			s = nichen();
		
	});
	$(".custMobile").on("focus",function(){
			mobile();

	});
	$(".custName").on("blur",function(){
		name();
	});
	$(".custPwd").on("blur",function(){
		pwd();
	});
	$(".aginepwd").on("blur",function(){
		agpwd();
	});*/
	
	//点击注册
	$(".ajax-regist").bind("click", function() {
		
		if(check()){
			
			var formData = new FormData($('#uploadForm')[0]);
		$.ajax({
				url: ctx + "/regist",//请求路径
				type: "POST",//提交方式
				data: formData,//请求的数据
				dataType: "json",//返回数据的类型，即success函数中res参数的类型
				cache: false, 
                processData: false, 
                contentType: false, 
				success: function(res) {//调用成功后的回调函数
					if(res.state == 0) {
						alert(res.msg);
						location.href="login.html";
						
					} else {
						alert(res.msg);
					}
				}
		})
		}
		
	});
	
	$(".rc").on("click",function(){
		$(".file").click();
	});
	$(".file").on("change",function(){
		var read = new FileReader();
		read.readAsDataURL($(".file")[0].files[0]);
		read.onload = function(e){
			$(".ylan").attr("src", this.result );
		}
	})
	
	
});
//昵称
	function nichen(){
		var value = $(".custNichen").val();
		if (!value) {
			alert("昵称不能为空");
			return false;
		}
		return true;
	}
	//手机号
	function mobile(){
		var value = $(".custMobile").val();
		if (!value) {
			alert("手机号码不能为空");
			return false;
		}else if (value.length != 11) {
			alert("手机号码格式不正确");
			return false;
		}
		return true;
	}
	//姓名
	function name(){
		var value = $(".custName").val();
		if (!value) {
			alert("姓名不能为空");
			return false;
		}
		return true;
	}
	//密码
	function pwd(){
		var value = $(".custPwd").val();
		if (!value) {
			alert("密码不能为空");
			return false;
		}
		if(value.length <8 ){
			alert("密码不能小于8位");
			return false;
		}
		return true;
	}
	//再次密码
	function agpwd(){
		var value = $(".aginepwd").val();
		if (!value) {
			alert("密码不能为空");
			return false;
		}
		if(value !=  $(".custPwd").val()){
			alert("密码不一致");
			return false;
		}
		return true;
	}
	
	function check(){
			var is = true;
			if(!nichen()){
				is= false;
			}else
			if (!mobile()) {
				is= false;
			}else
			if (!name()) {
				is= false;
			}else
			if (!pwd()) {
				is= false;
			}else
			if (!agpwd()) {
				is= false;
			}
			return is;
		}