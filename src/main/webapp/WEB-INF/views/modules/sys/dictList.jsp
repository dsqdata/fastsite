<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>字典管理</title>
    <meta name="decorator" content="defaultBs"/>
    <script type="text/javascript">
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
                <h4 class="page-title">字典管理</h4></div>
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <ol class="breadcrumb">
                    <li>系统设置</li>
                    <li class="active">字典管理</li>
                </ol>
            </div>
        </div>
        <div class="panel panel-info">
            <div class="panel-wrapper collapse in" aria-expanded="true">
                <div class="panel-body">
                    <form:form id="searchForm" modelAttribute="dict" action="${ctx}/sys/dict/" method="post"
                               class="form-horizontal">
                        <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
                        <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-3">类型:</label>
                                    <div class="col-md-9">
                                        <form:select id="type" path="type" class="form-control">
                                            <form:option value="" items="${typeList}" htmlEscape="false"/></form:select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-3">描述:</label>
                                    <div class="col-md-9">
                                        <form:input path="description" htmlEscape="false" maxlength="50"
                                                    class="form-control"/>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="form-actions" style="float: right">
                                    <button class="btn btn-primary" type="submit" onclick="return page();"><i
                                            class="fa fa-search"></i> <span>查询</span></button>
                                </div>
                            </div>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
        <sys:message content="${message}"/>
        <div class="panel panel-info">
            <div class="panel-wrapper collapse in" aria-expanded="true">
                <div class="panel-body">
                    <div style="float: left;margin-bottom: 20px;">
                        <shiro:hasPermission name="sys:dict:edit">
                            <a href="${ctx}/sys/dict/form" class="btn btn-info"><i class="fa fa-plus"></i> 新增</a>
                        </shiro:hasPermission>
                    </div>
                    <sys:message content="${message}"/>
                    <div class="row">
                        <div class="col-sm-12" id="jqGrid-parent">
                            <table id="contentTable" class="table table-striped table-bordered table-condensed">
                                <thead>
                                <tr>
                                    <th>键值</th>
                                    <th>标签</th>
                                    <th>类型</th>
                                    <th>描述</th>
                                    <th>排序</th>
                                    <shiro:hasPermission name="sys:dict:edit">
                                        <th>操作</th>
                                    </shiro:hasPermission></tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${page.list}" var="dict">
                                    <tr>
                                        <td>${dict.value}</td>
                                        <td><a href="${ctx}/sys/dict/form?id=${dict.id}">${dict.label}</a></td>
                                        <td><a href="javascript:"
                                               onclick="$('#type').val('${dict.type}');$('#searchForm').submit();return false;">${dict.type}</a>
                                        </td>
                                        <td>${dict.description}</td>
                                        <td>${dict.sort}</td>
                                        <shiro:hasPermission name="sys:dict:edit">
                                            <td>
                                                <a href="${ctx}/sys/dict/form?id=${dict.id}">修改</a>
                                                <a href="${ctx}/sys/dict/delete?id=${dict.id}&type=${dict.type}"
                                                   onclick="return confirmx('确认要删除该字典吗？', this.href)">删除</a>
                                                <a href="<c:url value='${fns:getAdminPath()}/sys/dict/form?type=${dict.type}&sort=${dict.sort+10}'><c:param name='description' value='${dict.description}'/></c:url>">添加键值</a>
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