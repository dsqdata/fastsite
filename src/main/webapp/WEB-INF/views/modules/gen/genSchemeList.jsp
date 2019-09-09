<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>生成方案管理</title>
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
		.form-horizontal .form-group {
			 margin-bottom: 0px;
		}
	</style>
</head>
<body>
<div id="page-wrapper" style="margin: 0;">
	<div class="container-fluid">
		<div class="row bg-title">
			<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
				<h4 class="page-title">生成方案列表</h4></div>
			<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
				<ol class="breadcrumb">
					<li>代码生成</li>
					<li class="active">生成方案</li>
				</ol>
			</div>
		</div>
		<div class="panel panel-info">
			<div class="panel-wrapper collapse in" aria-expanded="true">
				<div class="panel-body">
					<form:form id="searchForm" modelAttribute="genScheme" action="${ctx}/gen/genScheme/" method="post" class="form-horizontal">
						<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
						<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>

						<div class="row">
							<div class="col-md-4">
								<div class="form-group">
									<label class="control-label col-md-3">方案名称:</label>
									<div class="col-md-9">
										<form:input path="name" htmlEscape="false" maxlength="50"
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

		<div class="panel panel-info">
			<div class="panel-wrapper collapse in" aria-expanded="true">
				<div class="panel-body">
					<div style="float: left;margin-bottom: 20px;">
						<shiro:hasPermission name="gen:genScheme:edit">
							<a href="${ctx}/gen/genScheme/form" class="btn btn-info"><i class="fa fa-plus"></i> 添加生成方案</a>
						</shiro:hasPermission>
					</div>
					<sys:message content="${message}"/>
					<div class="row">
						<div class="col-sm-12">
							<table id="contentTable" class="table table-striped table-bordered table-condensed">
								<thead><tr><th>方案名称</th><th>生成模块</th><th>模块名</th><th>功能名</th><th>功能作者</th><shiro:hasPermission name="gen:genScheme:edit"><th>操作</th></shiro:hasPermission></tr></thead>
								<tbody>
								<c:forEach items="${page.list}" var="genScheme">
									<tr>
										<td><a href="${ctx}/gen/genScheme/form?id=${genScheme.id}">${genScheme.name}</a></td>
										<td>${genScheme.packageName}</td>
										<td>${genScheme.moduleName}${not empty genScheme.subModuleName?'.':''}${genScheme.subModuleName}</td>
										<td>${genScheme.functionName}</td>
										<td>${genScheme.functionAuthor}</td>
										<shiro:hasPermission name="gen:genScheme:edit"><td>
											<a href="${ctx}/gen/genScheme/form?id=${genScheme.id}">修改</a>
											<a href="${ctx}/gen/genScheme/delete?id=${genScheme.id}" onclick="return confirmx('确认要删除该生成方案吗？', this.href)">删除</a>
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
