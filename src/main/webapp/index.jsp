<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="shared/global.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>layui开发使用文档 - 入门指南</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">

    <link rel="stylesheet" href="${staticPath }/layui/css/layui.css">
    <link rel="stylesheet" href="${staticPath }/commons/css/global.css">
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header header header-demo">
        <div class="layui-main">
            <a class="logo" href="/">
                <img src="commons/img/logo.png" alt="layui">
            </a>

            <ul class="layui-nav">
                <li class="layui-nav-item ">
                    <a href="/doc/">文档<!-- <span class="layui-badge-dot"></span> --></a>
                </li>
                <li class="layui-nav-item layui-this">
                    <a href="/demo/">示例<!--  --></a>
                </li>
                <li class="layui-nav-item layui-hide-xs">
                    <a href="http://fly.layui.com/" target="_blank">社区</a>
                </li>

                <li class="layui-nav-item">
                    <!--<span class="layui-badge-dot" style="margin: -4px 3px 0;"></span>-->
                    <a href="javascript:;">admin</a>
                    <dl class="layui-nav-child">
                        <dd class="layui-hide-sm layui-show-xs"><a href="http://fly.layui.com/" target="_blank">社区交流</a><hr></dd>
                        <dd><a href="http://layim.layui.com/" target="_blank">用户信息</a></dd>
                        <dd><a href="/template/fly/" target="_blank">修改密码<span class="layui-badge-dot"></span></a></dd>
                        <hr>
                        <dd><a href="/alone.html" target="_blank">锁屏</a></dd>
                        <dd><a href="http://fly.layui.com/jie/9842/" target="_blank">注销</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>
    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <ul class="layui-nav layui-nav-tree site-demo-nav">
                <%--<li class="layui-nav-item layui-this"><a href="javascript:;" onclick="aa('test.jsp')">后台首页</a></li>--%>
                <li class="layui-nav-item">
                    <a class="javascript:;" href="javascript:;">组件示例</a>
                    <dl class="layui-nav-child">
                        <dd class="">
                            <a href="javascript:;" onclick="aa('form.jsp')">
                                info页面
                            </a>
                        </dd>
                        <dd class="">
                            <a href="javascript:;" onclick="aa('test.jsp')">
                                list页面
                            </a>
                        </dd>
                    </dl>
                </li>
                <%--<li class="layui-nav-item">
                    <a href="javascript:;">解决方案</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">列表一</a></dd>
                        <dd><a href="javascript:;">列表二</a></dd>
                        <dd><a href="">超链接</a></dd>
                    </dl>
                </li>--%>
            </ul>
        </div>
    </div>

    <div class="layui-body" id="main-content" style="border-left: 5px solid #009688;bottom:0px">

    </div>
</div>

<div class="site-tree-mobile layui-hide">
    <i class="layui-icon">&#xe602;</i>
</div>
<div class="site-mobile-shade"></div>


<%@ include file="shared/importJs.jsp" %>
<script type="text/javascript" src="${staticPath }/commons/js/jquery.min.js"></script>
<script type="text/javascript">
    //手机设备的简单适配
    var treeMobile = $('.site-tree-mobile')
        ,shadeMobile = $('.site-mobile-shade')

    treeMobile.on('click', function(){
        $('body').addClass('site-mobile');
    });

    shadeMobile.on('click', function(){
        $('body').removeClass('site-mobile');
    });
//    $(function(){
//        $.get('test.jsp', function(data) {
//            $('#main-content').html(data);
//        });
//    });
    function aa(url) {
        if (url != null && url != 'javascript:;') {
            $.get(url, function(data) {

                $('#main-content').html(data);
            });
            $('body').removeClass('site-mobile');
        }
    }
</script>

</body>
</html>