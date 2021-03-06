<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>菜单管理</title>
	<meta name="decorator" content="defaultBs"/>
	<%@include file="/WEB-INF/views/include/treetable.jsp" %>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#treeTable").treeTable({expandLevel : 3}).show();
		});
    	function updateSort() {
			loading('正在提交，请稍等...');
	    	$("#listForm").attr("action", "${ctx}/sys/menu/updateSort");
	    	$("#listForm").submit();
    	}
	</script>
</head>
<body>

<div id="page-wrapper" style="margin: 0;">
	<div class="container-fluid">
		<div class="row bg-title">
			<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
				<h4 class="page-title">菜单管理</h4></div>
			<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
				<ol class="breadcrumb">
					<li>系统设置</li>
					<li class="active">菜单管理</li>
				</ol>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<div class="panel panel-info">
					<div class="panel-wrapper collapse in" aria-expanded="true">
						<div class="panel-body">
							<div style="float: left;margin-bottom: 20px;">
								<a href="${ctx}/sys/menu/form" class="btn btn-info"><i class="fa fa-plus"></i> 新增</a>
								<shiro:hasPermission name="sys:menu:edit">
									<input id="btnSubmit" class="btn btn-primary" type="button" value="保存排序" onclick="updateSort();"/>
								</shiro:hasPermission>
							</div>
							<sys:message content="${message}"/>
							<div class="row">
								<div class="col-sm-12" id="jqGrid-parent">
									<form id="listForm" method="post">
										<table id="treeTable" class="table table-striped table-bordered table-condensed">
											<thead><tr><th>名称</th><th>链接</th><th style="text-align:center;">排序</th><th>可见</th><th>权限标识</th><shiro:hasPermission name="sys:menu:edit"><th>操作</th></shiro:hasPermission></tr></thead>
											<tbody><c:forEach items="${list}" var="menu">
												<tr id="${menu.id}" pId="${menu.parent.id ne '1'?menu.parent.id:'0'}">
													<td nowrap><i class="fa ${not empty menu.icon?menu.icon:' hide'}"></i> <a href="${ctx}/sys/menu/form?id=${menu.id}">${menu.name}</a></td>
													<td title="${menu.href}">${fns:abbr(menu.href,30)}</td>
													<td style="text-align:center;">
														<shiro:hasPermission name="sys:menu:edit">
															<input type="hidden" name="ids" value="${menu.id}"/>
															<input name="sorts" type="text" value="${menu.sort}" style="width:50px;margin:0;padding:0;text-align:center;">
														</shiro:hasPermission><shiro:lacksPermission name="sys:menu:edit">
														${menu.sort}
													</shiro:lacksPermission>
													</td>
													<td>${menu.isShow eq '1'?'显示':'隐藏'}</td>
													<td title="${menu.permission}">${fns:abbr(menu.permission,30)}</td>
													<shiro:hasPermission name="sys:menu:edit"><td nowrap>
														<a href="${ctx}/sys/menu/form?parent.id=${menu.id}" class="btn btn-primary table-btn"><i class="fa fa-plus-square"></i> 添加下级菜单</a>
														<a href="${ctx}/sys/menu/form?id=${menu.id}" class="btn btn-info table-btn"><i class="fa fa-edit"></i> 修改</a>
														<a href="${ctx}/sys/menu/delete?id=${menu.id}" onclick="return confirmx('要删除该菜单及所有子菜单项吗？', this.href)" class="btn btn-danger table-btn"><i class="fa fa-minus-square"></i> 删除</a>
													</td></shiro:hasPermission>
												</tr>
											</c:forEach></tbody>
										</table>

									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>



	<%--<ul class="nav nav-tabs">--%>
		<%--<li class="active"><a href="${ctx}/sys/menu/">菜单列表</a></li>--%>
		<%--<shiro:hasPermission name="sys:menu:edit"><li><a href="${ctx}/sys/menu/form">菜单添加</a></li></shiro:hasPermission>--%>
	<%--</ul>--%>
	<%--<sys:message content="${message}"/>--%>
	<%--<form id="listForm" method="post">--%>
		<%--<table id="treeTable" class="table table-striped table-bordered table-condensed hide">--%>
			<%--<thead><tr><th>名称</th><th>链接</th><th style="text-align:center;">排序</th><th>可见</th><th>权限标识</th><shiro:hasPermission name="sys:menu:edit"><th>操作</th></shiro:hasPermission></tr></thead>--%>
			<%--<tbody><c:forEach items="${list}" var="menu">--%>
				<%--<tr id="${menu.id}" pId="${menu.parent.id ne '1'?menu.parent.id:'0'}">--%>
					<%--<td nowrap><i class="icon-${not empty menu.icon?menu.icon:' hide'}"></i><a href="${ctx}/sys/menu/form?id=${menu.id}">${menu.name}</a></td>--%>
					<%--<td title="${menu.href}">${fns:abbr(menu.href,30)}</td>--%>
					<%--<td style="text-align:center;">--%>
						<%--<shiro:hasPermission name="sys:menu:edit">--%>
							<%--<input type="hidden" name="ids" value="${menu.id}"/>--%>
							<%--<input name="sorts" type="text" value="${menu.sort}" style="width:50px;margin:0;padding:0;text-align:center;">--%>
						<%--</shiro:hasPermission><shiro:lacksPermission name="sys:menu:edit">--%>
							<%--${menu.sort}--%>
						<%--</shiro:lacksPermission>--%>
					<%--</td>--%>
					<%--<td>${menu.isShow eq '1'?'显示':'隐藏'}</td>--%>
					<%--<td title="${menu.permission}">${fns:abbr(menu.permission,30)}</td>--%>
					<%--<shiro:hasPermission name="sys:menu:edit"><td nowrap>--%>
						<%--<a href="${ctx}/sys/menu/form?id=${menu.id}">修改</a>--%>
						<%--<a href="${ctx}/sys/menu/delete?id=${menu.id}" onclick="return confirmx('要删除该菜单及所有子菜单项吗？', this.href)">删除</a>--%>
						<%--<a href="${ctx}/sys/menu/form?parent.id=${menu.id}">添加下级菜单</a>--%>
					<%--</td></shiro:hasPermission>--%>
				<%--</tr>--%>
			<%--</c:forEach></tbody>--%>
		<%--</table>--%>
		<%--<shiro:hasPermission name="sys:menu:edit"><div class="form-actions pagination-left">--%>
			<%--<input id="btnSubmit" class="btn btn-primary" type="button" value="保存排序" onclick="updateSort();"/>--%>
		<%--</div></shiro:hasPermission>--%>
	 <%--</form>--%>
</body>
</html>