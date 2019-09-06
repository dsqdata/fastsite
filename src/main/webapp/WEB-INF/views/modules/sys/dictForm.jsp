<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>字典管理</title>
	<meta name="decorator" content="defaultBs"/>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#value").focus();
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
				<h4 class="page-title"><a href="${ctx}/sys/dict/"><i class="mdi mdi-arrow-left-bold"></i>区域列表</a></h4>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<div class="panel panel-info">
					<div class="panel-wrapper collapse in" aria-expanded="true">
						<div class="panel-body">
							<form:form id="inputForm" modelAttribute="dict" action="${ctx}/sys/dict/save" method="post" class="form-horizontal">
								<form:hidden path="id"/>
								<sys:message content="${message}"/>
								<div class="form-group">
									<label class="col-sm-4 control-label">键值:</label>
									<div class="col-sm-5">
										<form:input path="value" htmlEscape="false" maxlength="50" class="required form-control"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">标签:</label>
									<div class="col-sm-5">
										<form:input path="label" htmlEscape="false" maxlength="50" class="required form-control"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">类型:</label>
									<div class="col-sm-5">
										<form:input path="type" htmlEscape="false" maxlength="50" class="required abc form-control"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">描述:</label>
									<div class="col-sm-5">
										<form:input path="description" htmlEscape="false" maxlength="50" class="required form-control"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">排序:</label>
									<div class="col-sm-5">
										<form:input path="sort" htmlEscape="false" maxlength="11" class="required digits form-control"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">备注:</label>
									<div class="col-sm-5">
										<form:textarea path="remarks" htmlEscape="false" rows="3" maxlength="200" class="input-xlarge form-control"/>
									</div>
								</div>

								<div class="form-group">
									<div class="col-sm-9 col-sm-offset-4">
										<shiro:hasPermission name="sys:dict:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
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