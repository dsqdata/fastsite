<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>修改密码</title>
	<meta name="decorator" content="defaultBs"/>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#oldPassword").focus();
			$("#inputForm").validate({
				rules: {
				},
				messages: {
					confirmNewPassword: {equalTo: "输入与上面相同的密码"}
				},
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
				<h4 class="page-title">修改密码</h4> </div>
			<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
				<ol class="breadcrumb">
					<li>个人信息</li>
					<li class="active">修改密码</li>
				</ol>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<div class="row">
			<div class="col-sm-12">
				<div class="white-box">
					<h3 class="box-title m-b-0">修改密码</h3>
					<p class="text-muted m-b-30"> Change Password</p>
				<div class="panel panel-default">
					<div class="panel-body">
						<form:form id="inputForm" modelAttribute="user" action="${ctx}/sys/user/modifyPwd" method="post" class="form-horizontal">

							<div class="form-group">
								<label class="col-sm-4 control-label" for="oldPassword">旧密码</label>
								<div class="col-sm-5">
									<input type="password" class="form-control" id="oldPassword" name="oldPassword" placeholder="请输入旧密码" maxlength="50" minlength="3" required/>
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-4 control-label" for="newPassword">新密码</label>
								<div class="col-sm-5">
									<input id="newPassword" name="newPassword" type="password" value="" maxlength="50" placeholder="请输入新密码" minlength="3" required class="form-control"/>
								</div>
							</div>

							<div class="form-group">
								<label class="col-sm-4 control-label" for="confirmNewPassword">确认新密码</label>
								<div class="col-sm-5">
									<input id="confirmNewPassword" name="confirmNewPassword" type="password" placeholder="确认新密码"  maxlength="50" minlength="3" required class="form-control" equalTo="#newPassword"/>
								</div>
							</div>

							<div class="form-group">
								<div class="col-sm-9 col-sm-offset-4">
									<button type="submit" class="btn btn-primary" name="signup" value="Sign up">确认修改</button>
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