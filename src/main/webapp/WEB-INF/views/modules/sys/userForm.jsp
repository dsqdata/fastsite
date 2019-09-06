<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>用户管理</title>
	<meta name="decorator" content="bootsrap3"/>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#no").focus();
			$("#inputForm").validate({
				rules: {
					loginName: {remote: "${ctx}/sys/user/checkLoginName?oldLoginName=" + encodeURIComponent('${user.loginName}')}
				},
				messages: {
					loginName: {remote: "用户登录名已存在"},
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
	<style>
		.checkbox {
			padding-left: 35px;
		}
		.checkbox label, .radio label {
			width: 100%;
		}
	</style>
</head>
<body>

<div id="page-wrapper" style="margin: 0;">
	<div class="container-fluid">
		<div class="row bg-title">
			<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
				<h4 class="page-title"><a href="javascript:history.go(-1);"><i class="mdi mdi-arrow-left-bold"></i>返回</a></h4>
			</div>
			<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
				<ol class="breadcrumb">
					<li>用户管理</li>
					<li class="active">用户编辑</li>
				</ol>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<div class="panel panel-info">
					<div class="panel-wrapper collapse in" aria-expanded="true">
						<div class="panel-body">
							<form:form id="inputForm" modelAttribute="user" action="${ctx}/sys/user/save" method="post" class="form-horizontal">
								<form:hidden path="id"/>
								<sys:message content="${message}"/>

								<div class="form-group">
									<label class="col-sm-4 control-label">头像：</label>
									<div class="col-sm-5">
										<form:hidden id="nameImage" path="photo" htmlEscape="false" maxlength="255" class="input-xlarge"/>
										<sys:ckfinder input="nameImage" type="images" uploadPath="/photo" selectMultiple="false" maxWidth="100" maxHeight="100"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">归属公司：</label>
									<div class="col-sm-5">
										<sys:treeselect id="company" name="company.id" value="${user.company.id}" labelName="company.name" labelValue="${user.company.name}"
														title="公司" url="/sys/office/treeData?type=1" cssClass="required"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">归属部门：</label>
									<div class="col-sm-5">
										<sys:treeselect id="office" name="office.id" value="${user.office.id}" labelName="office.name" labelValue="${user.office.name}"
														title="部门" url="/sys/office/treeData?type=2" cssClass="required" notAllowSelectParent="true"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label"><span class="help-inline"><font color="red">*</font> </span>工号：</label>
									<div class="col-sm-5">
										<form:input path="no" htmlEscape="false" maxlength="50" class="required form-control"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label"><span class="help-inline"><font color="red">*</font> </span>姓名：</label>
									<div class="col-sm-5">
										<form:input path="name" htmlEscape="false" maxlength="50" class="required form-control"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label"><span class="help-inline"><font color="red">*</font> </span>登录名：</label>
									<div class="col-sm-5">
										<input id="oldLoginName" name="oldLoginName" type="hidden" value="${user.loginName}">
										<form:input path="loginName" htmlEscape="false" maxlength="50" class="required userName form-control"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label"><c:if test="${empty user.id}"><span class="help-inline"><font color="red">*</font> </span></c:if>密码：</label>
									<div class="col-sm-5">
										<input id="newPassword" name="newPassword" type="password" value="" maxlength="50" minlength="3" class="${empty user.id?'required':''} form-control"/>
										<c:if test="${not empty user.id}"><span class="help-inline">若不修改密码，请留空。</span></c:if>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label"><c:if test="${empty user.id}"><span class="help-inline"><font color="red">*</font> </span></c:if>确认密码：</label>
									<div class="col-sm-5">
										<input id="confirmNewPassword" name="confirmNewPassword" type="password" value="" maxlength="50" minlength="3" equalTo="#newPassword" class=" form-control"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">邮箱：</label>
									<div class="col-sm-5">
										<form:input path="email" htmlEscape="false" maxlength="100" class="email form-control"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">电话：</label>
									<div class="col-sm-5">
										<form:input path="phone" htmlEscape="false" maxlength="100" cssClass="form-control"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">手机：</label>
									<div class="col-sm-5">
										<form:input path="mobile" htmlEscape="false" maxlength="100" cssClass="form-control"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label"><span class="help-inline"><font color="red">*</font> 是否允许登录：</label>
									<div class="col-sm-5">
										<form:select path="loginFlag" cssClass="form-control selectpicker" data-style="form-control">
											<form:options items="${fns:getDictList('yes_no')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
										</form:select>
										“是”代表此账号允许登录，“否”则表示此账号不允许登录</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">用户类型：</label>
									<div class="col-sm-5">
										<form:select path="userType" cssClass="form-control selectpicker" data-style="form-control">
											<form:option value="" label="请选择"/>
											<form:options items="${fns:getDictList('sys_user_type')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
										</form:select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label"><span class="help-inline"><font color="red">*</font> </span>用户角色：</label>
									<div class="col-sm-5 checkbox">
										<form:checkboxes path="roleIdList" items="${allRoles}" itemLabel="name" itemValue="id" htmlEscape="false" class="required"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">备注：</label>
									<div class="col-sm-5 ">
										<form:textarea path="remarks" htmlEscape="false" rows="3" maxlength="200" class="form-control input-xlarge"/>
									</div>
								</div>
								<c:if test="${not empty user.id}">
									<div class="form-group">
										<label class="col-sm-4 control-label">创建时间：</label>
										<div class="col-sm-5">
											<div style="padding-top: 7px;color: #565656; text-align: left;"><fmt:formatDate value="${user.createDate}" type="both" dateStyle="full"/></div>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-4 control-label">最后登陆：</label>
										<div class="col-sm-5">
											<div style="padding-top: 7px;color: #565656; text-align: left;">IP: ${user.loginIp}&nbsp;&nbsp;&nbsp;&nbsp;时间：<fmt:formatDate value="${user.loginDate}" type="both" dateStyle="full"/></div>
										</div>
									</div>
								</c:if>


								<div class="form-group">
									<div class="col-sm-9 col-sm-offset-4">
										<shiro:hasPermission name="sys:user:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
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