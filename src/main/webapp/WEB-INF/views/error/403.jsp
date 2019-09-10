<%
response.setStatus(403);

//获取异常类
Throwable ex = Exceptions.getThrowable(request);

// 如果是异步请求或是手机端，则直接返回信息
if (Servlets.isAjaxRequest(request)) {
	if (ex!=null && StringUtils.startsWith(ex.getMessage(), "msg:")){
		out.print(StringUtils.replace(ex.getMessage(), "msg:", ""));
	}else{
		out.print("操作权限不足.");
	}
}

//输出异常信息页面
else {
%>
<%@page import="com.pangu.fastsite.common.web.Servlets"%>
<%@page import="com.pangu.fastsite.common.utils.Exceptions"%>
<%@page import="com.pangu.fastsite.common.utils.StringUtils"%>
<%@page contentType="text/html;charset=UTF-8" isErrorPage="true"%>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>403 - 操作权限不足</title>
	<%@include file="/WEB-INF/views/include/head_a_bs3.jsp" %>
</head>
<body>

<section id="wrapper" class="error-page">
	<div class="error-box">
		<div class="error-body text-center">
			<h1 class="text-info">403</h1>
			<h3 class="text-uppercase">操作权限不足</h3>
			<p class="text-muted m-t-30 m-b-30 text-uppercase">你好像没有权限访问该资源.</p>
			<a href="javascript:" onclick="history.go(-1);" class="btn btn-info btn-rounded waves-effect waves-light m-b-40"> 返回上一页 </a> </div>
	</div>
</section>

	<%--<div class="container-fluid">--%>
		<%--<div class="page-header"><h1>操作权限不足.</h1></div>--%>
		<%--<%--%>
			<%--if (ex!=null && StringUtils.startsWith(ex.getMessage(), "msg:")){--%>
				<%--out.print("<div>"+StringUtils.replace(ex.getMessage(), "msg:", "")+" <br/> <br/></div>");--%>
			<%--}--%>
		<%--%>--%>
		<%--<div><a href="javascript:" onclick="history.go(-1);" class="btn">返回上一页</a></div>--%>
		<%--<script>try{top.$.jBox.closeTip();}catch(e){}</script>--%>
	<%--</div>--%>
</body>
</html>
<%
} out = pageContext.pushBody();
%>