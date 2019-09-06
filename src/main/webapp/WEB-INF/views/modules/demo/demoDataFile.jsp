<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>实例管理</title>
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
					<li>实例</li>
					<li class="active">实例</li>
				</ol>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<div class="panel panel-info">
					<div class="panel-wrapper collapse in" aria-expanded="true">
						<div class="panel-body">
							<form:form id="inputForm" modelAttribute="demoData" action="${ctx}/demo/demoData/save" method="post" >
								<div class="form-body">
								<form:hidden path="id"/>
								<sys:message content="${message}"/>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label">归属用户：</label>
                                                    <sys:treeselect id="user" name="user.id" value="${demoData.user.id}" labelName="user.name" labelValue="${demoData.user.name}"
                                                                    title="用户" url="/sys/office/treeData?type=3" cssClass="" allowClear="true" notAllowSelectParent="true"/>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label">归属部门：</label>
                                                    <sys:treeselect id="office" name="office.id" value="${demoData.office.id}" labelName="office.name" labelValue="${demoData.office.name}"
                                                                    title="部门" url="/sys/office/treeData?type=2" cssClass="" allowClear="true" notAllowSelectParent="true"/>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label">归属区域：</label>
                                                    <sys:treeselect id="area" name="area.id" value="${demoData.area.id}" labelName="area.name" labelValue="${demoData.area.name}"
                                                                    title="区域" url="/sys/area/treeData" cssClass="" allowClear="true" notAllowSelectParent="true"/>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label">名称：</label>
                                                    <form:input path="name" htmlEscape="false" maxlength="100" class=" form-control input-xlarge "/>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label">性别：</label>
                                                    <form:input path="sex" htmlEscape="false" maxlength="1" class=" form-control input-xlarge "/>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label">加入日期：</label>
                                                    <input name="inDate" type="text" readonly="readonly" maxlength="20" class="form-control input-medium Wdate "
                                                           value="<fmt:formatDate value="${demoData.inDate}" pattern="yyyy-MM-dd HH:mm:ss"/>"
                                                    onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label">备注信息：</label>
                                                    <form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="255" class="form-control input-xxlarge "/>
                                            </div>
                                        </div>
                                    </div>
								</div>
								<div class="form-actions">
									<shiro:hasPermission name="demo:demoData:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
									<input id="btnCancel" class="btn btn-googleplus" type="button" value="返 回" onclick="history.go(-1)"/>
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