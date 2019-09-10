<%
response.setStatus(404);

// 如果是异步请求或是手机端，则直接返回信息
if (Servlets.isAjaxRequest(request)) {
	out.print("页面不存在.");
}

//输出异常信息页面
else {
%>
<%@page import="com.pangu.fastsite.common.web.Servlets"%>
<%@page contentType="text/html;charset=UTF-8" isErrorPage="true"%>
<%@include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>404 - 页面不存在</title>
	<%@include file="/WEB-INF/views/include/head_a_bs3.jsp" %>
</head>
<body>
<section id="wrapper" class="error-page">
	<div class="error-box">
		<div class="error-body text-center">
			<h1 class="text-danger">400</h1>
			<h3 class="text-uppercase">页面不存在 !</h3>
			<p class="text-muted m-t-30 m-b-30">好像没有找到你想要的页面！</p>
			<a href="javascript:" onclick="history.go(-1);" class="btn btn-danger btn-rounded waves-effect waves-light m-b-40"> 返回上一页 </a> </div>
	</div>
</section>

	<%--<div class="container-fluid">--%>
		<%--<div class="page-header"><h1>页面不存在.</h1></div>--%>
		<%--<div><a href="javascript:" onclick="history.go(-1);" class="btn">返回上一页</a></div>--%>
		<%--<script>try{top.$.jBox.closeTip();}catch(e){}</script>--%>
	<%--</div>--%>
</body>
</html>
<%
out.print("<!--"+request.getAttribute("javax.servlet.forward.request_uri")+"-->");
} out = pageContext.pushBody();
%>