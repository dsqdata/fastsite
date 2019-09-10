<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="org.apache.shiro.web.filter.authc.FormAuthenticationFilter"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>${fns:getConfig('productName')} 登录</title>
	<meta name="decorator" content="defaultBs"/>
	<style type="text/css">
		<%--html,body,table{--%>
		<%--background: url("${ctxStatic}/images/bj.jpg");--%>
		<%--background-position: center 0;--%>
		<%--background-repeat: no-repeat;--%>
		<%--background-attachment: fixed;--%>
		<%--background-size: cover;--%>
		<%---webkit-background-size: cover;--%>
		<%---o-background-size: cover;--%>
		<%---moz-background-size: cover;--%>
		<%---ms-background-size: cover;--%>
		<%--overflow: hidden!important;--%>
		<%--background-color:#f5f5f5;width:100%;text-align:center;}--%>

		html,body,table{
			margin: 0px!important;
			overflow: hidden!important;
		}
		html {
			background: #ffffff;
		}
		.form-signin-heading{font-family:Helvetica, Georgia, Arial, sans-serif, 黑体;font-size:33px;margin-bottom:20px;color:#ffffff;}
		.form-signin{position:relative;text-align:left;padding:25px 0px 0px;margin:0px;background-color:#fff;border:0px solid #fff;
			-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;-webkit-box-shadow:0 1px 2px rgba(0,0,0,.05);-moz-box-shadow:0 1px 2px rgba(0,0,0,.05);box-shadow:0 0px 0px rgba(0,0,0,.05);}
		.form-signin .checkbox{margin-bottom:10px;color:#0663a2;} .form-signin .input-label{font-size:16px;line-height:23px;color:#999;}
		.form-signin .input-block-level{font-size:16px;height:auto;margin-bottom:15px;padding:7px;*width:283px;*padding-bottom:0;_padding:7px 7px 9px 7px;}
		.form-signin .btn.btn-large{font-size:16px;} .form-signin #themeSwitch{position:absolute;right:15px;bottom:10px;}
		.form-signin div.validateCode {padding-bottom:15px;} .mid{vertical-align:middle;}
		label.error{background:none;width:270px;font-weight:normal;color:inherit;margin:0;}
		.text-muted{color: #bbbdbf}


		#wrapper {
			width: 100%;
		}

		.new-login-register {
			position: fixed;
			height: 100%;
		}

		.new-login-register .lg-info-panel {
			background: url('${ctxStatic}/login/login-register.jpg') center center/cover no-repeat!important;
			width: 500px;
			height: 100%;
			position: fixed;
		}
		.new-login-register .new-login-box {
			margin-left: 50%;
			margin-top: 15%;
			width: 400px;
		}
		.white-box {
			background: #fff;
			padding: 25px;
			margin-bottom: 30px;
		}
		.new-login-register .lg-info-panel .inner-panel {
			position: absolute;
			height: 100%;
			width: 100%;
			background: rgba(0,0,0,.5);
		}
		.new-login-register .lg-info-panel .lg-content {
			margin-top: 50%;
			text-align: center;
			padding: 0 50px;
		}
		.new-login-register .lg-info-panel .lg-content h2 {
			color: #fff;
			font-weight: 600;
		}

		h2 {
			line-height: 36px;
			font-size: 24px;
		}

		h1, h2, h3, h4, h5, h6 {
			color: #313131;
			font-family: Rubik,sans-serif;
			margin: 10px 0;
			font-weight: 300;
		}

		.white-box .box-title {
			margin: 0 0 12px;
			font-weight: 500;
			text-transform: uppercase;
			font-size: 28px;
		}

		.m-b-0 {
			margin-bottom: 0!important;
		}
		.p-20 {
			padding: 20px!important;
		}
		.di {
			display: inline-block;
		}
		.form-control {
			display: block;
			width: 100%;
			height: 34px;
			padding: 6px 12px;
			font-size: 14px;
			line-height: 1.42857143;
			color: #555;
			background-color: #fff;
			background-image: none;
			border: 1px solid #ccc;
			border-radius: 2px;
			-webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
			box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
			-webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
			-o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
			transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
		}
	</style>
	<script type="text/javascript">
        $(document).ready(function() {
            $("#loginForm").validate({
                rules: {
                    validateCode: {remote: "${pageContext.request.contextPath}/servlet/validateCodeServlet"}
                },
                messages: {
                    username: {required: "请填写用户名."},password: {required: "请填写密码."},
                    validateCode: {remote: "验证码不正确.", required: "请填写验证码."}
                },
                errorLabelContainer: "#messageBox",
                errorPlacement: function(error, element) {
                    error.appendTo($("#loginError").parent());
                }
            });
        });
        // 如果在框架或在对话框中，则弹出提示并跳转到首页
        if(self.frameElement && self.frameElement.tagName == "IFRAME" || $('#left').length > 0 || $('.jbox').length > 0){
            alert('未登录或登录超时。请重新登录，谢谢！');
            top.location = "${ctx}";
        }
	</script>
</head>
<body>


<section id="wrapper" class="new-login-register">

	<div class="lg-info-panel">
		<div class="inner-panel">
			<a href="javascript:void(0)" class="p-20 di"><img src="${ctxStatic}/bootstrap/3.0.3/plugin/images/admin-logo-dark.png" style="height: 45px;"> <img src="${ctxStatic}/bootstrap/3.0.3/plugin/images/admin-text-dark.png" style="height: 45px;"></a>
			<div class="lg-content">
				<h2>快速开发框架 &amp; FastSite</h2>
				<p class="text-muted">只为快速开发而生，主要使用技术 SpringMvc Mybatis Bootstrap3 Webuploader </p>
				<%--<p class="text-muted">管理系统管理系统... </p>--%>
			</div>
		</div>
	</div>
	<div class="new-login-box">
		<div id="messageBox" class="alert alert-error ${empty message ? 'hide' : ''}"><button data-dismiss="alert" class="close">×</button>
			<label id="loginError" class="error">${message}</label>
		</div>
		<div class="white-box">
			<h2 class="box-title m-b-0">管理系统</h2>
			<form id="loginForm" class="form-signin formPos" action="${ctx}/login" method="post">
				<label class="input-label" for="username">登录名</label>
				<input type="text" id="username" name="username" class="input-block-level required form-control" value="${username}">
				<label class="input-label" for="password">密码</label>
				<input type="password" id="password" name="password" class="input-block-level required form-control">
				<c:if test="${isValidateCodeLogin}"><div class="validateCode">
					<label class="input-label mid" for="validateCode">验证码</label>
					<sys:validateCode name="validateCode" inputCssStyle="margin-bottom:0;"/>
				</div></c:if>

				<label for="rememberMe" title="下次不需要再登录"><input type="checkbox" id="rememberMe" name="rememberMe" ${rememberMe ? 'checked' : ''}/> 记住我</label>
				<br>
				<input class="btn btn-large btn-primary" type="submit" value="登 录" style="    margin-top: 15px;
    float: right;
    width: 100%;"/>&nbsp;&nbsp;
			</form>
		</div>
	</div>


</section>
<script src="${ctxStatic}/flash/zoom.min.js" type="text/javascript"></script>
</body>
</html>