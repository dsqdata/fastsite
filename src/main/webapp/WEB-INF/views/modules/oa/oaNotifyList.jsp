<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>通知管理</title>
	<meta name="decorator" content="defaultBs"/>
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
		function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
        	return false;
        }
	</script>
	<style>
		.radio-list label{
			margin-right: 10px;
			margin-left: 10px;
		}
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
				<h4 class="page-title">通知管理</h4></div>
			<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
				<ol class="breadcrumb">
					<li>通知通告</li>
					<li class="active">通知管理</li>
				</ol>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<div class="panel panel-info">
					<div class="panel-wrapper collapse in" aria-expanded="true">
						<div class="panel-body">
							<form:form id="searchForm" modelAttribute="oaNotify" action="${ctx}/oa/oaNotify/${oaNotify.self?'self':''}" method="post" class="form-horizontal">
								<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
								<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>

								<div class="row">
									<div class="col-md-4">
										<div class="form-group">
											<label class="control-label col-md-3">标题:</label>
											<div class="col-md-9">
												<form:input path="title" htmlEscape="false" maxlength="200" class="form-control"/>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group">
											<label class="control-label col-md-3">类型:</label>
											<div class="col-md-9">
												<form:select path="type" class="form-control selectpicker" data-style="form-control">
													<form:option value="" label="全部"/>
													<form:options items="${fns:getDictList('oa_notify_type')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
												</form:select>
											</div>
										</div>
									</div>
									<c:if test="${!requestScope.oaNotify.self}">
									<div class="col-md-4">
										<div class="form-group">
											<label class="control-label col-md-3">状态:</label>
											<div class="col-md-9 radio-list" style="padding-top: 7px;">
												<form:radiobuttons path="status" items="${fns:getDictList('oa_notify_status')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
											</div>
										</div>
									</div>
									</c:if>

									<div class="col-md-4">
										<div class="form-actions" style="float: right">
											<button class="btn btn-primary" type="submit"><i class="fa fa-search"></i> <span>查询</span></button>
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
								<c:if test="${!oaNotify.self}">
								<shiro:hasPermission name="oa:oaNotify:edit">
									<a href="${ctx}/oa/oaNotify/form" class="btn btn-info"><i class="fa fa-plus"></i> 新增</a>
								</shiro:hasPermission>
								</c:if>
							</div>
							<sys:message content="${message}"/>
							<div class="row">
								<div class="col-sm-12" id="jqGrid-parent">
									<table id="contentTable" class="table table-striped table-bordered table-condensed">
										<thead>
										<tr>
											<th>标题</th>
											<th>类型</th>
											<th>状态</th>
											<th>查阅状态</th>
											<th>更新时间</th>
											<c:if test="${!oaNotify.self}"><shiro:hasPermission name="oa:oaNotify:edit"><th>操作</th></shiro:hasPermission></c:if>
										</tr>
										</thead>
										<tbody>
										<c:forEach items="${page.list}" var="oaNotify">
											<tr>
												<td><a href="${ctx}/oa/oaNotify/${requestScope.oaNotify.self?'view':'form'}?id=${oaNotify.id}">
														${fns:abbr(oaNotify.title,50)}
												</a></td>
												<td>
														${fns:getDictLabel(oaNotify.type, 'oa_notify_type', '')}
												</td>
												<td>
														${fns:getDictLabel(oaNotify.status, 'oa_notify_status', '')}
												</td>
												<td>
													<c:if test="${requestScope.oaNotify.self}">
														${fns:getDictLabel(oaNotify.readFlag, 'oa_notify_read', '')}
													</c:if>
													<c:if test="${!requestScope.oaNotify.self}">
														${oaNotify.readNum} / ${oaNotify.readNum + oaNotify.unReadNum}
													</c:if>
												</td>
												<td>
													<fmt:formatDate value="${oaNotify.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
												</td>
												<c:if test="${!requestScope.oaNotify.self}"><shiro:hasPermission name="oa:oaNotify:edit"><td>
													<a href="${ctx}/oa/oaNotify/form?id=${oaNotify.id}">修改</a>
													<a href="${ctx}/oa/oaNotify/delete?id=${oaNotify.id}" onclick="return confirmx('确认要删除该通知吗？', this.href)">删除</a>
												</td></shiro:hasPermission></c:if>
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
	</div>
</div>
</body>
</html>