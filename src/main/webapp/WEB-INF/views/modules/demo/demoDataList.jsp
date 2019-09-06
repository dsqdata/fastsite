<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>实例管理</title>
    <meta name="decorator" content="defaultBs"/>
    <script type="text/javascript">
        $(document).ready(function () {

        });

        function page(n, s) {
            $("#pageNo").val(n);
            $("#pageSize").val(s);
            $("#searchForm").submit();
            return false;
        }
    </script>
    <style>
        .form-group {
            margin-bottom: 0px !important;
        }
    </style>
</head>
<body>

<div id="page-wrapper" style="margin: 0;">
    <div class="container-fluid">
        <div class="row bg-title">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h4 class="page-title">实例</h4></div>
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <ol class="breadcrumb">
                    <li>实例</li>
                    <li class="active">实例</li>
                </ol>
            </div>
        </div>
        <div class="panel panel-info">
            <div class="panel-wrapper collapse in" aria-expanded="true">
                <div class="panel-body">
                    <form:form id="searchForm" modelAttribute="demoData" action="${ctx}/demo/demoData/" method="post"
                               class="form-horizontal">
                        <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
                        <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
                        <sys:tableSort id="orderBy" name="orderBy" value="${page.orderBy}" callback="page();"/>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-3">名称:</label>
                                    <div class="col-md-9">
                                        <form:input path="name" htmlEscape="false" maxlength="100"
                                                    class="input-medium form-control"/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-3">下拉选项:</label>
                                    <div class="col-md-9">
                                        <form:select path="remarks" cssClass="form-control selectpicker" data-style="form-control">
                                            <form:option value="" label="请选择"/>
                                            <form:options items="${fns:getDictList('sys_user_type')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
                                        </form:select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-actions" style="float: right">
                                    <button id="btnSubmit" class="btn btn-primary" type="submit"><i
                                            class="fa fa-search"></i> <span>查询</span></button>
                                </div>
                            </div>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
        <div class="panel panel-info">
            <div class="panel-wrapper collapse in" aria-expanded="true">
                <div class="panel-body">
                    <div style="float: left;margin-bottom: 20px;">
                        <shiro:hasPermission name="sys:dict:edit">
                            <a href="${ctx}/demo/demoData/formOne" class="btn btn-info"><i class="fa fa-plus"></i>
                                新增(一行)</a>
                            <a href="${ctx}/demo/demoData/form" class="btn btn-info"><i class="fa fa-plus"></i>
                                新增(两行)</a>
                            <a href="${ctx}/demo/demoData/form" class="btn btn-info"><i class="fa fa-plus"></i>
                                文件上传 </a>
                        </shiro:hasPermission>
                    </div>
                    <sys:message content="${message}"/>
                    <div class="row">
                        <div class="col-sm-12" id="jqGrid-parent">
                            <table id="contentTable" class="table table-striped table-bordered table-condensed">
                                <thead>
                                <tr>
                                    <th class="sort-column name">名称</th>
                                    <th>更新时间</th>
                                    <th>备注信息</th>
                                    <shiro:hasPermission name="demo:demoData:edit">
                                        <th>操作</th>
                                    </shiro:hasPermission>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${page.list}" var="demoData">
                                    <tr>
                                        <td><a href="${ctx}/demo/demoData/form?id=${demoData.id}">
                                                ${demoData.name}
                                        </a></td>
                                        <td>
                                            <fmt:formatDate value="${demoData.updateDate}"
                                                            pattern="yyyy-MM-dd HH:mm:ss"/>
                                        </td>
                                        <td>
                                                ${demoData.remarks}
                                        </td>
                                        <shiro:hasPermission name="demo:demoData:edit">
                                            <td>
                                                <a href="${ctx}/demo/demoData/form?id=${demoData.id}">修改</a>
                                                <a href="${ctx}/demo/demoData/delete?id=${demoData.id}"
                                                   onclick="return confirmx('确认要删除该实例吗？', this.href)">删除</a>
                                            </td>
                                        </shiro:hasPermission>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <div class="pagination">${page}</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>