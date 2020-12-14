/**
 * 
 */
$(function(){
		//下一张图片
		var index=0;
		/*添加节流阀，true说明本次单击会有响应处理*/
		var flag=true;
		$("#right").on("click",function(){
			if(flag==true){
				flag=false;
			index--;
			/*
				所谓的下一张，就是将所有的li元素围绕li元素旋转
				each()函数封装了十分强大的遍历功能，使用也很方便，它可以遍历一维数组、多维数组、DOM, JSON 等等。key为遍历元素数组的变量
			*/
			$("li").each(function(key,value){
				/*设置tansform的旋转*/
				$(this).css({
					/*每一次旋转90度*/
					/*旋转的关键——旋转的角度随li的变化而变化，不固定；延时也不一样*/
					"transform":"translate("+具体数+"px)",
					"transition-delay":(key*0.2)+"s"
				});
			});
				/*设置节流阀恢复的延时时间：在本次点击之后的多少时间内,下一次的点击才能生效*/
				setTimeout(function(){
					flag=true;
				},1000);
			}
		});
		
		//上一张图片
		var index=0;
		/*添加节流阀，true说明本次单击会有响应处理*/
		var flag=true;
		$("#left").on("click",function(){
			if(flag==true){
				flag=false;
			index++;
			/*
				所谓的下一张，就是将所有的li元素围绕li元素旋转
				key为遍历元素数组的变量
			*/
			$("li").each(function(key,value){
				/*设置tansform的旋转*/
				$(this).css({
					/*旋转的关键——旋转的角度随li的变化而变化，不固定；延时也不一样*/
					"transform":"translate("+具体数+"px)",
					"transition-delay":(key*0.2)+"s"
				});
			});
				setTimeout(function(){
					flag=true;
				},1000);
			}
		});
	});