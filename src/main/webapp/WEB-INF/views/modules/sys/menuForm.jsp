\<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>菜单管理</title>
	<meta name="decorator" content="defaultBs"/>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#name").focus();
			$("#inputForm").validate({
				submitHandler: function(form){
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
		});
	</script>
	<style>
		.help-inline{
			color: #999;;
		}
		.radio-list label{
			margin-right: 10px;
			margin-left: 10px;
		}
	</style>
</head>
<body>
<div id="page-wrapper" style="margin: 0;">
	<div class="container-fluid">
		<div class="row bg-title">
			<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
				<h4 class="page-title"><a href="${ctx}/sys/menu/"><i class="mdi mdi-arrow-left-bold"></i>菜单列表</a></h4>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<div class="panel panel-info">
					<div class="panel-wrapper collapse in" aria-expanded="true">
						<div class="panel-body">
							<form:form id="inputForm" modelAttribute="menu" action="${ctx}/sys/menu/save" method="post" class="form-horizontal">
								<form:hidden path="id"/>
								<sys:message content="${message}"/>
								<div class="form-group">
									<label class="col-sm-4 control-label">上级菜单:</label>
									<div class="col-sm-5">
										<sys:treeselect id="menu" name="parent.id" value="${menu.parent.id}" labelName="parent.name" labelValue="${menu.parent.name}"
														title="菜单" url="/sys/menu/treeData" extId="${menu.id}" cssClass="required"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label"><span class="help-inline"><font color="red">*</font> </span>名称:</label>
									<div class="col-sm-5">
										<form:input path="name" htmlEscape="false" maxlength="50" class="required input-xlarge form-control"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">链接:</label>
									<div class="col-sm-5">
										<form:input path="href" htmlEscape="false" maxlength="2000" class="input-xxlarge form-control"/>
										<span class="help-inline">点击菜单跳转的页面</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">目标:</label>
									<div class="col-sm-5">
										<form:input path="target" htmlEscape="false" maxlength="10" class="input-smal form-control"/>
										<span class="help-inline">链接地址打开的目标窗口，默认：mainFrame</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">图标:</label>
									<div class="col-sm-5">
										<sys:iconselect id="icon" name="icon" value="${menu.icon}"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">排序:</label>
									<div class="col-sm-5">
										<form:input path="sort" htmlEscape="false" maxlength="50" class="required digits input-small form-control"/>
										<span class="help-inline">排列顺序，升序。</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">可见:</label>
									<div class="col-sm-5 radio-list" style="padding-top: 7px;">
										<form:radiobuttons path="isShow" items="${fns:getDictList('show_hide')}" itemLabel="label" itemValue="value" htmlEscape="false" class="required"/>
										<p class="help-inline">该菜单或操作是否显示到系统菜单中</p>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">权限标识:</label>
									<div class="col-sm-5">
										<form:input path="permission" htmlEscape="false" maxlength="100" class="input-xxlarge form-control"/>
										<span class="help-inline">控制器中定义的权限标识，如：@RequiresPermissions("权限标识")</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">备注:</label>
									<div class="col-sm-5">
										<form:textarea path="remarks" htmlEscape="false" rows="3" maxlength="200" class="input-xxlarge form-control"/>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-9 col-sm-offset-4">
										<shiro:hasPermission name="sys:menu:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
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