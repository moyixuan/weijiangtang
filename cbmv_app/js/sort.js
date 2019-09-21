$(function(){
	isnext = true;
	 pd=true;
	var parmas = null;
	ajax(parmas);
	
	
	
	/*查询*/
	$(".each").on("click",function(){
		isnext = true;
		$(".list-group li").detach();
		flid="";
		var videoName = $(".form-control").val();
		parmas= "videoName=" + videoName;
		ajax(parmas);
	})
	
	

	//滚轮滚动事件
	$(window).on("scroll",function(){
			 var a = $(document).height() - $(window).height();
		 var b = $(window).scrollTop() + 1;
		//判断是否滑动到页面底部
		if (b >= a && zt == false) {
			nextpage(); 
		}
			
	});
	
	//点击加载更多
$(".jiazai").on("click",function(){
	var text = $(".jiazai").text();
	if (text == '加载更多') {
		nextpage(); 
	}
	
})
	
});



function tianc(res){
	$(".bkgc li:gt(0)").detach();
						var type = res.data.type;
						var fl;
						for (var i=0;i<type.length;i++) {
							 fl = $(".bkgc").append('<li class="nav-item">\
													<a class="" href="#" data-typeid = "'+type[i].typeId+'">'+type[i].typeName+'</a>\
												</li>');
						}
						fl.find("li").on("click",function(){
								//$(window).off("scroll");
								isnext = true;
								
							/*背景颜色要变化*/
							$(".bkgc li a").css("background-color","")
							$(this).find("a").css("background-color","blueviolet");
							var videoName = $(".form-control").val();
							parmas = "videoName=" + videoName;
							parmas += "&typeId=" + $(this).find("a").data("typeid");
							flid = $(this).find("a").data("typeid");
							$(".list-group li").detach();
							ajax(parmas);
							
						});
						/*分类*/
						
						
}


function xianshi(res){
							var video = res.data.video;
						
						
						for (var i=0;i<video.length;i++) {
							 sp = $(".list-group").append('<li class="list-group-item" data-videoid = "'+video[i].videoId+'">\
													<div class="t-name"><img src="'+base +video[i].videoImg+'"/></div>\
													<div class="t-text">\
														<div class="t-text-a">'+video[i].videoName+'</div>\
														<div class="t-text-b">\
															<ul class="js" style="display: flex;justify-content: space-between;">\
																<li>\
																	<span class="glyphicon glyphicon-education" aria-hidden="true"></span>\
																	<span>'+video[i].videoTeacher+'</span>\
																</li>\
																<li>\
																	<span class="glyphicon glyphicon-user" aria-hidden="true"></span>\
																	<span>'+video[i].playNum+'</span>\
																</li>\
															</ul>\
														</div>\
													</div>\
												</li>');
							
						}
						
				/*点击视频跳转到视频详情页*/
				
				sp.find("li").on("click",function(){
					var cust = localStorage.getItem("cust");
					if (cust != null) {
						location.href="cbmv_video.html?videoId="+$(this).data("videoid");
					}else{
						if (confirm("请您先登录")) {
							location.href="login.html";
						}
					}
					
				});
				
}


let zt = false;
 flid = "";
function nextpage(){		
			zt = true;
			 // TODO 滑动到底部时可请求下一页的数据并加载，加载可使用append方法
		 	var videoName = $(".form-control").val();
			parmas= "videoName=" + videoName+"&videoId=" +  $(".list-group>li:last").data("videoid") + "&typeId=" + flid;
			if (isnext) {
				ajax(parmas);	
			}

}

function ajax(parmas){
	$.ajax({
		type:"post",
		url:ctx + "/sort",
		data: parmas,//请求的数据
		dataType: "json",//返回数据的类型，即success函数中res参数的类型
		success: function(res) {//调用成功后的回调函数
		if(res.state == 0) {
			if (pd) {
				pd = false;
				tianc(res);
				
			}
			xianshi(res)
			if (res.data.video.length < 5 ) {
				isnext = false;
				$(".jiazai").text("无更多数据")
			}else{
				isnext = true;
				$(".jiazai").text("加载更多")
			}
			zt = false;
			/*背景颜色要变化*/
			$(".bkgc li a").css("background-color","");
			var a = $(".bkgc").find("a");
			for (var i = 0; i < a.length; i++) {
				var t  =$(a[i]).data("typeid")
				if (t == flid) {
					$(a[i]).css("background-color","blueviolet");
				}
			}		
		} else {
			alert(res.msg);
		}
		}
	})
}

