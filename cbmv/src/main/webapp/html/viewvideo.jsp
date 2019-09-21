<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" name=”viewport” content=”width=device-width, initial-scale=1″ />

<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/font.css" />
<script type="text/javascript" src="js/jquery-3.4.1.min.js" ></script>
<script type="text/javascript" src="js/bootstrap.min.js" ></script>
<link rel="stylesheet" type="text/css" href="${ctx }/css/viewvideo.css" />
</head>
<body>
<div class="container-fluid videohide" id="video-url">
            <video src="img/tu.jpg" class="videoid"
                  poster="img/tu.jpg" controls>
            </video>
    </div>
    
    
  <div style="background-color:lightcoral;" class="container-fluid videohide2">
    	<div   style="background-color:darksalmon; width: 100%; height:60px ; margin-top: 10px;" id="teacher-name"> 
        	<dt >视频名称:<b>${wv.videoName}</b></dt>
            <dd style=" position: absolute; right:50px ;top: 30px;">讲师名称:<span>${wv.videoTeacher}</span></dd>	
    	</div>
    	
    	<div class="dzdiv">
    		<ul class="nav" id="num">
    			<li><a href="#">播放数:${wv.playNum}</span></a></li>
    			<li><a href="#">点赞数:${wv.likeNum}</span></a></li>
    			<li><a href="#">收藏数:${wv.collectNum}</span></a></li>
    			<li><a href="#">分享数:${wv.shareName}</span></a></li>
    		</ul>
    	</div>
    	
    
    	
    	
    	<div style="background-color:darksalmon;" class="videohide3">
    		<b>视频描述</b>  
    	</div>
    	
    	<div  >
    		<span id="dis">${wv.videoDis}</span><br />
    	</div>
    </div>

</body>
</html>