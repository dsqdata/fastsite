<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>机构管理</title>
	<meta name="decorator" content="defaultBs"/>
	<%@include file="/WEB-INF/views/include/treetable.jsp" %>
	<script type="text/javascript">
		$(document).ready(function() {
			var tpl = $("#treeTableTpl").html().replace(/(\/\/\<!\-\-)|(\/\/\-\->)/g,"");
			var data = ${fns:toJson(list)}, rootId = "${not empty office.id ? office.id : '0'}";
			addRow("#treeTableList", tpl, data, rootId, true);
			$("#treeTable").treeTable({expandLevel : 5});
		});
		function addRow(list, tpl, data, pid, root){
			for (var i=0; i<data.length; i++){
				var row = data[i];
				if ((${fns:jsGetVal('row.parentId')}) == pid){
					$(list).append(Mustache.render(tpl, {
						dict: {
							type: getDictLabel(${fns:toJson(fns:getDictList('sys_office_type'))}, row.type)
						}, pid: (root?0:pid), row: row
					}));
					addRow(list, tpl, data, row.id);
				}
			}
		}
	</script>
</head>
<body>

<div id="page-wrapper" style="margin: 0;">
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-12">
				<div class="panel panel-info">
					<div class="panel-wrapper collapse in" aria-expanded="true">
						<div class="panel-body">
							<div style="float: left;margin-bottom: 20px;">
								<a href="${ctx}/sys/office/form?parent.id=${office.id}" class="btn btn-info"><i class="fa fa-plus"></i>新增</a>
							</div>
							<sys:message content="${message}"/>
							<div class="row">
								<div class="col-sm-12" id="jqGrid-parent">
									<table id="treeTable" class="table table-striped table-bordered table-condensed">
										<thead><tr><th>机构名称</th><th>归属区域</th><th>机构编码</th><th>机构类型</th><th>备注</th><shiro:hasPermission name="sys:office:edit"><th>操作</th></shiro:hasPermission></tr></thead>
										<tbody id="treeTableList"></tbody>
									</table>
									<script type="text/template" id="treeTableTpl">
										<tr id="{{row.id}}" pId="{{pid}}">
											<td><a href="${ctx}/sys/office/form?id={{row.id}}">{{row.name}}</a></td>
											<td>{{row.area.name}}</td>
											<td>{{row.code}}</td>
											<td>{{dict.type}}</td>
											<td>{{row.remarks}}</td>
											<shiro:hasPermission name="sys:office:edit"><td>
												<a href="${ctx}/sys/office/form?parent.id={{row.id}}" class="btn btn-primary table-btn"><i class="fa fa-plus-square"></i> 添加下级机构</a>
												<a href="${ctx}/sys/office/form?id={{row.id}}" class="btn btn-info table-btn"><i class="fa fa-edit"></i> 修改</a>
												<a href="${ctx}/sys/office/delete?id={{row.id}}" onclick="return confirmx('要删除该机构及所有子机构项吗？', this.href)" class="btn btn-danger table-btn"><i class="fa fa-minus-square"/> 删除</a>
											</td></shiro:hasPermission>
										</tr>
									</script>
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