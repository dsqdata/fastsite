<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>生成方案管理</title>
    <meta name="decorator" content="defaultBs"/>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#name").focus();
            $("#inputForm").validate({
                submitHandler: function (form) {
                    loading('正在提交，请稍等...');
                    form.submit();
                },
                errorElement: "em",
                errorPlacement: function (error, element) {
                    error.addClass("help-block");
                    if (element.prop("type") === "checkbox") {
                        error.insertAfter(element.parent("label"));
                    } else {
                        error.insertAfter(element);
                    }
                },
                highlight: function (element, errorClass, validClass) {
                    $(element).parents(".col-sm-5").addClass("has-error").removeClass("has-success");
                },
                unhighlight: function (element, errorClass, validClass) {
                    $(element).parents(".col-sm-5").addClass("has-success").removeClass("has-error");
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
                <h4 class="page-title"><a href="${ctx}/gen/genScheme/"><i class="mdi mdi-arrow-left-bold"></i>返回</a></h4>
            </div>
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <ol class="breadcrumb">
                    <li>代码生成</li>
                    <li class="active">生成方案</li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <div class="panel panel-info">
                    <div class="panel-wrapper collapse in" aria-expanded="true">
                        <div class="panel-body">
                            <form:form id="inputForm" modelAttribute="genScheme" action="${ctx}/gen/genScheme/save" method="post" class="form-horizontal">
                                <form:hidden path="id"/><form:hidden path="flag"/>
                                <sys:message content="${message}"/>

                                <div class="form-group">
                                    <label class="col-sm-4 control-label"><font color="red">*</font> 方案名称:</label>
                                    <div class="col-sm-5">
                                        <form:input path="name" htmlEscape="false" maxlength="200" class="required form-control"/>
                                        <span class="help-inline"></span>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <label class="col-sm-4 control-label">模板分类:</label>
                                    <div class="col-sm-5">
                                        <form:select path="category" class="form-control required input-xlarge selectpicker" data-style="form-control">
                                            <form:options items="${config.categoryList}" itemLabel="label" itemValue="value" htmlEscape="false"/>
                                        </form:select>
                                        <span class="help-inline">生成结构：{包名}/{模块名}/{分层(dao,entity,service,web)}/{子模块名}/{java类}</span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label"><font color="red">*</font> 生成包路径:</label>
                                    <div class="col-sm-5">
                                        <form:input path="packageName" htmlEscape="false" maxlength="500" class="required input-xlarge form-control"/>
                                        <span class="help-inline">建议模块包：com.pangu.fastsite.modules</span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label"><font color="red">*</font> 生成模块名:</label>
                                    <div class="col-sm-5">
                                        <form:input path="moduleName" htmlEscape="false" maxlength="500" class="required input-xlarge form-control"/>
                                        <span class="help-inline">可理解为子系统名，例如 sys</span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">生成子模块名:</label>
                                    <div class="col-sm-5">
                                        <form:input path="subModuleName" htmlEscape="false" maxlength="500" class="input-xlarge form-control"/>
                                        <span class="help-inline">可选，分层下的文件夹，例如 </span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label"><font color="red">*</font> 生成功能描述:</label>
                                    <div class="col-sm-5">
                                        <form:input path="functionName" htmlEscape="false" maxlength="500" class="required input-xlarge form-control"/>
                                        <span class="help-inline">将设置到类描述</span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label"><font color="red">*</font> 生成功能名:</label>
                                    <div class="col-sm-5">
                                        <form:input path="functionNameSimple" htmlEscape="false" maxlength="500" class="required input-xlarge form-control"/>
                                        <span class="help-inline">用作功能提示，如：保存“某某”成功</span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label"><font color="red">*</font> 生成功能作者:</label>
                                    <div class="col-sm-5">
                                        <form:input path="functionAuthor" htmlEscape="false" maxlength="500" class="required input-xlarge form-control"/>
                                        <span class="help-inline">功能开发者</span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">业务表名:</label>
                                    <div class="col-sm-5">
                                        <form:select path="genTable.id" class="required input-xlarge form-control selectpicker" data-style="form-control">
                                            <form:options items="${tableList}" itemLabel="nameAndComments" itemValue="id" htmlEscape="false"/>
                                        </form:select>
                                        <span class="help-inline">生成的数据表，一对多情况下请选择主表。</span>
                                    </div>
                                </div>
                                <div class="form-group hide">
                                    <label class="col-sm-4 control-label">备注:</label>
                                    <div class="col-sm-5">
                                        <form:textarea path="remarks" htmlEscape="false" rows="4" maxlength="200" class="input-xxlarge form-control"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">生成选项:</label>
                                    <div class="col-sm-5 checkbox">
                                        <form:checkbox path="replaceFile" label="是否替换现有文件"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-9 col-sm-offset-4">
                                        <shiro:hasPermission name="gen:genScheme:edit">
                                            <input id="btnSubmit" class="btn btn-primary" type="submit" value="保存方案" onclick="$('#flag').val('0');"/>&nbsp;
                                            <input id="btnSubmit" class="btn btn-danger" type="submit" value="保存并生成代码" onclick="$('#flag').val('1');"/>&nbsp;
                                        </shiro:hasPermission>
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
