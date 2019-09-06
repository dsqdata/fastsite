<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>通知管理</title>
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
				<h4 class="page-title"><a href="javascript:history.go(-1);"><i class="mdi mdi-arrow-left-bold"></i>返回</a></h4>
			</div>
			<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
				<ol class="breadcrumb">
					<li>通知通告</li>
					<li class="active">通知管理</li>
				</ol>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-12">
				<div class="panel panel-info">
					<div class="panel-wrapper collapse in" aria-expanded="true">
						<div class="panel-body">
							<form:form id="inputForm" modelAttribute="oaNotify" action="${ctx}/oa/oaNotify/save" method="post" class="form-horizontal">
								<form:hidden path="id"/>
								<sys:message content="${message}"/>

								<div class="form-group">
									<label class="col-sm-4 control-label"><span class="help-inline"><font color="red">*</font> </span>类型：</label>
									<div class="col-sm-5">
										<form:select path="type" class="form-control input-xlarge required">
											<form:option value="" label=""/>
											<form:options items="${fns:getDictList('oa_notify_type')}" itemLabel="label" itemValue="value" htmlEscape="false"/>
										</form:select>

									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label"><span class="help-inline"><font color="red">*</font> </span>标题：</label>
									<div class="col-sm-5">
										<form:input path="title" htmlEscape="false" maxlength="200" class="form-control input-xlarge required"/>
									</div>
								</div>
								<div class="form-group">
									<label class="col-sm-4 control-label"><span class="help-inline"><font color="red">*</font> </span>内容：</label>
									<div class="col-sm-5">
										<form:textarea path="content" htmlEscape="false" rows="6" maxlength="2000" class="form-control input-xxlarge required"/>
									</div>
								</div>
								<c:if test="${oaNotify.status ne '1'}">
									<div class="form-group">
										<label class="col-sm-4 control-label">附件：</label>
										<div class="col-sm-5">
											<form:hidden id="files" path="files" htmlEscape="false" maxlength="255" class="form-control input-xlarge"/>
											<sys:ckfinder input="files" type="files" uploadPath="/oa/notify" selectMultiple="true"/>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-4 control-label"><font color="red">*</font> 状态：</label>
										<div class="col-sm-5 radio-list" style="padding-top: 7px;">
											<form:radiobuttons path="status" items="${fns:getDictList('oa_notify_status')}" itemLabel="label" itemValue="value" htmlEscape="false" class="required"/>
											<span class="help-inline">发布后不能进行操作。</span>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-4 control-label"><span class="help-inline"><font color="red">*</font> </span>接受人：</label>
										<div class="col-sm-5">
											<sys:treeselect id="oaNotifyRecord" name="oaNotifyRecordIds" value="${oaNotify.oaNotifyRecordIds}" labelName="oaNotifyRecordNames" labelValue="${oaNotify.oaNotifyRecordNames}"
															title="用户" url="/sys/office/treeData?type=3" cssClass="form-control input-xxlarge required" notAllowSelectParent="true" checked="true"/>

										</div>
									</div>
								</c:if>
								<c:if test="${oaNotify.status eq '1'}">
									<div class="form-group">
										<label class="col-sm-4 control-label">附件：</label>
										<div class="col-sm-5">
											<form:hidden id="files" path="files" htmlEscape="false" maxlength="255" class="form-control input-xlarge"/>
											<sys:ckfinder input="files" type="files" uploadPath="/oa/notify" selectMultiple="true" readonly="true" />
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-4 control-label">接受人：</label>
										<div class="col-sm-5">
											<table id="contentTable" class="table table-striped table-bordered table-condensed">
												<thead>
												<tr>
													<th>接受人</th>
													<th>接受部门</th>
													<th>阅读状态</th>
													<th>阅读时间</th>
												</tr>
												</thead>
												<tbody>
												<c:forEach items="${oaNotify.oaNotifyRecordList}" var="oaNotifyRecord">
													<tr>
														<td>
																${oaNotifyRecord.user.name}
														</td>
														<td>
																${oaNotifyRecord.user.office.name}
														</td>
														<td>
																${fns:getDictLabel(oaNotifyRecord.readFlag, 'oa_notify_read', '')}
														</td>
														<td>
															<fmt:formatDate value="${oaNotifyRecord.readDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
														</td>
													</tr>
												</c:forEach>
												</tbody>
											</table>
											已查阅：${oaNotify.readNum} &nbsp; 未查阅：${oaNotify.unReadNum} &nbsp; 总共：${oaNotify.readNum + oaNotify.unReadNum}
										</div>
									</div>
								</c:if>
								<div class="form-group">
									<div class="col-sm-9 col-sm-offset-4">
										<c:if test="${oaNotify.status ne '1'}">
											<shiro:hasPermission name="oa:oaNotify:edit"><input id="btnSubmit" class="btn btn-primary" type="submit" value="保 存"/>&nbsp;</shiro:hasPermission>
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