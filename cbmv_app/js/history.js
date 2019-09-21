$(function(){
	var cust = localStorage.getItem("cust");
	let custid = null;
	if (cust) {
		cust=JSON.parse(cust);
		 custid=cust.custId;
	}
	cx()
	function cx(){
		$.ajax({
		type:"post",
		url:ctx + "/history_query",
		async:true,
		data:"custId=" + custid,
		success:function(res){
			if(res.state == 0) {
				var list = res.data;
				$(".history").empty();
				for (var i=0;i<list.length;i++) {
					
					 a = $(".history").append('<div class="container-fluid his-nav">\
										<div><img src="'+base+list[i].video.videoImg+'" class="nav-img" /></div>\
										<div class="nav-txt">\
											<p>'+list[i].video.videoName+'</p>\
											<p>'+list[i].video.videoDis+'</p>\
										</div>\
										<div class="nav-href"><a href="cbmv_video.html?videoId='+ list[i].video.videoId+'" class="nav-a">继续观看</a></div>\
										<div class="xz">\
											<input type="checkbox"  data-historyid = "'+list[i].historyId+'">\
										</div>\
									</div>');
				
				}
				
				
			} else {
				alert(res.msg);
			}
		}
	});
	}
	
	/*删除*/
	$("#delete").on("click",function(){
		var input = a.find("input:checked");
		var parmas="";
		if (input.length > 0) {
			if (confirm("是否这"+input.length+"条记录删除!")) {
			
		for (var i = 0; i <input.length; i++) {
			parmas +="&historyId="+ $(input[i]).data("historyid");
		}
		console.log(parmas.substr(1))
		$.ajax({
			type:"post",
			url:ctx + "/history_del",
			data:parmas.substr(1),
			async:true,
			success:function(res){
				if(res.state == 0) {
					cx()
				} else {
					alert(res.msg);
				}
			}
		});
		}
		}else{
			alert("请选择要删除的记录")
		}
	})
	
	
})
