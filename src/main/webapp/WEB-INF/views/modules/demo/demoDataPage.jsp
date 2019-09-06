<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>实例管理</title>
    <meta name="decorator" content="defaultBs"/>
    <script type="text/javascript">
        $(document).ready(function () {
            //$("#name").focus();
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

            $("#kv-explorer").fileinput({
                language: 'zh',
                uploadUrl: '${ctx}/sys/file/fileUpload',
                overwriteInitial: false,
                initialPreviewAsData: true,
                enctype: 'multipart/form-data',
                initialPreview: [
                ],
                initialPreviewConfig: [
                    {caption: "nature-1.jpg", size: 329892, width: "120px", url: "{$url}", key: 1},
                    {caption: "nature-2.jpg", size: 872378, width: "120px", url: "{$url}", key: 2},
                    {caption: "nature-3.jpg", size: 632762, width: "120px", url: "{$url}", key: 3}
                ]
            }).on('filebatchselected', function (event, data, id, index) {
                $(this).fileinput("upload");
            }).on('filesorted', function(e, params) {
                console.log('file sorted', e, params);
            }).on('fileuploaded', function(e, params) {
                console.log('file uploaded', e, params);
            }).on('fileuploaded', function(event, data, previewId, index) {
                if (typeof(data.response.id) != 'undefined') {
                    id_str = id_str + data.response.id + ',';
                }
            })

            });
    </script>
</head>
<body>
<div id="page-wrapper" style="margin: 0;">
    <div class="container-fluid">
        <div class="row bg-title">
            <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                <h4 class="page-title">模块实例</h4>
            </div>
            <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                <ol class="breadcrumb">
                    <li>实例模版</li>
                    <li class="active">模块实例</li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 col-sm-12 col-xs-12">
                <div class="white-box">
                    <h3 class="box-title">标签</h3>
                    <p class="text-muted m-b-30">默认标签样式</p>
                    <!-- Nav tabs -->
                    <ul class="nav customtab nav-tabs" role="tablist">
                        <li role="presentation" class="active">
                            <a href="#home1" aria-controls="home" role="tab"
                               data-toggle="tab" aria-expanded="true"><span
                                    class="visible-xs"><i class="ti-home"></i></span><span
                                    class="hidden-xs"> 一行表单</span></a></li>
                        <li role="presentation" class="">
                            <a href="#profile1" aria-controls="profile" role="tab"
                               data-toggle="tab" aria-expanded="false"><span
                                    class="visible-xs"><i class="ti-user"></i></span> <span
                                    class="hidden-xs">多行表单</span></a></li>
                        <li role="presentation" class="">
                            <a href="#messages1" aria-controls="messages" role="tab"
                               data-toggle="tab" aria-expanded="false"><span
                                    class="visible-xs"><i class="ti-email"></i></span> <span
                                    class="hidden-xs">按钮</span></a></li>
                        <li role="presentation" class="">
                            <a href="#settings1" aria-controls="settings" role="tab"
                               data-toggle="tab" aria-expanded="false"><span
                                    class="visible-xs"><i class="ti-settings"></i></span> <span
                                    class="hidden-xs">文件上传</span></a></li>
                    </ul>
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <!-- 一行表单 -->
                        <div role="tabpanel" class="tab-pane fade active in" id="home1">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="white-box">
                                        <form class="form-horizontal">

                                            <div class="file-loading">
                                                <input id="kv-explorer" type="file" multiple>
                                            </div>


                                            <div class="form-group">
                                                <label class="col-md-12">用户</label>
                                                <div class="col-md-12">
                                                    <input type="text" class="form-control" value="张三"><span
                                                        class="help-block"><small>注意事项可以写在这里.</small></span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-12" for="example-email">电子邮件 <span class="help"> e.g. "example@gmail.com"</span></label>
                                                <div class="col-md-12">
                                                    <input type="email" id="example-email" name="example-email"
                                                           class="form-control" placeholder="Email"></div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-12">密码</label>
                                                <div class="col-md-12">
                                                    <input type="password" class="form-control" value="password"></div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-12">多文本</label>
                                                <div class="col-md-12">
                                                    <textarea class="form-control" rows="5"
                                                              placeholder="请输入..."></textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-12">下拉选择</label>
                                                <div class="col-sm-12">
                                                    <select class="form-control selectpicker" data-style="form-control">
                                                        <option>1</option>
                                                        <option>2</option>
                                                        <option>3</option>
                                                        <option>4</option>
                                                        <option>5</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <!-- 多行表单 -->
                        <div role="tabpanel" class="tab-pane fade" id="profile1">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="panel panel-info">
                                        <div class="panel-wrapper collapse in" aria-expanded="true">
                                            <div class="panel-body">
                                                <form:form id="inputForm" modelAttribute="demoData"
                                                           action="${ctx}/demo/demoData/save" method="post">
                                                    <div class="form-body">
                                                        <form:hidden path="id"/>
                                                        <sys:message content="${message}"/>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label">归属用户：</label>
                                                                    <sys:treeselect id="user" name="user.id"
                                                                                    value="${demoData.user.id}"
                                                                                    labelName="user.name"
                                                                                    labelValue="${demoData.user.name}"
                                                                                    title="用户"
                                                                                    url="/sys/office/treeData?type=3"
                                                                                    cssClass="" allowClear="true"
                                                                                    notAllowSelectParent="true"/>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label">归属部门：</label>
                                                                    <sys:treeselect id="office" name="office.id"
                                                                                    value="${demoData.office.id}"
                                                                                    labelName="office.name"
                                                                                    labelValue="${demoData.office.name}"
                                                                                    title="部门"
                                                                                    url="/sys/office/treeData?type=2"
                                                                                    cssClass="" allowClear="true"
                                                                                    notAllowSelectParent="true"/>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label">归属区域：</label>
                                                                    <sys:treeselect id="area" name="area.id"
                                                                                    value="${demoData.area.id}"
                                                                                    labelName="area.name"
                                                                                    labelValue="${demoData.area.name}"
                                                                                    title="区域" url="/sys/area/treeData"
                                                                                    cssClass="" allowClear="true"
                                                                                    notAllowSelectParent="true"/>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label">名称：</label>
                                                                    <form:input path="name" htmlEscape="false"
                                                                                maxlength="100"
                                                                                class=" form-control input-xlarge "/>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label">性别：</label>
                                                                    <form:input path="sex" htmlEscape="false"
                                                                                maxlength="1"
                                                                                class=" form-control input-xlarge "/>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label">加入日期：</label>
                                                                    <input name="inDate" type="text" readonly="readonly"
                                                                           maxlength="20"
                                                                           class="form-control input-medium Wdate "
                                                                           value="<fmt:formatDate value="${demoData.inDate}" pattern="yyyy-MM-dd HH:mm:ss"/>"
                                                                           onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',isShowClear:false});"/>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label class="control-label">备注信息：</label>
                                                                    <form:textarea path="remarks" htmlEscape="false"
                                                                                   rows="4" maxlength="255"
                                                                                   class="form-control input-xxlarge "/>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-actions">
                                                        <shiro:hasPermission name="demo:demoData:edit"><input
                                                                id="btnSubmit" class="btn btn-primary" type="submit"
                                                                value="保 存"/>&nbsp;</shiro:hasPermission>
                                                        <input id="btnCancel" class="btn btn-googleplus" type="button"
                                                               value="返 回" onclick="history.go(-1)"/>
                                                    </div>
                                                </form:form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <!-- 按钮 -->
                        <div role="tabpanel" class="tab-pane fade" id="messages1">
                            <div class="row">
                                <div class="col-lg-2 col-sm-2 col-xs-12">
                                    <button class="btn btn-block btn-default">Default</button>
                                </div>
                                <div class="col-lg-2 col-sm-2 col-xs-12">
                                    <button class="btn btn-block btn-info">Info</button>
                                </div>
                                <div class="col-lg-2 col-sm-2 col-xs-12">
                                    <button class="btn btn-block btn-primary">Primary</button>
                                </div>
                                <div class="col-lg-2 col-sm-2 col-xs-12">
                                    <button class="btn btn-block btn-success">Success</button>
                                </div>
                                <div class="col-lg-2 col-sm-2 col-xs-12">
                                    <button class="btn btn-block btn-danger">Danger</button>
                                </div>
                                <div class="col-lg-2 col-sm-2 col-xs-12">
                                    <button class="btn btn-block btn-warning">Warning</button>
                                </div>
                            </div>
                            <div class="row" style="margin-top: 20px">
                                <div class="col-lg-2 col-sm-2 col-xs-12">
                                    <button class="btn btn-block btn-default btn-rounded">Default</button>
                                </div>
                                <div class="col-lg-2 col-sm-2 col-xs-12">
                                    <button class="btn btn-block btn-info btn-rounded">Info</button>
                                </div>
                                <div class="col-lg-2 col-sm-2 col-xs-12">
                                    <button class="btn btn-block btn-primary btn-rounded">Primary</button>
                                </div>
                                <div class="col-lg-2 col-sm-2 col-xs-12">
                                    <button class="btn btn-block btn-success btn-rounded">Success</button>
                                </div>
                                <div class="col-lg-2 col-sm-2 col-xs-12">
                                    <button class="btn btn-block btn-danger btn-rounded">Danger</button>
                                </div>
                                <div class="col-lg-2 col-sm-2 col-xs-12">
                                    <button class="btn btn-block btn-warning btn-rounded">Warning</button>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-sm-6 col-xs-12">
                                    <div class="white-box">
                                        <h3 class="m-b-0 box-title">所有尺寸按钮</h3>
                                        <p class="text-muted m-b-30">使用 <code>btn-lg</code> <code>btn-sm</code> <code>btn-xs</code></p>
                                        <div class="button-box">
                                            <button class="btn btn-outline btn-default btn-lg">Large button</button>
                                            <button class="btn btn-outline btn-default">Default button</button>
                                            <button class="btn btn-outline btn-default btn-sm">Small button</button>
                                            <button class="btn btn-outline btn-default btn-xs">Mini button</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-sm-6 col-xs-12">
                                    <div class="white-box">
                                        <h3 class="m-b-0 box-title">全尺寸按钮</h3>
                                        <p class="text-muted m-b-30">使用 <code>btn-block</code></p>
                                        <button class="btn btn-outline btn-default btn-lg btn-block">Block button</button>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div role="tabpanel" class="tab-pane fade" id="settings1">


                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>