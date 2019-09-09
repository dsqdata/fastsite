<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>业务表管理</title>
	<meta name="decorator" content="defaultBs"/>
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
		function page(n,s){
			if(n) $("#pageNo").val(n);
			if(s) $("#pageSize").val(s);
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
					<h4 class="page-title">业务表配置</h4></div>
				<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
					<ol class="breadcrumb">
						<li>代码生成</li>
						<li class="active">业务表配置</li>
					</ol>
				</div>
			</div>
			<div class="panel panel-info">
				<div class="panel-wrapper collapse in" aria-expanded="true">
					<div class="panel-body">
						<form:form id="searchForm" modelAttribute="genTable" action="${ctx}/gen/genTable/" method="post" class="form-horizontal">
							<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
							<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
							<sys:tableSort id="orderBy" name="orderBy" value="${page.orderBy}" callback="page();"/>
							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<label class="control-label col-md-3">表名:</label>
										<div class="col-md-9">
											<form:input path="nameLike" htmlEscape="false" maxlength="50" class="form-control"/>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label class="control-label col-md-3">说明:</label>
										<div class="col-md-9">
											<form:input path="comments" htmlEscape="false" maxlength="50" class="form-control"/>
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<label class="control-label col-md-3">父表表名:</label>
										<div class="col-md-9">
											<form:input path="parentTable" htmlEscape="false" maxlength="50" class="form-control"/>
										</div>
									</div>
								</div>
								<div class="col-md-4"></div>
								<div class="col-md-4"></div>
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
							<shiro:hasPermission name="gen:genTable:edit">
								<a href="${ctx}/gen/genTable/form" class="btn btn-info"><i class="fa fa-plus"></i> 添加业务表</a>
							</shiro:hasPermission>
						</div>
						<sys:message content="${message}"/>
						<div class="row">
							<div class="col-sm-12">
								<table id="contentTable" class="table table-striped table-bordered table-condensed">
									<thead><tr><th class="sort-column name">表名</th><th>说明</th><th class="sort-column class_name">类名</th><th class="sort-column parent_table">父表</th><shiro:hasPermission name="gen:genTable:edit"><th>操作</th></shiro:hasPermission></tr></thead>
									<tbody>
									<c:forEach items="${page.list}" var="genTable">
										<tr>
											<td><a href="${ctx}/gen/genTable/form?id=${genTable.id}">${genTable.name}</a></td>
											<td>${genTable.comments}</td>
											<td>${genTable.className}</td>
											<td title="点击查询子表"><a href="javascript:" onclick="$('#parentTable').val('${genTable.parentTable}');$('#searchForm').submit();">${genTable.parentTable}</a></td>
											<shiro:hasPermission name="gen:genTable:edit"><td>
												<a href="${ctx}/gen/genTable/form?id=${genTable.id}">修改</a>
												<a href="${ctx}/gen/genTable/delete?id=${genTable.id}" onclick="return confirmx('确认要删除该业务表吗？', this.href)">删除</a>
											</td></shiro:hasPermission>
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
