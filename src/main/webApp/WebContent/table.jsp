<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<html>
<head>
	<meta charset="utf-8">
	<title></title>
	<script type="text/javascript" src="${pageContext.request.contextPath}/WebContent/js/echarts.min.js"></script>
</head>
<body>
	<div id="table" style="width:500px; height:200px; border:1px solid black;"></div>
	<script type="text/javascript">
		var mychat = echarts.init(document.getElementById('table'));
		var option = {
      tooltip: {
        trigger: 'item',
        formatter: '{a} <br/>{b} : {c}'
    	},
      legend: {
        bottom: 'bottom',
        data: ['销量1', '温度2']
    	},
    	grid: {
    		show:'true'
    	},
      xAxis: {
        type: 'category',
        name: 'x',
        splitLine: {show: false},
        data: ['一', '二', '三', '四', '五', '六', '七', '八', '九']
    	},
      yAxis: {
        name: 'y'
    	},
      series: [
      {
        name: '销量1',
        type: 'line',
        data: [5, 20, 36, 10, 10, 20,15,48]
      },
      {
        name: '销量2',
        type: 'line',
        areaStyle: {normal: {}},
        data: [1, 2, 36, 40, 5, 6,7,8]
      },

      ],
      color:['#c23531','#FFB20F']
		}
		mychat.setOption(option);
	</script>
</body>
</html>
