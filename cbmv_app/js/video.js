class Video{
	constructor(){
		this.list;
		
	}
	//查询
	query(){
		
		this.loadList();
	}
	
	//加载事件
	loadList(){
		var ls = location.search.substr(1);
		$.post(ctx +"/video_query",ls,function(res){
			this.data = res.data;
			if (this.data.videoState == 0) {
				alert("此视频已经下架");
				window.history.back(-1);
			}else{
				//替换属性
			 $(".videoid").attr({"poster":base+this.data.videoImg,"src":base+ this.data.videoUrl})
			 $("#teacher-name dt b").text(this.data.videoName);
			 $("#teacher-name dd span").text(this.data.videoTeacher)
			 $("#num .bofang").text(this.data.playNum);
			 $("#num .dianzhan").text(this.data.likeNum);
			 $("#num .shouchang").text(this.data.collectNum);
			 $("#num .fenxiang").text(this.data.shareName);

			 $("#dis").text(this.data.videoDis);
			 //console.log(this.data.videoDis);
			}
			});
		//判断收藏
		var cust = localStorage.getItem("cust");
		cust = JSON.parse(cust);
		var custId = cust.custId;
		
		$.post(ctx +"/collect_judge_query","video."+ls+"&custId="+custId,function(res){
			if(res.data > 0){
					$(".glyphicon-heart").css("color","red").data("state",1)
				}else{
					$(".glyphicon-heart").data("state",0)
				}
		})
		
		$(".glyphicon-heart").on("click",function(){
			if($(".glyphicon-heart").data("state") == 1){
				alert("已收藏")
			}else{
				this.seav();
			}
		}.bind(this))
		
		
		//点赞判断
		$.post(ctx + "/like_query",ls+"&custId="+custId,function(res){
		
			if(res.data >0){
				$(".glyphicon-thumbs-up").css("color","red").data("state",1)
				
			}else{
				$(".glyphicon-thumbs-up").data("state",0);
				
			}
		})	
		
		$(".glyphicon-thumbs-up").on("click",function(){				
			this.like();													
		}.bind(this))
	}
	
	//点赞数
	like(){
		var ls = location.search.substr(1);
		var cust = localStorage.getItem("cust");
		cust = JSON.parse(cust);
		var custId = cust.custId;
		//var likenum = parseInt($(".dianzhan").text() )+ 1;
		$.post(ctx +"/like_seav",ls+"&custId="+custId,function(res){
			
			if(res.data > 0 ){
				$("#num .dianzhan").text(res.data);
				if($(".glyphicon-thumbs-up").data("state") ==0)
					$(".glyphicon-thumbs-up").css("color","red").data("state",1)
				else
					$(".glyphicon-thumbs-up").css("color","white").data("state",0)
			}
			
		})

		
	}
	
	//点赞删除
	/*del(){
		var ls = location.search.substr(1);
		var cust = localStorage.getItem("cust");
		cust = JSON.parse(cust);
		var custId = cust.custId;
		var likenum = parseInt($(".dianzhan").text() )- 1;
		$.post(ctx+"/like_del",ls+"&custId="+custId+"&likeNum="+likenum,function(res){
			$(".glyphicon-thumbs-up").css("color","white").data("state",0)
			if(res.data > 0 ){
				$("#num .dianzhan").text(likenum);
			}
		})
		
		
	}*/
	
	
	
	//收藏
	seav(){
		var ls = location.search.substr(1);
		var cust = localStorage.getItem("cust");
		cust = JSON.parse(cust);
		var custId = cust.custId;
		//var collectnum = parseInt($(".shouchang").text()) + 1;
		$.post(ctx +"/video_collect_seav","&video."+ls+"&custId="+custId,function(res){
			
			if(res.data > 0){
				 $("#num .shouchang").text(res.data);
				 if($(".glyphicon-heart").data("state")==0)
				 	$(".glyphicon-heart").css("color","red").data("state",1)
				 else
				 	$(".glyphicon-heart").css("color","white").data("state",0)
			}
		})
	}
	
	//进入视频详情就要为浏览加1
	history(){
		var ls = location.search.substr(1);
		var cust = localStorage.getItem("cust");
		cust = JSON.parse(cust);
		var custId = cust.custId;
		$.post(ctx+"/history_add","video."+ls+"&custId="+custId,function(res){
		})
		
	}
	
	
//初始化,绑定各种事件
	init(){
			this.loadList();
			this.history();

}
	}
$(function(){
	let video = new Video();
	video.init();
})
