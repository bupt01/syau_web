<html>
<#include "../common/header.ftl">
<body>

<div id="wrapper" class="toggled">
<#--引入边栏-->
    <#include "../common/nav.ftl">
<#--主要内容content-->
    <div id="page-content-wrapper">
        <div class="container-fluid">
            <div class="row clearfix">
                <div class="col-md-12 column">
                    <table class="table table-bordered table-condensed">
                        <thead>
                        <tr>

                            <th>学生反馈的信息</th>
                            <th>发布人邮箱</th>

                            <th>创建时间</th>
                        </tr>
                        </thead>
                        <tbody>
                        <#list publishList as port>
                        <tr>
                            <td>${port.publishContent}</td>
                            <td>${port.userEmail}</td>
                            <td>${(port.createTime)?string('yyyy-MM-dd HH:mm:ss')}</td>

                        <#--<td> <#if (port.fileName)??>
                    <a href="/fileLoad?fileName=${port.fileName}">下载附件</a></td>-->
                            <#--<#else>-->
                            <#--</#if>-->


                        </tr>
                        </#list>
                        </tbody>
                    </table>
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