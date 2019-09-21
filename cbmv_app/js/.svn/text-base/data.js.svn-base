$(function(){
	var cust = localStorage.getItem("cust");
	if (cust != null) {
		custdata(cust);
	}else{
		alert("请您先登录");
		location.href="login.html";
	}
	
})
function custdata(cust){
	if(cust != null){
		cust=JSON.parse(cust);
		console.log(cust);
	    let	custid=cust.custId;
		console.log(custid);
	$.ajax({
    url:ctx+"/querycust",
    dataType:"json",
    async:true,//请求是否异步，默认true异步，这是ajax的特性
    data:"custId="+custid,//参数值
    type:"GET",//请求的方式
    success:function(res){
    	let data=res.data;

    localStorage.setItem("cust",JSON.stringify(data));
    $(".img").attr("src",base+data.custImg);
    $(".txtx").text(data.custNichen);
     $(".txtx1").text(data.custMobile);
      $(".txtx2").text(data.custName);
}

	});
		
	}
	

}