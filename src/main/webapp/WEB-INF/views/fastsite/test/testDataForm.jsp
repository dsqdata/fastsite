<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>单表管理</title>
	<meta name="decorator" content="defaultBs"/>
	<script type="text/javascript">
		$(document).ready(function() {
			//$("#name").focus();
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
		.Wdate{
			height: auto;
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
				<h4 class="page-title">修改密码</h4>
			</div>
			<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
				<ol class="breadcrumb">
					<li>个人信息</li>
					<li class="active">修改密码</li>
				</ol>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<div class="panel panel-info">
					<div class="panel-wrapper collapse in" aria-expanded="true">
						<div class="panel-body">

							<form:form id="inputForm" modelAttribute="testData" action="${ctx}/test/testData/save" method="post" class="form-horizontal">
								<form:hidden path="id"/>
								<sys:message content="${message}"/>
								<div class="form-group">
									<label class="col-sm-4 control-label">归属用户：</label>
									<div class="col-sm-5">
										<sys:treeselect id="user" name="user.id" value="${testData.user.id}" labelName="user.name" labelValue="${testData.user.name}"
														title="用户" url="/sys/office/treeData?type=3" cssClass="form-control" allowClear="true" notAllowSelectParent="true"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">归属部门：</label>
									<div class="col-sm-5">
										<sys:treeselect id="office" name="office.id" value="${testData.office.id}" labelName="office.name" labelValue="${testData.office.name}"
														title="部门" url="/sys/office/treeData?type=2" cssClass="form-control" allowClear="true" notAllowSelectParent="true"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">归属区域：</label>
									<div class="col-sm-5">
										<sys:treeselect id="area" name="area.id" value="${testData.area.id}" labelName="area.name" labelValue="${testData.area.name}"
														title="区域" url="/sys/area/treeData" cssClass="form-control" allowClear="true" notAllowSelectParent="true"/>
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-4 control-label" for="name">名称:</label>
									<div class="col-sm-5">
										<form:input path="name" htmlEscape="false" maxlength="100" class="form-control input-xlarge "/>
									</div>
								</div>

								<div class="form-group">
									<label class="col-sm-4 control-label">性别：</label>
									<div class="col-sm-5 radio-list" style="padding-top: 7px;">
										<form:radiobuttons path="sex" items="${fns:getDictList('sex')}" itemLabel="label" itemValue="value" htmlEscape="false" class="radio-inline" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">加入日期：</label>
									<div class="col-sm-5">
										<input name="inDate" type="text" readonly="readonly" maxlength="20" class="form-control input-medium Wdate "
											   value="<fmt:formatDate value="${testData.inDate}" pattern="yyyy-MM-dd HH:mm:ss"/>"
											   onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label">备注信息：</label>
									<div class="col-sm-5">
										<form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="form-control input-xxlarge "/>
									</div>
								</div>

								<div class="form-group">
									<div class="col-sm-9 col-sm-offset-4">
										<shiro:hasPermission name="test:testData:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
										<input id="btnCancel" class="btn" type="button" value="返 回" onclick="history.go(-1)"/>
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