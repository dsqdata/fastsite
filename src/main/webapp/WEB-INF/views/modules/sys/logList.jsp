<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>日志管理</title>
    <meta name="decorator" content="defaultBs"/>
    <script type="text/javascript">
        function page(n, s) {
            $("#pageNo").val(n);
            $("#pageSize").val(s);
            $("#searchForm").submit();
            return false;
        }
    </script>
</head>
<body>
<div id="page-wrapper" style="margin: 0;">
    <div class="container-fluid">
        <div class="row bg-title">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h4 class="page-title">日志查询</h4></div>
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <ol class="breadcrumb">
                    <li>系统设置</li>
                    <li class="active">日志查询</li>
                </ol>
            </div>
        </div>
        <div class="panel panel-info">
            <div class="panel-wrapper collapse in" aria-expanded="true">
                <div class="panel-body">
                    <form:form id="searchForm" action="${ctx}/sys/log/" method="post" class="form-horizontal">
                        <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
                        <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-3">操作菜单:</label>
                                    <div class="col-md-9">
                                        <input id="title" name="title" type="text" maxlength="50"
                                               class="input-mini form-control"
                                               value="${log.title}"/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-3">用户ID:</label>
                                    <div class="col-md-9">
                                        <input id="createBy.id" name="createBy.id" type="text" maxlength="50"
                                               class="input-mini form-control" value="${log.createBy.id}"/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label col-md-3">URI:</label>
                                    <div class="col-md-9">
                                        <input id="requestUri" name="requestUri" type="text" maxlength="50"
                                               class="input-mini form-control" value="${log.requestUri}"/>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-md-2">日期范围:</label>
                                    <div class="col-md-10">
                                        <input id="beginDate" name="beginDate" type="text"
                                               readonly="readonly" maxlength="20" class="input-mini Wdate"
                                               value="<fmt:formatDate value="${log.beginDate}" pattern="yyyy-MM-dd"/>"
                                               onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:false});"/>
                                        <label>&nbsp;--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                        <input id="endDate" name="endDate"
                                               type="text" readonly="readonly"
                                               maxlength="20"
                                               class="input-mini Wdate"
                                               value="<fmt:formatDate value="${log.endDate}" pattern="yyyy-MM-dd"/>"
                                               onclick="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:false});"/>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label for="exception" style="padding-top: 10px;"><input id="exception" name="exception"
                                                                  type="checkbox"${log.exception eq '1'?' checked':''}
                                                                  value="1"/>只查询异常信息</label>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-actions" style="float: right">
                                    <button class="btn btn-primary" type="submit"><i class="fa fa-search"></i>
                                        <span>查询</span></button>
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
                    <sys:message content="${message}"/>
                    <div class="row">
                        <table id="contentTable" class="table table-striped table-bordered table-condensed">
                            <thead>
                            <tr>
                                <th>操作菜单</th>
                                <th>操作用户</th>
                                <th>所在公司</th>
                                <th>所在部门</th>
                                <th>URI</th>
                                <th>提交方式</th>
                                <th>操作者IP</th>
                                <th>操作时间</th>
                            </thead>
                            <tbody><%
                                request.setAttribute("strEnter", "\n");
                                request.setAttribute("strTab", "\t");
                            %>
                            <c:forEach items="${page.list}" var="log">
                                <tr>
                                    <td>${log.title}</td>
                                    <td>${log.createBy.name}</td>
                                    <td>${log.createBy.company.name}</td>
                                    <td>${log.createBy.office.name}</td>
                                    <td><strong>${log.requestUri}</strong></td>
                                    <td>${log.method}</td>
                                    <td>${log.remoteAddr}</td>
                                    <td><fmt:formatDate value="${log.createDate}" type="both"/></td>
                                </tr>
                                <c:if test="${not empty log.exception}">
                                    <tr>
                                        <td colspan="8" style="word-wrap:break-word;word-break:break-all;">
                                                <%-- 					用户代理: ${log.userAgent}<br/> --%>
                                                <%-- 					提交参数: ${fns:escapeHtml(log.params)} <br/> --%>
                                            异常信息: <br/>
                                                ${fn:replace(fn:replace(fns:escapeHtml(log.exception), strEnter, '<br/>'), strTab, '&nbsp; &nbsp; ')}
                                        </td>
                                    </tr>
                                </c:if>
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
</body>
</html>