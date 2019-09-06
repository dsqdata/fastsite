<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>角色管理</title>
	<meta name="decorator" content="defaultBs"/>
	<%@include file="/WEB-INF/views/include/treeview.jsp" %>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#name").focus();
			$("#inputForm").validate({
				rules: {
					name: {remote: "${ctx}/sys/role/checkName?oldName=" + encodeURIComponent("${role.name}")},
					enname: {remote: "${ctx}/sys/role/checkEnname?oldEnname=" + encodeURIComponent("${role.enname}")}
				},
				messages: {
					name: {remote: "角色名已存在"},
					enname: {remote: "英文名已存在"}
				},
				submitHandler: function(form){
					var ids = [], nodes = tree.getCheckedNodes(true);
					for(var i=0; i<nodes.length; i++) {
						ids.push(nodes[i].id);
					}
					$("#menuIds").val(ids);
					var ids2 = [], nodes2 = tree2.getCheckedNodes(true);
					for(var i=0; i<nodes2.length; i++) {
						ids2.push(nodes2[i].id);
					}
					$("#officeIds").val(ids2);
					loading('正在提交，请稍等...');
					form.submit();
				},
                errorElement: "em",
                errorPlacement: function ( error, element ) {
                    error.addClass( "help-block" );
                    if ( element.prop( "type" ) === "checkbox" ) {
                        error.insertAfter( element.parent( "label" ) );
                    } else {
                        error.insertAfter( element );
                    }
                },
                highlight: function ( element, errorClass, validClass ) {
                    $( element ).parents( ".col-sm-5" ).addClass( "has-error" ).removeClass( "has-success" );
                },
                unhighlight: function (element, errorClass, validClass) {
                    $( element ).parents( ".col-sm-5" ).addClass( "has-success" ).removeClass( "has-error" );
                }
			});

			var setting = {check:{enable:true,nocheckInherit:true},view:{selectedMulti:false},
					data:{simpleData:{enable:true}},callback:{beforeClick:function(id, node){
						tree.checkNode(node, !node.checked, true, true);
						return false;
					}}};
			
			// 用户-菜单
			var zNodes=[
					<c:forEach items="${menuList}" var="menu">{id:"${menu.id}", pId:"${not empty menu.parent.id?menu.parent.id:0}", name:"${not empty menu.parent.id?menu.name:'权限列表'}"},
		            </c:forEach>];
			// 初始化树结构
			var tree = $.fn.zTree.init($("#menuTree"), setting, zNodes);
			// 不选择父节点
			tree.setting.check.chkboxType = { "Y" : "ps", "N" : "s" };
			// 默认选择节点
			var ids = "${role.menuIds}".split(",");
			for(var i=0; i<ids.length; i++) {
				var node = tree.getNodeByParam("id", ids[i]);
				try{tree.checkNode(node, true, false);}catch(e){}
			}
			// 默认展开全部节点
			tree.expandAll(true);
			
			// 用户-机构
			var zNodes2=[
					<c:forEach items="${officeList}" var="office">{id:"${office.id}", pId:"${not empty office.parent?office.parent.id:0}", name:"${office.name}"},
		            </c:forEach>];
			// 初始化树结构
			var tree2 = $.fn.zTree.init($("#officeTree"), setting, zNodes2);
			// 不选择父节点
			tree2.setting.check.chkboxType = { "Y" : "ps", "N" : "s" };
			// 默认选择节点
			var ids2 = "${role.officeIds}".split(",");
			for(var i=0; i<ids2.length; i++) {
				var node = tree2.getNodeByParam("id", ids2[i]);
				try{tree2.checkNode(node, true, false);}catch(e){}
			}
			// 默认展开全部节点
			tree2.expandAll(true);
			// 刷新（显示/隐藏）机构
			refreshOfficeTree();
			$("#dataScope").change(function(){
				refreshOfficeTree();
			});
		});
		function refreshOfficeTree(){
			if($("#dataScope").val()==9){
				$("#officeTree").show();
			}else{
				$("#officeTree").hide();
			}
		}
	</script>
</head>
<body>
	<div id="page-wrapper" style="margin: 0;">
		<div class="container-fluid">
			<div class="row bg-title">
				<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
					<h4 class="page-title"><a href="${ctx}/sys/role/"><i class="mdi mdi-arrow-left-bold"></i>返回</a></h4>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-12">
					<div class="panel panel-info">
						<div class="panel-wrapper collapse in" aria-expanded="true">
							<div class="panel-body">
								<form:form id="inputForm" modelAttribute="role" action="${ctx}/sys/role/save" method="post" class="form-horizontal">
									<form:hidden path="id"/>
									<sys:message content="${message}"/>
									<div class="form-group">
										<label class="col-sm-4 control-label">归属机构:</label>
										<div class="col-sm-5">
											<sys:treeselect id="office" name="office.id" value="${role.office.id}" labelName="office.name" labelValue="${role.office.name}"
															title="机构" url="/sys/office/treeData" cssClass="required"/>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-4 control-label"><span class="help-inline"><font color="red">*</font> </span>角色名称:</label>
										<div class="col-sm-5">
											<input id="oldName" name="oldName" type="hidden" value="${role.name}">
											<form:input path="name" htmlEscape="false" maxlength="50" class="required form-control"/>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-4  control-label"><span class="help-inline"><font color="red">*</font> 工作流用户组标识</span>英文名称:</label>
										<div class="col-sm-5">
											<input id="oldEnname" name="oldEnname" type="hidden" value="${role.enname}">
											<form:input path="enname" htmlEscape="false" maxlength="50" class="required form-control"/>
											<span class="help-inline">工作流用户组标识</span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-4  control-label">角色类型:</label>
										<div class="col-sm-5"><%--
				<form:input path="roleType" htmlEscape="false" maxlength="50" class="required"/>
				<span class="help-inline" title="activiti有3种预定义的组类型：security-role、assignment、user 如果使用Activiti Explorer，需要security-role才能看到manage页签，需要assignment才能claim任务">
					工作流组用户组类型（security-role：管理员、assignment：可进行任务分配、user：普通用户）</span> --%>
											<form:select path="roleType" class="input-medium form-control">
												<form:option value="assignment">任务分配</form:option>
												<form:option value="security-role">管理角色</form:option>
												<form:option value="user">普通角色</form:option>
											</form:select>
											<span class="help-inline" title="activiti有3种预定义的组类型：security-role、assignment、user 如果使用Activiti Explorer，需要security-role才能看到manage页签，需要assignment才能claim任务">
					工作流组用户组类型（任务分配：assignment、管理角色：security-role、普通角色：user）</span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-4  control-label">是否系统数据:</label>
										<div class="col-sm-5">
											<form:select path="sysData" cssClass="form-control">
												<form:options items="${fns:getDictList('yes_no')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
											</form:select>
											<span class="help-inline">“是”代表此数据只有超级管理员能进行修改，“否”则表示拥有角色修改人员的权限都能进行修改</span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-4  control-label">是否可用</label>
										<div class="col-sm-5">
											<form:select path="useable" cssClass="form-control">
												<form:options items="${fns:getDictList('yes_no')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
											</form:select>
											<span class="help-inline">“是”代表此数据可用，“否”则表示此数据不可用</span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-4  control-label">数据范围:</label>
										<div class="col-sm-5">
											<form:select path="dataScope" class="input-medium form-control">
												<form:options items="${fns:getDictList('sys_data_scope')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
											</form:select>
											<span class="help-inline">特殊情况下，设置为“按明细设置”，可进行跨机构授权</span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-4  control-label">角色授权:</label>
										<div class="col-sm-5">
											<div id="menuTree" class="ztree" style="margin-top:3px;float:left;"></div>
											<form:hidden path="menuIds"/>
											<div id="officeTree" class="ztree" style="margin-left:100px;margin-top:3px;float:left;"></div>
											<form:hidden path="officeIds"/>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-4  control-label">备注:</label>
										<div class="col-sm-5">
											<form:textarea path="remarks" htmlEscape="false" rows="3" maxlength="200" class="input-xlarge form-control"/>
										</div>
									</div>

									<div class="form-group">
										<div class="col-sm-9 col-sm-offset-4">
											<c:if test="${(role.sysData eq fns:getDictValue('是', 'yes_no', '1') && fns:getUser().admin)||!(role.sysData eq fns:getDictValue('是', 'yes_no', '1'))}">
												<shiro:hasPermission name="sys:role:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
											</c:if>
											<input id="btnCancel" class="btn btn-googleplus" type="button" value="返 回" onclick="history.go(-1)"/>
										</div>
									</div>
								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>