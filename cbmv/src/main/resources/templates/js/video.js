/*$(function(){
	$(".cb-btn-add").bind("click",function(){
		$.proxy(cb.toPage,this)("videofrom.html");
	})
})
*/

onload = function() {
	if(document.querySelector(".cb-query")) {
		//查询
		document.querySelector(".video-query").addEventListener("click", function() {
			document.querySelector("form").submit();
		});
		//删除单个用户
		let dels = document.querySelectorAll(".video-del");
		for (let i = 0; i < dels.length; i++) {
			dels[i].addEventListener("click", function() {
				del(this.dataset.videoid);
			});
		}
		//删除多个用户
		document.querySelector(".del-all").addEventListener("click", function() {
			delBySelect();
		});
		
		//全选
		let selectAll = document.querySelector("#selectall");
		let vlist = document.querySelectorAll(".vlist input[type='checkbox']");
		
		selectAll.addEventListener("change", function() {
			for(var i = 0; i < vlist.length; i++) {
				vlist[i].checked = selectAll.checked;
			}
		});
		
		//新增
		document.querySelector(".video-add").addEventListener("click", function() {
			location.href = ctx + "/video_edit";
		});
		
		
		//修改状态
		let status = document.querySelectorAll(".videolunbo-status");
		for (let i = 0; i < status.length; i++) {
			
			status[i].addEventListener("click", function() {
				stus(this.dataset.videoid,this.dataset.lunbostatus);
			});
		}
		
		
		//修改上下架状态
		let states=document.querySelectorAll(".video-updown");
		for(let i=0;i<states.length;i++){
			states[i].addEventListener("click", function() {
				stes(this.dataset.videoid,this.dataset.videostate);
			});

			
		}
		
		
		
		
		
		
		
		
	}else{
		// 新增/修改页面
		document.querySelector(".video-save").addEventListener("click",function(){
			if(check()){
				document.querySelector("form").submit();
			}
			
		});
		
		//重置按钮
		document.querySelector(".video-reset").addEventListener("click",function(){
			document.querySelector("form").reset();
			
		});
		
		//返回按钮
		document.querySelector(".video-back").addEventListener("click",function(){
			let ref = location.href;
			if(ref.lastIndexOf("#") > 0){
				history.go(-2);
			}else{
				history.back();
			}
			
			
		});
		
		
		//点击方框显示图片并预览
		$(".xssp").on("click",function(){
			$(".videourl").click();
		});
		$(".videourl").on("change",function(){
			if($(".videourl")[0].files.length>0){
				var read = new FileReader();
				
				read.readAsDataURL($(".videourl")[0].files[0]);
				read.onload = function(e){
					$(".sptu").attr("src", this.result );
					//如果选择了图片则span要隐藏，而img要显示；
					$(".spzi").css("display","none");
					$(".sptu").css("display","block");
				}
			}else{
				$(".spzi").css("display","block");
				$(".sptu").css("display","none");
			}	
		});
		$(".xsfm").on("click",function(){
			$(".videoimg").click();
		});
		$(".videoimg").on("change",function(){
			if($(".videoimg")[0].files.length>0){
				var read = new FileReader();
				read.readAsDataURL($(".videoimg")[0].files[0]);
				read.onload = function(e){
					$(".fmtu").attr("src", this.result );
					//如果选择了图片则span要隐藏，而img要显示；
					$(".fmzi").css("display","none");
					$(".fmtu").css("display","block");
				}
			}else{
				$(".fmzi").css("display","block");
				$(".fmtu").css("display","none");
			}
		});
		
		
		if($(".sptu").attr("src")){
			$(".spzi").css("display","none");
			$(".sptu").css("display","block");
		}
		if($(".fmtu").attr("src")){
			$(".fmzi").css("display","none");
			$(".fmtu").css("display","block");
		}
	}
	
}

//轮播图状态
function stus(videoId,videoLunbo) {
	
	if(confirm("您确定要修改广推状态吗？")) {
		if(videoLunbo == 1){
			videoLunbo=0;
		}else{
			videoLunbo=1;
		}
		location.href = ctx + "/video_lunbo?videoId=" + videoId + "&videoLunbo=" +videoLunbo;
	}
}


//修改上下架
function stes(videoId,videoState){
	if(confirm("您确定要修改上下架状态？")){
		if(videoState==1){
			videoState=0;
		}else{
			
			videoState=1;
		}
		location.href = ctx + "/updown?videoId=" + videoId + "&videoState=" +videoState;
	}
	
}





//单个删除
function del(videoid) {
	if(confirm("您确定要删除此用户信息吗？")) {
		
		location.href = ctx + "/video_del?videoId=" +videoid;
	}
}

//多选删除
function delBySelect() {
	//被选中的checkbox
	let vlist = document.querySelectorAll(".vlist input:checked");
	if(vlist && vlist.length > 0) {
		if(confirm("您确定要删除这" + vlist.length + "个用户吗？")) {
			let params = "";
			for(var i = 0; i < vlist.length; i++) {
				params += "&videoId=" + vlist[i].value;
			}
			location.href = ctx + "/video_del?" + params.substring(1);
		}
	}else {
		alert("请选择要删除的用户")
	}
}

//检查
function check() {
	var name = document.querySelector(".name").value;
	alert(name);
	var teacher = document.querySelector(".teacher").value;
	var is = true;
	if(!name){
		alert("视频名称不能为空");
		is = false;
	}else if(!teacher){
		alert("教师不能为空");
		is = false;
	}
	return is;
}

