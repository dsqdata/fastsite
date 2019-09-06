]<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>角色管理</title>
	<meta name="decorator" content="defaultBs"/>
</head>
<body>
	<div id="page-wrapper" style="margin: 0;">
		<div class="container-fluid">
			<div class="row bg-title">
				<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
					<h4 class="page-title">角色管理</h4></div>
				<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
					<ol class="breadcrumb">
						<li>系统设置</li>
						<li class="active">角色管理</li>
					</ol>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="panel panel-info">
						<div class="panel-wrapper collapse in" aria-expanded="true">
							<div class="panel-body">
								<div style="float: left;margin-bottom: 20px;">
									<shiro:hasPermission name="sys:role:edit">
										<a href="${ctx}/sys/role/form" class="btn btn-info"><i class="fa fa-plus"></i> 新增</a>
									</shiro:hasPermission>
								</div>
								<sys:message content="${message}"/>
								<div class="row">
									<div class="col-sm-12" id="jqGrid-parent">
										<table id="contentTable" class="table table-striped table-bordered table-condensed">
											<tr><th>角色名称</th><th>英文名称</th><th>归属机构</th><th>数据范围</th><shiro:hasPermission name="sys:role:edit"><th>操作</th></shiro:hasPermission></tr>
											<c:forEach items="${list}" var="role">
												<tr>
													<td><a href="form?id=${role.id}">${role.name}</a></td>
													<td><a href="form?id=${role.id}">${role.enname}</a></td>
													<td>${role.office.name}</td>
													<td>${fns:getDictLabel(role.dataScope, 'sys_data_scope', '无')}</td>
													<shiro:hasPermission name="sys:role:edit"><td>
														<a href="${ctx}/sys/role/assign?id=${role.id}">分配</a>
														<c:if test="${(role.sysData eq fns:getDictValue('是', 'yes_no', '1') && fns:getUser().admin)||!(role.sysData eq fns:getDictValue('是', 'yes_no', '1'))}">
															<a href="${ctx}/sys/role/form?id=${role.id}">修改</a>
														</c:if>
														<a href="${ctx}/sys/role/delete?id=${role.id}" onclick="return confirmx('确认要删除该角色吗？', this.href)">删除</a>
													</td></shiro:hasPermission>
												</tr>
											</c:forEach>
										</table>
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