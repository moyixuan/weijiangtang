$(function() {
	//下拉框改变事件
	$(".time").on("change",function(){
		document.querySelector("form").submit();
	});
	// 初始化图表标签
    var myChart = echarts.init(document.getElementById('chart'));
    var newlist1 =JSON.parse(newlist);
    var time="";
    var num = "";
    for ( var i=0;i<newlist1.length ;i++) {
		time += newlist1[i].time+",";
		num += newlist1[i].sum+",";
	}
     time = time.substring(0,time.lastIndexOf(","))
     time = time.split(",");
     num = num.substring(0,num.lastIndexOf(","))
     num = num.split(",");
     console.log(num)
     
      var shouc =JSON.parse(sc);
     var time1="";
     var num1 = "";
     for ( var i=0;i<shouc.length ;i++) {
 		time1 += shouc[i].time+",";
 		num1 += shouc[i].sum+",";
 	}
     time1 = time1.substring(0,time1.lastIndexOf(","))
     time1 = time1.split(",");
     num1 = num1.substring(0,num1.lastIndexOf(","))
     num1 = num1.split(",");
     
    var options={
            //定义一个标题
            title:{
                text:'统计'
            },
            legend:{
                data:['注册人数','收藏数量']
            },
            //X轴设置
            xAxis:{
                data:time,
                axisLabel: {
                    interval:0, //设置成 0 强制显示所有标签。
                     rotate:40 //刻度标签旋转的角度，在类目轴的类目标签显示不下的时候可以通过旋转防止标签之间重叠。
                 }
            },
            yAxis:{
            },
            //name=legend.data的时候才能显示图例
            series:[{
                name:'注册人数',
                type:'line',
                data:num
            },{
                name:'收藏数量',
                type:'line',
                data:num1
            }]

        };
    myChart.setOption(options);
})



