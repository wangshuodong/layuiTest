<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="shared/global.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>layui</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${staticPath }/layui/css/layui.css"  media="all">
    <link rel="stylesheet" href="${staticPath }/commons/css/global.css"  media="all">
    <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
</head>
<body style="background: #F1F2F7;">

<div class="layui-fluid">
    <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
        <ul class="layui-tab-title">
            <li class="layui-this">网站设置</li>
            <li>用户管理</li>
            <li>权限分配</li>
            <li>商品管理</li>
            <li>订单管理</li>
        </ul>
        <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">内容1</div>
            <div class="layui-tab-item">内容2</div>
            <div class="layui-tab-item">内容3</div>
            <div class="layui-tab-item">内容4</div>
            <div class="layui-tab-item">内容5</div>
        </div>
    </div>

    <div id="test1"></div>
</div>

<%@ include file="shared/importJs.jsp" %>


<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
    layui.use(['element', 'layer', 'laypage'], function(){
//        var element = layui.element,
//            laypage = layui.laypage;

//        element.on('tab(docDemoTabBrief)', function(data){
//            layer.msg('切到到了'+ data.index + '：' + this.innerHTML);
//        });
//        laypage.render({
//            elem: 'test1' //注意，这里的 test1 是 ID，不用加 # 号
//            ,count: 50 //数据总数，从服务端得到
//            ,jump: function(obj, first){
//                //obj包含了当前分页的所有参数，比如：
//                console.log(obj.curr); //得到当前页，以便向服务端请求对应页的数据。
//                console.log(obj.limit); //得到每页显示的条数
//
//                //首次不执行
//                if(!first){
//                    //do something
//                }
//            }
//        });
    });
</script>

</body>
</html>
