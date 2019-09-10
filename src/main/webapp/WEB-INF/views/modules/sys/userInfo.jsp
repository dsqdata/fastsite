<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>个人信息</title>
	<meta name="decorator" content="defaultBs"/>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#inputForm").validate({
				submitHandler: function(form){
					loading('正在提交，请稍等...');
					form.submit();
				},
                errorElement: "em",
//				errorContainer: "#messageBox",
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
			<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12"><h4 class="page-title">修改信息</h4></div>
			<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
				<ol class="breadcrumb">
					<li>个人信息</li>
					<li class="active">修改信息</li>
				</ol>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<div class="white-box">
					<sys:message content="${message}"/>
					<h3 class="box-title m-b-0">修改信息</h3>
					<p class="text-muted m-b-30"> Change User Info</p>
					<div class="panel panel-default">
						<div class="panel-body">
							<form:form id="inputForm" modelAttribute="user" action="${ctx}/sys/user/info" method="post" class="form-horizontal">
								<div class="form-group">
									<label class="col-sm-4 control-label" for="companyName">归属公司：</label>
									<div class="col-sm-5">
										<div style="padding-top: 7px;color: #565656; text-align: left;">${user.company.name}</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label" for="officeName">归属部门：</label>
									<div class="col-sm-5">
										<div style="padding-top: 7px;color: #565656; text-align: left;">${user.office.name}</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label" for="name">姓名：</label>
									<div class="col-sm-5">
										<form:input path="name" htmlEscape="false" maxlength="50" readonly="true" class="form-control"/>
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-4 control-label" for="phone">电话：</label>
									<div class="col-sm-5">
										<form:input path="phone" htmlEscape="false" maxlength="50" class="form-control"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label" for="mobile">手机：</label>
									<div class="col-sm-5">
										<form:input path="mobile" htmlEscape="false" maxlength="50" class="form-control"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label" for="email">邮箱：</label>
									<div class="col-sm-5">
										<form:input path="email" htmlEscape="false" maxlength="50" class="form-control email"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label" for="remarks">备注：</label>
									<div class="col-sm-5">
										<form:textarea path="remarks" htmlEscape="false" rows="3" maxlength="200" class="form-control input-xlarge"/>
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-4 control-label" for="remarks">用户类型：</label>
									<div class="col-sm-5">
										<div style="padding-top: 7px;color: #565656; text-align: left;">${fns:getDictLabel(user.userType, 'sys_user_type', '无')}</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label" for="remarks">用户角色：</label>
									<div class="col-sm-5">
										<div style="padding-top: 7px;color: #565656; text-align: left;">${user.roleNames}</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label" for="remarks">上次登录：</label>
									<div class="col-sm-5">
										<div style="padding-top: 7px;color: #565656; text-align: left;">IP: ${user.oldLoginIp}&nbsp;&nbsp;&nbsp;&nbsp;时间：<fmt:formatDate value="${user.oldLoginDate}" type="both" dateStyle="full"/></div>
									</div>
								</div>

								<div class="form-group">
									<div class="col-sm-9 col-sm-offset-4">
										<button type="submit" class="btn btn-primary" name="signup" value="Sign up"><i class="fa fa-save"></i> 确认修改</button>
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