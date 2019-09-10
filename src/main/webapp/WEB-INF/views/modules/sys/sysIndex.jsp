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

        .logo b{
            float: left;
            padding-left: 0px;
        }

        .hide-menu .arrow{
            top: 17px!important;
        }
        .user-pro .arrow{
            top: 23px!important;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {

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

            //全屏
            $("#fullScreen").on("click",function(){
                fullScreen();
            })
            //退出全屏
            $("#exitFullScreen").on("click",function(){
                exitFullscreen();
            })
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

        //fullScreen()和exitScreen()有多种实现方式，此处只使用了其中一种
        //全屏
        function fullScreen() {
            var element = document.documentElement;
            if (element.requestFullscreen) {
                element.requestFullscreen();
            } else if (element.msRequestFullscreen) {
                element.msRequestFullscreen();
            } else if (element.mozRequestFullScreen) {
                element.mozRequestFullScreen();
            } else if (element.webkitRequestFullscreen) {
                element.webkitRequestFullscreen();
            }
        }

        //退出全屏
        function exitFullscreen() {
            if (document.exitFullscreen) {
                document.exitFullscreen();
            } else if (document.msExitFullscreen) {
                document.msExitFullscreen();
            } else if (document.mozCancelFullScreen) {
                document.mozCancelFullScreen();
            } else if (document.webkitExitFullscreen) {
                document.webkitExitFullscreen();
            }
        }

        //监听window是否全屏，并进行相应的操作,支持esc键退出
        window.onresize = function() {
            var isFull=!!(document.webkitIsFullScreen || document.mozFullScreen ||
                document.msFullscreenElement || document.fullscreenElement
            );//!document.webkitIsFullScreen都为true。因此用!!
            if (isFull==false) {
                $("#exitFullScreen").css("display","none");
                $("#fullScreen").css("display","");
            }else{
                $("#exitFullScreen").css("display","");
                $("#fullScreen").css("display","none");
            }
        }

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
                            <img src="${ctxStatic}/bootstrap/3.0.3/plugin/images/admin-logo-dark.png" alt="home" style="height: 45px;"/>
                        </b>
                        <span class="hidden-xs">
                            <img src="${ctxStatic}/bootstrap/3.0.3/plugin/images/admin-text-dark.png" alt="home" style="width: 150px;"/>
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
                    <%--<li class="in">--%>
                        <%--<form role="search" class="app-search hidden-sm hidden-xs m-r-10">--%>
                            <%--<input type="text" placeholder="Search..." class="form-control"> <a href="" class="active"><i class="fa fa-search"></i></a> </form>--%>
                    <%--</li>--%>
                    <li>
                        <a href="javascript:void(0)" id="fullScreen" style="font-size: 15px;" title="全屏"><i class="fa fa-arrows-alt"></i></a>
                    </li>
                    <li>
                        <a href="javascript:void(0)" id="exitFullScreen" style="font-size: 15px;"><i class="fa fa-compress"></i></a>
                    </li>
                    <li>
                        <%--<button class="right-side-toggle waves-effect waves-light btn-info btn-circle pull-right">--%>
                            <%--<i class="ti-settings text-white"></i></button>--%>

                        <a href="javascript:void(0)" class="right-side-toggle" style="font-size: 16px;" title="更换皮肤"><i class="fa fa-sliders "></i></a>
                    </li>
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
        <div class="right-sidebar">
            <div class="slimscrollright">
                <div class="rpanel-title"> 个性化设置 <span><i class="ti-close right-side-toggle"></i></span> </div>
                <div class="r-panel-body">
                    <ul id="themecolors" class="m-t-20">
                        <li><b>冷色风格</b></li>
                        <li><a href="javascript:void(0)" data-theme="default" class="default-theme">1</a></li>
                        <li><a href="javascript:void(0)" data-theme="green" class="green-theme">2</a></li>
                        <li><a href="javascript:void(0)" data-theme="gray" class="yellow-theme">3</a></li>
                        <li><a href="javascript:void(0)" data-theme="blue" class="blue-theme">4</a></li>
                        <li><a href="javascript:void(0)" data-theme="purple" class="purple-theme">5</a></li>
                        <li><a href="javascript:void(0)" data-theme="megna" class="megna-theme">6</a></li>
                        <li class="full-width"><b>暖色风格</b></li>

                        <li><a href="javascript:void(0)" data-theme="default-dark" class="default-dark-theme">7</a></li>
                        <li><a href="javascript:void(0)" data-theme="green-dark" class="green-dark-theme">8</a></li>
                        <li><a href="javascript:void(0)" data-theme="gray-dark" class="yellow-dark-theme">9</a></li>
                        <li><a href="javascript:void(0)" data-theme="blue-dark" class="blue-dark-theme">10</a></li>
                        <li><a href="javascript:void(0)" data-theme="purple-dark" class="purple-dark-theme">11</a></li>
                        <li><a href="javascript:void(0)" data-theme="megna-dark" class="megna-dark-theme working">12</a></li>
                    </ul>
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