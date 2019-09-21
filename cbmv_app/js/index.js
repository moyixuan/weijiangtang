function loadList(){
	
     let videoId=$(".videodomo>div:last").find("img").data("videoid");
	if(videoId){
		
		videoId="videoId="+videoId;
	}else{
		
		videoId=null;
	}
	

	























	

	
	
	
	
  	$.post(ctx+"/hot",videoId,function(res){
  		let data = res.data;
	 	let list = data;
  		let hotvideo=$(".videodomo")/*.empty()*/;
  		list.forEach(function(val){
  			let tr=$('<div class="container-fluid video">\
        <a href="#" class="thumbnail">\
        <img src="'+base+val.videoImg+'" alt="通用的占位符缩略图" class="indeximg" data-videoid="'+val.videoId+'">\
        </a>\
        <div class="caption">\
        <dt>'+val.videoName+'</dt>\
        <dd>播放数:<span class="glyphicon glyphicon-user" aria-hidden="true" ">'+val.playNum+'</span>\
        </dd>\
        </div>\
    </div>').appendTo(hotvideo);
    tr.on("click",function(){
    	var cust = localStorage.getItem("cust");
    	if (cust != null) {
			location.href="cbmv_video.html?videoId="+$(this).find("img").data("videoid");
		}else{
			if (confirm("请您先登录")) {
				location.href="login.html";
			}
		}
    	
    	
    })
  		})
  		
  	
  		
  		

  	})
  	
  	
  	
  	
  	
  }






$(function(){
	let cust = localStorage.getItem("cust");
		/*console.log(cust);*/
		lunbo();
          loadList();
$(window).scroll(function(){
  
       
　　var scrollTop = Math.ceil($(this).scrollTop());
　　var scrollHeight = $(document).height();
　　var windowHeight = $(this).height();
console.log(scrollTop,windowHeight,scrollHeight);
　　if(scrollTop + windowHeight == scrollHeight){
	
	loadList();
　　}
});


	

})




function lunbo(){
	/*var flag = true;
	  　if (flag) {  
	  flag=false;*/
	  $.ajax({
    url:ctx+"/hots",
    //dataType:"json",
    async:true,//请求是否异步，默认true异步，这是ajax的特性
    type:"GET",//请求的方式
    success:function(res){
    	let  data=res.data;
		let lists=data;
		let videoheadempty= $(".headlunbotu").empty();
		let indicators = $(".carousel-indicators");
		//let videohead=$(".actives");
		console.log(lists);
		lists.forEach(function(val,index){   
				let tr=$('<div class="carousel-item '
				+(index==0?'active':'')
				+'">\
      <img src="'+base+val.videoImg+'"  data-videoid="'+val.videoId+'">\
   '+val.videoName+'</div>').appendTo(videoheadempty);
    let tr1=$('<li data-target="#demo" data-slide-to="'+index+'" class="'
				+(index==0?'active':'')
				+'"></li>').appendTo(videoheadempty);
				
				tr.on("click",function(){
							if (val != null) {
			location.href="cbmv_video.html?videoId="+$(this).find("img").data("videoid");
		}else{
			if (confirm("请您先登录")) {
				location.href="login.html";
			}
		}	
				})

			
	
		})
	
	}
    
	
	})
	  
	 /* }else{
	  	return ;
	  }*/
		
	
	
	
	
	
}





