<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>区域管理</title>
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
</head>
<body>
<div id="page-wrapper" style="margin: 0;">
	<div class="container-fluid">
		<div class="row bg-title">
			<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
				<h4 class="page-title"><a href="${ctx}/sys/area/"><i class="mdi mdi-arrow-left-bold"></i>返回</a></h4>
			</div>
			<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
				<ol class="breadcrumb">
					<li>系统设置</li>
					<li class="active">区域管理</li>
				</ol>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<div class="panel panel-info">
					<div class="panel-wrapper collapse in" aria-expanded="true">
						<div class="panel-body">
							<form:form id="inputForm" modelAttribute="area" action="${ctx}/sys/area/save" method="post" class="form-horizontal">
								<form:hidden path="id"/>
								<sys:message content="${message}"/>
								<div class="form-group">
									<label class="col-sm-4 control-label">上级区域:</label>
									<div class="col-sm-5">
										<sys:treeselect id="area" name="parent.id" value="${area.parent.id}" labelName="parent.name" labelValue="${area.parent.name}"
														title="区域" url="/sys/area/treeData" extId="${area.id}" cssClass="" allowClear="true"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label"><span class="help-inline"><font color="red">*</font> </span>区域名称:</label>
									<div class="col-sm-5">
										<form:input path="name" htmlEscape="false" maxlength="50" class="required form-control"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">区域编码:</label>
									<div class="col-sm-5">
										<form:input path="code" htmlEscape="false" maxlength="50" cssClass="form-control"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">区域类型:</label>
									<div class="col-sm-5">
										<form:select path="type" class="input-medium" cssClass="form-control">
											<form:options items="${fns:getDictList('sys_area_type')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
										</form:select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">备注:</label>
									<div class="col-sm-5">
										<form:textarea path="remarks" htmlEscape="false" rows="3" maxlength="200" class="form-control input-xlarge"/>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-9 col-sm-offset-4">
										<shiro:hasPermission name="sys:area:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
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