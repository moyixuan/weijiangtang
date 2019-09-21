class MyCollect{
	//构造器
	constructor(){
		this.list;
		
	}
	//查询
	query(){
		
		this.loadList();
	}
	
	//加载列表数据
	loadList(){
		var cust = localStorage.getItem("cust");
		cust = JSON.parse(cust);
		var custId = cust.custId;
		$.post(ctx + "/collect_query","custId="+custId,function(res){
			this.data = res.data;
			this.list = this.data.collect;
			var clist = $(".clist").empty();
			var tr1;
			this.list.forEach(function(val,index){
			 tr1 =$('<tr >\
					<td data-videoid="'+val.video.videoId+'" class="tImg"><img class="img" src="'+ base+val.video.videoImg+'" /></td>\
					<td >\
						<div class="jianjie">\
							<span>'+val.video.videoName+'</span>\
							<span>'+val.video.videoDis+'</span>\
						</div>\
					</td>\
					<td class="check">\
						<input type="checkbox" value="'+val.collectId+'"/>\
					</td>\
				</tr>').appendTo(clist);
			tr1.find(".tImg").on("click",function(){
				location.href="cbmv_video.html?videoId="+$(this).data("videoid")
			})
		})

		}.bind(this));
	}
	//删除
	del(){
		let clist = $(".clist input:checked")
		let list = []; 
		clist.each(function(i,item){
			var it = $(item)
			var v=it.val()
			list.push(v);
		})
		var ls = location.search.substr(1);
		var collectnum = parseInt($(".shouchang").text()) + 1;
		$.post(ctx +"/collect_del",{collectId :list},function(res){
			let params = "";
			for(let i =0;i<clist.length;i++){
			 params += "&videoId=" + clist[i].value;
		 }
			
			/*if(res.data > 0){
				 $("#num .shouchang").text(res.data);
				 if($(".glyphicon-heart").data("state")==0)
				 	$(".glyphicon-heart").css("color","red").data("state",1)
				 else
				 	$(".glyphicon-heart").css("color","white").data("state",0)
			}*/
			
			
			alert(res.msg)
			this.loadList();
		}.bind(this))
	}
	
	
	//初始化,绑定各种事件
	init(){
			this.loadList();
			$("#delete").on("click",function(){
				if(confirm("是否删除")){
					this.del();
				}
			}.bind(this))
	}
}
$(function(){
	let myCollect = new MyCollect();
	myCollect.init();
})