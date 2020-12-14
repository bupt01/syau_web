<html>
<#include "../common/header.ftl">

<body>
<div id="wrapper" class="toggled">

<#--边栏sidebar-->
<#include "../common/nav.ftl">



<#--主要内容content-->
    <div id="page-content-wrapper">
        <div class="container-fluid">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <form role="form" action="/admin/addpublish.action">
                        <div class="form-group">
                            <label>请输入要发布的公告</label>
                            <#--<input name="productName" type="" class="form-control"-->
                                   <#--value=""/>-->

                            <textarea name="publishContent" rows="3" cols="30"></textarea>

                    <#--此字段为隐藏字段，当提交的时候会把productId一起提交上去-->
                        <input hidden type="text" name="productId" value="${(productInfo.productId)!''}">
                        <button type="submit" class="btn btn-default">提交</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

</div>

<script>

    var websocket = null;
    if ('websocket' in window) {
        // websocket = new websocket('ws://localhost:8888/syau_web_1/webSocket');
        // websocket = new websocket();
        websocket = new WebSocket('ws://www.yiyufei.top:9001/webSocket');


    } else {
        alert("该浏览器不支持websocket");
    }

    websocket.onopen = function (event) {
        console.log('建立连接');
    }

    websocket.onclose = function (event) {
        console.log('关闭连接');
    }

    websocket.onmessage = function (event) {
        console.log('收到消息：' + event.data);
        //这里写触发的事件，比如播放音乐等等

        alert("收到学生的反馈，内容是："+event.data)
    }

    websocket.onerror = function (event) {
        console.log('连接发生错误');
    }
    websocket.onbeforeactivate = function (event) {
        console.log('释放资源');
    }
</script>

</body>
</html>