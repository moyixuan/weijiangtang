$(function(){
	
	//预览
	let videoview = document.querySelectorAll(".video-view");
	for (let i = 0; i < videoview.length; i++) {
		videoview[i].addEventListener("click", function() {
			view(this.dataset.videoid);
		});
	}

	
	
})





function view(videoId){
	
	if(confirm("您确定要预览吗？")) {
		window.open(ctx + "/view?videoId=" + videoId,"","height=700, width=450, top=0, left=300");
	}else{
		location.href = ctx + "/video_query"	
	}

}