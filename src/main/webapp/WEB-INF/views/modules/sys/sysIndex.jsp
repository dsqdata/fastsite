<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<html>
<head>
    <title>${fns:getConfig('productName')}</title>
    <meta name="decorator" content="bootsrap3"/>
    <c:set var="tabmode" value="${empty cookie.tabmode.value ? '0' : cookie.tabmode.value}"/>
    <c:if test="${tabmode eq '1'}">
        <link rel="Stylesheet" href="${ctxStatic}/jerichotab/css/jquery.jerichotab.css"/>
        <script type="text/javascript" src="${ctxStatic}/jerichotab/js/jquery.jerichotab.js"></script>
    </c:if>

    <script src="${ctxStatic}/bootstrap/3.0.3/plugin/bower_components/layer/layer.js"></script>

    <style type="text/css">


        html {
            overflow-x: hidden !important;
            overflow-y: hidden !important;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {
            // <c:if test="${tabmode eq '1'}"> 初始化页签
            $.fn.initJerichoTab({
                renderTo: '#right', uniqueId: 'jerichotab',
                contentCss: {'height': $('#right').height() - tabTitleHeight},
                tabs: [], loadOnce: true, tabWidth: 110, titleHeight: tabTitleHeight
            });//</c:if>
            // 绑定菜单单击事件
            $("#menu a.menu").click(function () {
                // 一级菜单焦点
                $("#menu li.menu").removeClass("active");
                $(this).parent().addClass("active");
                // 左侧区域隐藏
                if ($(this).attr("target") == "mainFrame") {
                    $("#left,#openClose").hide();
//					wSizeWidth();
                    // <c:if test="${tabmode eq '1'}"> 隐藏页签
                    $(".jericho_tab").hide();
                    $("#mainFrame").show();//</c:if>
                    return true;
                }
                // 左侧区域显示
                $("#left,#openClose").show();
                if (!$("#openClose").hasClass("close")) {
                    $("#openClose").click();
                }
                // 显示二级菜单
                var menuId = "#menu-" + $(this).attr("data-id");
                if ($(menuId).length > 0) {
                    $("#left .accordion").hide();
                    $(menuId).show();
                    // 初始化点击第一个二级菜单
                    if (!$(menuId + " .accordion-body:first").hasClass('in')) {
                        $(menuId + " .accordion-heading:first a").click();
                    }
                    if (!$(menuId + " .accordion-body li:first ul:first").is(":visible")) {
                        $(menuId + " .accordion-body a:first i").click();
                    }
                    // 初始化点击第一个三级菜单
                    $(menuId + " .accordion-body li:first li:first a:first i").click();
                } else {
                    // 获取二级菜单数据
                    $.get($(this).attr("data-href"), function (data) {
                        if (data.indexOf("id=\"loginForm\"") != -1) {
                            alert('未登录或登录超时。请重新登录，谢谢！');
                            top.location = "${ctx}";
                            return false;
                        }
                        $("#left .accordion").hide();
                        $("#left").append(data);
                        // 链接去掉虚框
                        $(menuId + " a").bind("focus", function () {
                            if (this.blur) {
                                this.blur()
                            }
                            ;
                        });
                        // 二级标题
                        $(menuId + " .accordion-heading a").click(function () {
                            $(menuId + " .accordion-toggle i").removeClass('icon-chevron-down').addClass('icon-chevron-right');
                            if (!$($(this).attr('data-href')).hasClass('in')) {
                                $(this).children("i").removeClass('icon-chevron-right').addClass('icon-chevron-down');
                            }
                        });
                        // 二级内容
                        $(menuId + " .accordion-body a").click(function () {
                            $(menuId + " li").removeClass("active");
                            $(menuId + " li i").removeClass("icon-white");
                            $(this).parent().addClass("active");
                            $(this).children("i").addClass("icon-white");
                        });
                        // 展现三级
                        $(menuId + " .accordion-inner a").click(function () {
                            var href = $(this).attr("data-href");
                            if ($(href).length > 0) {
                                $(href).toggle().parent().toggle();
                                return false;
                            }
                            // <c:if test="${tabmode eq '1'}"> 打开显示页签
                            return addTab($(this)); // </c:if>
                        });
                        // 默认选中第一个菜单
                        $(menuId + " .accordion-body a:first i").click();
                        $(menuId + " .accordion-body li:first li:first a:first i").click();
                    });
                }
                // 大小宽度调整
//				wSizeWidth();
                return false;
            });
            // 初始化点击第一个一级菜单
            $("#menu a.menu:first span").click();
            // <c:if test="${tabmode eq '1'}"> 下拉菜单以选项卡方式打开
            $("#userInfo .dropdown-menu a").mouseup(function () {
                return addTab($(this), true);
            });// </c:if>
            // 鼠标移动到边界自动弹出左侧菜单
            $("#openClose").mouseover(function () {
                if ($(this).hasClass("open")) {
                    $(this).click();
                }
            });
            // 获取通知数目  <c:set var="oaNotifyRemindInterval" value="${fns:getConfig('oa.notify.remind.interval')}"/>

            function getNotifyNum() {
                $.get("${ctx}/oa/oaNotify/self/count?updateSession=0&t=" + new Date().getTime(), function (data) {
                    var num = parseFloat(data);
                    if (num > 0) {
                        $("#notifyNum,#notifyNum2").show()
                    } else {
                        $("#notifyNum,#notifyNum2").hide()
                    }
                });
            }

            getNotifyNum(); //<c:if test="${oaNotifyRemindInterval ne '' && oaNotifyRemindInterval ne '0'}">
            setInterval(getNotifyNum, ${oaNotifyRemindInterval}); //</c:if>
        });
        // <c:if test="${tabmode eq '1'}"> 添加一个页签
        function addTab($this, refresh) {
            $(".jericho_tab").show();
            $("#mainFrame").hide();
            $.fn.jerichoTab.addTab({
                tabFirer: $this,
                title: $this.text(),
                closeable: true,
                data: {
                    dataType: 'iframe',
                    dataLink: $this.attr('href')
                }
            }).loadData(refresh);
            return false;
        }// </c:if>


    </script>
</head>
<body>
<div class="fix-header" id="mainbody">
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10"/>
        </svg>
    </div>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-static-top m-b-0" id="">
            <div class="navbar-header">
                <div class="top-left-part">
                    <a class="logo" href="${ctx}/home/home" target="mainFrame">
                        <b>
                            <img src="${ctxStatic}/bootstrap/3.0.3/plugin/images/admin-logo-dark.png" alt="home" style="height: 45px;" class="light-logo"/>
                        </b>
                        <span class="hidden-xs">
                            <img src="${ctxStatic}/bootstrap/3.0.3/plugin/images/admin-text-dark.png" alt="home" style="width: 150px;" class="light-logo"/>
					    </span>
                    </a>
                </div>
                <ul class="nav navbar-top-links navbar-left">
                    <li><a href="javascript:void(0)" class="open-close waves-effect waves-light"><i class="ti-menu"></i></a>
                    </li>
                    <li><a href="${ctx}/home/home" target="mainFrame"><i class="mdi mdi-home-outline"></i></a>
                    </li>
                    <li><a href="${ctx}/oa/oaNotify/self" target="mainFrame"><i class="mdi mdi-gmail"></i>
                        <div id="notifyNum2" class="notify"><span class="heartbit"></span> <span class="point"></span>
                        </div>
                    </a></li>
                </ul>
                <ul class="nav navbar-top-links navbar-right pull-right">
                    <li class="dropdown">
                        <a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#"> <img
                                src="${ctxStatic}/bootstrap/3.0.3/plugin/images/users/varun.jpg" alt="user-img"
                                width="36" class="img-circle"><b class="hidden-xs">${fns:getUser().name}</b><span
                                class="caret"></span> </a>
                        <ul class="dropdown-menu dropdown-user animated flipInY">
                            <li><a href="${ctx}/sys/user/info" target="mainFrame"><i class="ti-user"></i>&nbsp; 个人信息</a>
                            </li>
                            <li><a href="${ctx}/sys/user/modifyPwd" target="mainFrame"><i class="icon-lock"></i>&nbsp;
                                修改密码</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="${ctx}/logout"><i class="fa fa-power-off"></i> 退出</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav slimscrollsidebar">
                <div class="sidebar-head">
                    <h3><span class="fa-fw open-close"><i class="ti-close ti-menu"></i></span> <span class="hide-menu">菜单导航</span>
                    </h3></div>
                <ul class="nav" id="side-menu">
                    <li class="user-pro">
                        <a href="#" class="waves-effect"><img
                                src="${ctxStatic}/bootstrap/3.0.3/plugin/images/users/varun.jpg" alt="user-img"
                                class="img-circle"> <span class="hide-menu"> ${fns:getUser().name}<span
                                class="fa arrow"></span></span>
                        </a>
                        <ul class="nav nav-second-level collapse" aria-expanded="false" style="height: 0px;">
                            <li><a href="${ctx}/sys/user/info" target="mainFrame"><i class="ti-user"></i>&nbsp; 个人信息</a>
                            </li>
                            <li><a href="${ctx}/sys/user/modifyPwd" target="mainFrame"><i class="icon-lock"></i>&nbsp;
                                修改密码</a></li>
                            <li><a href="${ctx}/logout"><i class="fa fa-power-off"></i> 退出</a></li>
                        </ul>
                    </li>

                    <c:forEach items="${fns:getMenuList()}" var="menu" varStatus="idxStatus">
                        <c:if test="${menu.parent.id eq '1'&&menu.isShow eq '1'}">
                            <li>
                                <c:if test="${empty menu.href}">
                                    <a href="javascript:" data-id="${menu.id}" class="waves-effect">
                                        <i class="icon-${menu.icon}" data-icon="v"></i>
                                        <span class="hide-menu"> ${menu.name} <span class="fa arrow"></span>
										<span class="label label-rouded label-inverse pull-right"></span>
									</span>
                                    </a>
                                    <ul class="nav nav-second-level">
                                        <c:forEach items="${fns:getMenuList()}" var="menu2" varStatus="idxStatus2">
                                            <c:if test="${menu2.parent.id eq menu.id}">
                                                <li><c:if test="${empty menu2.href}">
                                                    <a href="javascript:" data-id="${menu2.id}" class="waves-effect">
                                                        <i class="icon-${menu2.icon}" data-icon="v"></i>
                                                        <span class="hide-menu"> ${menu2.name} <span
                                                                class="fa arrow"></span>
														<span class="label label-rouded label-inverse pull-right"></span>
													</span>
                                                    </a>
                                                    <ul class="nav nav-third-level">
                                                        <c:forEach items="${fns:getMenuList()}" var="menu3"
                                                                   varStatus="idxStatus3">
                                                            <c:if test="${menu3.parent.id eq menu2.id}">
                                                                <li><c:if test="${empty menu3.href}">
                                                                    <a href="javascript:" data-id="${menu3.id}"
                                                                       class="waves-effect">
                                                                        <i class="icon-${menu3.icon}" data-icon="v"></i>
                                                                        <span class="hide-menu"> ${menu3.name} <span
                                                                                class="fa arrow"></span>
																		<span class="label label-rouded label-inverse pull-right"></span>
																	</span>
                                                                    </a>
                                                                </c:if>
                                                                    <c:if test="${not empty menu3.href}">
                                                                        <a href="${fn:indexOf(menu3.href, '://') eq -1 ? ctx : ''}${menu3.href}"
                                                                           data-id="${menu3.id}" target="mainFrame"
                                                                           class="waves-effect">
                                                                            <i class="icon-${menu3.icon}"
                                                                               data-icon="v"></i>
                                                                            <span class="hide-menu"> ${menu3.name}</span>
                                                                        </a>
                                                                    </c:if>
                                                                </li>
                                                            </c:if>
                                                        </c:forEach>
                                                    </ul>
                                                </c:if>
                                                    <c:if test="${not empty menu2.href}">
                                                        <a href="${fn:indexOf(menu2.href, '://') eq -1 ? ctx : ''}${menu2.href}"
                                                           data-id="${menu2.id}" target="mainFrame"
                                                           class="waves-effect">
                                                            <i class="icon-${menu2.icon}" data-icon="v"></i>
                                                            <span class="hide-menu"> ${menu2.name} </span>
                                                        </a>
                                                    </c:if>
                                                </li>
                                            </c:if>
                                        </c:forEach>
                                    </ul>
                                </c:if>
                                <c:if test="${not empty menu.href}">
                                    <a href="${fn:indexOf(menu.href, '://') eq -1 ? ctx : ''}${menu.href}"
                                       data-id="${menu.id}" target="mainFrame" class="waves-effect">
                                        <i class="icon-${menu.icon}" data-icon="v"></i>
                                        <span class="hide-menu"> ${menu.name} </span>
                                    </a>
                                </c:if>
                            </li>
                        </c:if>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <div id="page-wrapper">
            <div class="container-fluid">
                <div id="iframeWrapper" class="row" style="margin-left: -25px;margin-right: -25px;">
                    <iframe id="mainFrame" name="mainFrame" src="${ctx}/home/home"
                            style="overflow:visible;" scrolling="yes" frameborder="no" width="100%"
                            height="100%"></iframe>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    var tabTitleHeight = 33; // 页签的高度
    var headerObj = $("#header");
    var frameObj = $("#mainFrame");

    //    var frameObj = $("#left, #openClose, #right, #right iframe");


    function wSize() {
        var minHeight = 300, minWidth = 980;
        var strs = getWindowSize().toString().split(",");
        frameObj.height((strs[0] < minHeight ? minHeight : strs[0]) - headerObj.height() - 58);
    }

    var getWindowSize = function () {
        return ["Height", "Width"].map(function (name) {
            return window["inner" + name] ||
                document.compatMode === "CSS1Compat" && document.documentElement["client" + name] || document.body["client" + name];
        });
    };

    $(window).resize(function () {
        wSize();
    });
    wSize(); // 在主窗体中定义，设置调整目标
</script>
</body>
</html>