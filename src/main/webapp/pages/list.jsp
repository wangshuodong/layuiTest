<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../shared/global.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 2 | Blank Page</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="${staticPath }/layui/css/layui.css">
    <%@ include file="../shared/importCss.jsp" %>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<!-- Site wrapper -->
<!-- Content Wrapper. Contains page content -->
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        系统首页
        <small>统计信息</small>
    </h1>
</section>

<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">操作</h3>

            <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
                        title="Collapse">
                    <i class="fa fa-minus"></i></button>
                <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip"
                        title="Remove">
                    <i class="fa fa-times"></i></button>
            </div>
        </div>
        <div class="box-body">
            <form class="layui-form" action="">
                <div class="layui-inline">
                    <div class="layui-input-inline">
                        <input type="text" value="" placeholder="请输入关键字" class="layui-input search_input">
                    </div>
                    <div class="layui-input-inline">
                        <input type="text" value="" placeholder="请输入关键字" class="layui-input search_input">
                    </div>
                    <div class="layui-input-inline">
                        <input type="text" name="number" lay-verify="required|number" autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-input-inline">
                        <select name="city" lay-verify="required">
                            <option value=""></option>
                            <option value="0">北京</option>
                            <option value="1">上海</option>
                            <option value="2">广州</option>
                            <option value="3">深圳</option>
                            <option value="4">杭州</option>
                        </select>
                    </div>
                    <div class="layui-input-inline">
                        <select name="interest" lay-filter="aihao" lay-search lay-write>
                            <option value=""></option>
                            <option value="0">写作</option>
                            <option value="1">阅读</option>
                            <option value="2">游戏</option>
                            <option value="3">音乐</option>
                            <option value="4">旅行</option>
                            <option value="5">读书</option>
                        </select>
                    </div>
                    <a class="layui-btn layui-btn-normal search_btn">查询</a>
                </div>
                <div class="layui-inline">
                    <a class="layui-btn layui-btn-normal newsAdd_btn">添加文章</a>
                </div>
                <div class="layui-inline">
                    <a class="layui-btn recommend" style="background-color:#5FB878">推荐文章</a>
                </div>
                <div class="layui-inline">
                    <a class="layui-btn audit_btn">审核文章</a>
                </div>
                <div class="layui-inline">
                    <a class="layui-btn layui-btn-danger batchDel">批量删除</a>
                </div>
                <%--<div class="layui-btn-group">
                    <button class="layui-btn">增加</button>
                    <button class="layui-btn">编辑</button>
                    <button class="layui-btn">删除</button>
                    <button class="layui-btn">增加</button>
                    <button class="layui-btn">编辑</button>
                    <button class="layui-btn">删除</button>
                    <button class="layui-btn">增加</button>
                    <button class="layui-btn">编辑</button>
                    <button class="layui-btn">删除</button>
                </div>--%>
            </form>
        </div>
        <!-- /.box-footer-->
    </div>
    <!-- /.box -->

    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">用户列表</h3>
        </div>
        <!-- /.box-header -->
        <div class="box-body table-responsive no-padding">
            <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
                <ul class="layui-tab-title">
                    <li class="layui-this">所有</li>
                    <li>已同步</li>
                    <li>未同步</li>
                    <li>已收款</li>
                    <li>未收款</li>
                </ul>
                <div class="layui-tab-content">
                    <table class="table table-bordered table-hover">
                        <tr>
                            <th style="width: 10px">#</th>
                            <th>Task</th>
                            <th>Progress</th>
                            <th style="width: 40px">Label</th>
                        </tr>
                        <tr>
                            <td>1.</td>
                            <td>Update software</td>
                            <td>
                                <div class="progress progress-xs">
                                    <div class="progress-bar progress-bar-danger" style="width: 55%"></div>
                                </div>
                            </td>
                            <td><span class="badge bg-red">55%</span></td>
                        </tr>
                        <tr>
                            <td>2.</td>
                            <td>Clean database</td>
                            <td>
                                <div class="progress progress-xs">
                                    <div class="progress-bar progress-bar-yellow" style="width: 70%"></div>
                                </div>
                            </td>
                            <td><span class="badge bg-yellow">70%</span></td>
                        </tr>
                        <tr>
                            <td>3.</td>
                            <td>Cron job running</td>
                            <td>
                                <div class="progress progress-xs progress-striped active">
                                    <div class="progress-bar progress-bar-primary" style="width: 30%"></div>
                                </div>
                            </td>
                            <td><span class="badge bg-light-blue">30%</span></td>
                        </tr>
                        <tr>
                            <td>4.</td>
                            <td>Fix and squish bugs</td>
                            <td>
                                <div class="progress progress-xs progress-striped active">
                                    <div class="progress-bar progress-bar-success" style="width: 90%"></div>
                                </div>
                            </td>
                            <td><span class="badge bg-green">90%</span></td>
                        </tr>
                    </table>
                </div>
            </div>

        </div>
        <!-- /.box-body -->
        <div class="box-footer clearfix">
            <ul class="pagination pagination-sm no-margin pull-right">
                <li><a href="#">&laquo;</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">&raquo;</a></li>
            </ul>
        </div>
    </div>

</section>


<script src="${staticPath}/layui/layui.js"></script>
<script>
    layui.config({
        dir: '${staticPath }/layui/' //layui.js 所在路径（注意，如果是script单独引入layui.js，无需设定该参数。），一般情况下可以无视
        ,version: false //一般用于更新模块缓存，默认不开启。设为true即让浏览器不缓存。也可以设为一个固定的值，如：201610
        ,debug: false //用于开启调试模式，默认false，如果设为true，则JS模块的节点会保留在页面
        ,base: '${staticPath }/commons/js/' //设定扩展的Layui模块的所在目录，一般用于外部模块扩展
    });
    layui.use(['form', 'element', 'laydate'], function() {
        var form = layui.form,
            element = layui.element;
    })
</script>
</body>
</html>
