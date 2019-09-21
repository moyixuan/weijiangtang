class USER{
	constructor(){
		this.list;
		
	}
	//查询
	query(){
		
		this.loadList();
	}
	loadList(){
		var cust = localStorage.getItem("cust");
		cust = JSON.parse(cust);
		if (cust != null) {
			var custId = cust.custId;
		$.post(ctx +"/querycust","custId=" + custId,function(res){
		this.data = res.data;
		
		//替换属性
		 $(".card-img").attr("src",base+this.data.custImg);
		 $(".card-title").text(this.data.custName);
		 $(".card-text").text(this.data.custMobile);
		});
		}
	
		
			
	}
	
	//初始化,绑定各种事件
	init(){
			this.loadList();	
	}
}
$(function(){
	let user = new USER();
	user.init();
})