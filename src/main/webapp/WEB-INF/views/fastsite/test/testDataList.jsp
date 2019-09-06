<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>单表管理</title>
    <meta name="decorator" content="defaultBs"/>
    <script type="text/javascript">
            <shiro:hasPermission name="test:testData:view">var test_testData_view = true</shiro:hasPermission>;
            <shiro:hasPermission name="test:testData:add">var test_testData_add = true</shiro:hasPermission>;
            <shiro:hasPermission name="test:testData:edit">var test_testData_edit = true</shiro:hasPermission>;


        $(document).ready(function () {

            $("#search_btn").click(function () {
                $("#jqGrid").jqGrid('setGridParam', {
                    postData: $('#searchForm').serializeJSON(),
                    page: 1
                }).trigger("reloadGrid");
            });

            $("#jqGrid").jqGrid({
                url: '${ctx}/test/testData/getListData',
                mtype: "POST",
                shrinkToFit: true, //如果设为true，则Grid的宽度会根据父容器的宽度自动重算。**
                styleUI: 'Bootstrap',
                datatype: "json",
                width: $("#jqGrid-parent").width(),
                colModel: [
                    {label: '归属用户', name: 'user.name', key: true, width: 75},
                    {label: '归属部门', name: 'office.name', width: 150},
                    {label: '归属区域', name: 'area.name', width: 150},
                    {label: '名称', name: 'name', width: 150},
                    {label: '性别', name: 'sex', width: 150},
                    {label: '更新时间', name: 'updateDate', width: 150},
                    {label: '备注信息', name: 'remarks', width: 150},
                    {
                        label: '操作', name: 'ShipName', width: 150,
                        formatter: function (value, grid, rows, state) {
                            return '<a href="#" style="color:#f60" onclick="Modify(' + rows.OrderID + ')">Edit</a>'
                        }
                    }
                ],
                viewrecords: true,
                height: 'auto',
                rowNum: 10,
                pager: "#jqGridPager",
                jsonReader: {
                    root: "list",
                    records: "count"
                },
                prmNames: {
                    page:"cuPage"
                }
            });

            $(window).bind('resize', function () {
                $("#jqGrid").setGridWidth($("#jqGrid-parent").width());
            })
        });
    </script>
    <style>
        .btn-danger, .btn-default, .btn-info, .btn-primary, .btn-success, .btn-warning {
            text-shadow: 0 0 0 rgba(0, 0, 0, .2);
        }

        .btn-info {
            color: #fff !important;
        }
    </style>
</head>
<body>

<div id="page-wrapper" style="margin: 0;">
    <div class="container-fluid">
        <div class="row bg-title">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h4 class="page-title">修改密码</h4></div>
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <ol class="breadcrumb">
                    <li>个人信息</li>
                    <li class="active">修改密码</li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-info">
                    <div class="panel-wrapper collapse in" aria-expanded="true">
                        <div class="panel-body">
                            <form:form id="searchForm" modelAttribute="testData" action="${ctx}/test/testData/listData"
                                       method="post">
                                <div class="form-body">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="control-label">First Name</label>
                                                <input type="text" id="firstName" name="name" class="form-control"
                                                       placeholder="John doe">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="control-label">Last Name</label>
                                                <input type="text" id="lastName" class="form-control" placeholder="12n">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="control-label">Last Name</label>
                                                <input type="text" id="lastName" class="form-control" placeholder="12n">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-actions" style="float: right">
                                    <button type="button" id="search_btn" class="btn btn-info"><i
                                            class="fa fa-search"></i> 查询
                                    </button>
                                </div>
                            </form:form>
                        </div>
                    </div>
                </div>

                <div class="panel panel-info">

                    <div class="panel-wrapper collapse in" aria-expanded="true">
                        <div class="panel-body">
                            <div style="float: left;margin-bottom: 20px;">
                                <a href="${ctx}/test/testData/form" class="btn btn-info"><i class="fa fa-plus"></i>
                                    新增</a>
                                <button type="button" class="btn btn-primary"><i class="fa fa-plus"></i> 导出</button>
                                <button type="button" class="btn btn-warning"><i class="fa fa-plus"></i> 导入</button>
                            </div>
                            <sys:message content="${message}"/>
                            <div class="row">
                                <div class="col-sm-12" id="jqGrid-parent">
                                    <table id="jqGrid"></table>
                                    <div id="jqGridPager"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>