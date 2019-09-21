$(function(){
	//检测
	$(".nichen").on("blur",function(){
		nichen();
	})
	$(".mobile").on("blur",function(){
		mobile();
	})
	$(".name").on("blur",function(){
		name();
	})
	
	//进页面就进行信息填充
	var cust = localStorage.getItem("cust");
	let custid = null;
	if (cust) {
		cust=JSON.parse(cust);
		 custid=cust.custId;
		console.log(custid);
		$(".tx").attr("src",base+cust.custImg);
		$(".nichen").val(cust.custNichen);
		$(".mobile").val(cust.custMobile);
		$(".name").val(cust.custName);
	}
	//点击修改
	$(".chage").on("click",function(){
		var formData = new FormData($('form')[0]);
		formData.append("custId", custid);
		console.log(formData)
		if (check()) {
			$.ajax({
				type:"post",
				url:ctx + "/update",
				async:true,//请求是否异步，默认true异步，这是ajax的特性
	    		data:formData,//参数值
	    		dataType: "json",//返回数据的类型，即success函数中res参数的类型
				cache: false, 
                processData: false, 
                contentType: false, 
	    		success:function(res){
	    			if(res.state == 0) {
							alert(res.msg);
							location.href="data.html";
						} else {
							alert(res.msg);
						}
	    		}
			});
		}
	})
	
	
	$(".tx").on("click",function(){
		$(".file").click();
	});
	$(".file").on("change",function(){
		var read = new FileReader();
		read.readAsDataURL($(".file")[0].files[0]);
		read.onload = function(e){
			$(".tx").attr("src", this.result );
		}
	})
	
	
});

function check(){
	var is = true;
	if (!nichen()) {
		is= false;
	}else if (!mobile()) {
		is= false;
	}else if (!name()) {
		is= false;
	}
	return is;
}

function nichen(){
	var value = $(".nichen").val();
	if (!value) {
		alert("用户名不能为空");
		return false;
	}
	return true;
}

function mobile(){
	var value = $(".mobile").val();
	if (!value) {
		alert("手机号不能为空");
		return false;
	}else if(value.length != 11){
		alert("手机号格式不正确");
		return false;
	}
	return true;
}

function name(){
	var value = $(".name").val();
	if (!value) {
		alert("姓名不能为空");
		return false;
	}
	return true;
}
