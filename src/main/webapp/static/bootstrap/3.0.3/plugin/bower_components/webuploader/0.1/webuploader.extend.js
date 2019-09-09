(function (b) {
    var a = function (k, p) {
        var v = b.extend(true, {}, b.fn.webuploader.defaults, k), z = v.id, l = "", y = v.uploadType == "image",
            A = b("#" + z + "Uploader"), o = A.find("#" + z + "fileLists");
        var u = function (N, P) {
            if (N) {
                v.i18n = v.i18n || {};
                var O = v.i18n[N];
                if (!(O && O != "")) {
                    O = N
                }
                if (P) {
                    for (var L = 1; L < arguments.length; L++) {
                        var M = new RegExp("\\{" + (L - 1) + "\\}", "gm");
                        O = O.replace(M, arguments[L])
                    }
                }
                return O
            }
            return N
        };
        if (y) {
            o.appendTo(A.find(".queueList"))
        }
        var H = A.find(".statusBar"), e = H.find(".info"), d = A.find(".uploadBtn"), n = A.find(".placeholder"),
            x = H.find(".progress").hide(), I = 0, w = 0, q = window.devicePixelRatio || 1, s = 110 * q, c = 110 * q,
            m = "pedding", J = {}, K = (function () {
                var L;
                try {
                    L = navigator.plugins["Shockwave Flash"];
                    L = L.description
                } catch (M) {
                    try {
                        L = new ActiveXObject("ShockwaveFlash.ShockwaveFlash").GetVariable("$version")
                    } catch (N) {
                        L = "0.0"
                    }
                }
                L = L.match(/\d+/g);
                return parseFloat(L[0] + "." + L[1], 10)
            })(), F = (function () {
                var L = document.createElement("p").style,
                    M = "transition" in L || "WebkitTransition" in L || "MozTransition" in L || "msTransition" in L || "OTransition" in L;
                L = null;
                return M
            })(), G = [], j = [], D = [], i = [];
        if (WebUploader.browser.ie && !WebUploader.Uploader.support("flash")) {
            if (K) {
                (function (L) {
                    window.expressinstallcallback = function (O) {
                        switch (O) {
                            case"Download.Cancelled":
                                alert(u("安装失败！"));
                                break;
                            case"Download.Failed":
                                alert(u("安装失败！"));
                                break;
                            default:
                                alert(u("安装已成功，请刷新！"));
                                break
                        }
                        delete window.expressinstallcallback
                    };
                    var N = ctxStatic + "/bootstrap/3.0.3/plugin/bower_components/webuploader/0.1/expressInstall.swf";
                    var M = '<object type="application/x-shockwave-flash" data="' + N + '" ';
                    if (WebUploader.browser.ie) {
                        M += 'classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" '
                    }
                    M += 'width="100%" height="100%" style="outline:0"><param name="movie" value="' + N + '" /><param name="wmode" value="transparent" /><param name="allowscriptaccess" value="always" /></object>';
                    L.html(M)
                })(A)
            } else {
                A.html('<a href="http://www.adobe.com/go/getflashplayer" target="_blank" border="0"><img alt="get flash player" src="http://www.adobe.com/macromedia/style_guide/images/160x41_Get_Flash_Player.jpg" /></a>')
            }
            return
        } else {
            if (!WebUploader.Uploader.support()) {
                alertx(u("文件上传组件不支持您的浏览器，请使用高版本浏览器！"));
                return
            }
        }
        var uploaderConfig = {
            disableGlobalDnd: true,
            swf: ctxStatic + "/bootstrap/3.0.3/plugin/bower_components/webuploader/0.1/Uploader.swf",
            server: v.service.upload,
            id: z,
            imageFlag: y,
            filePathInputId: v.filePathInputId,
            fileNameInputId: v.fileNameInputId,
            formData: {
                bizKey: v.bizKey,
                bizType: v.bizType,
                uploadType: v.uploadType,
                imageMaxWidth: v.imageMaxWidth,
                imageMaxHeight: v.imageMaxHeight,
                chunkSize: v.chunkSize,
                __ajax: "json"
            },
            chunked: v.chunked,
            chunkSize: v.chunkSize,
            threads: v.threads,
            fileNumLimit: v.maxUploadNum,
            fileSingleSizeLimit: v.maxFileSize,
            compress: false
        };
        b.each(v.extendParams, function (L, M) {
            uploaderConfig.formData["extend[" + L + "]"] = M
        });
        if (!v.readonly) {
            uploaderConfig = b.extend(true, {}, {
                pick: {
                    id: "#" + z + "filePicker",
                    label: u("点击选择文件"),
                    multiple: v.maxUploadNum > 1
                }, dnd: "#" + z + "Uploader .queueList", paste: "#" + z + "Uploader .queueList"
            }, uploaderConfig);
            if (v.uploadType == "image") {
                uploaderConfig.pick.label = u("点击选择图片");
                uploaderConfig.accept = {
                    title: "Images",
                    extensions: v.imageAllowSuffixes.replace(/\./g, ""),
                    mimeTypes: "image/*"
                }
            } else {
                if (v.uploadType == "media") {
                    uploaderConfig.pick.label = u("点击选择视频");
                    uploaderConfig.accept = {
                        title: "Medias",
                        extensions: v.mediaAllowSuffixes.replace(/\./g, ""),
                        mimeTypes: "*/*"
                    }
                } else {
                    if (v.uploadType == "file") {
                        uploaderConfig.accept = {
                            title: "Files",
                            extensions: v.fileAllowSuffixes.replace(/\./g, ""),
                            mimeTypes: "*/*"
                        }
                    } else {
                        uploaderConfig.accept = {
                            title: "All",
                            extensions: (v.imageAllowSuffixes + "," + v.mediaAllowSuffixes + "," + v.fileAllowSuffixes).replace(/\./g, ""),
                            mimeTypes: "*/*"
                        }
                    }
                }
            }
        }
        var uploader = WebUploader.create(uploaderConfig);
        if (!window.webuploader) {
            window.webuploader = []
        }
        window.webuploader.push(uploader);
        p.uploader = uploader;
        p.options = v;
        if (!window.webuploaderRefresh) {
            window.webuploaderRefresh = function () {
                setTimeout(function () {
                    for (var L in window.webuploader) {
                        window.webuploader[L].refresh()
                    }
                }, 200)
            }
        }
        uploader.on("dndAccept", function (N) {
            var M = false, L = N.length, O = 0, P = "text/plain;application/javascript ";
            for (; O < L; O++) {
                if (~P.indexOf(N[O].type)) {
                    M = true;
                    break
                }
            }
            return !M
        });
        uploader.addButton({id: "#" + z + "filePicker2", label: u("继续添加")});
        if (!v.isLazy) {
            d.hide()
        }

        function E(N, L, O) {
            if (v.bizType != "") {
                G.push(N);
                b("#" + z).val(G.join(",")).change();
                try {
                    b("#" + z).resetValid()
                } catch (M) {
                }
            }
            if (v.returnPath) {
                D.push(L);
                i.push(O);
                b("#" + v.filePathInputId).val(D.join("|")).change();
                b("#" + v.fileNameInputId).val(i.join("|")).change();
                try {
                    b("#" + v.filePathInputId).resetValid()
                } catch (M) {
                }
                try {
                    b("#" + v.fileNameInputId).resetValid()
                } catch (M) {
                }
            }
        }

        function h(N) {
            var O = N.attr("fileUploadId");
            if (O && O != null) {
                if (v.bizType != "") {
                    G.splice(b.inArray(O, G), 1);
                    j.push(O);
                    b("#" + z).val(G.join(","));
                    b("#" + z + "__del").val(j.join(","));
                    try {
                        b("#" + z).resetValid()
                    } catch (M) {
                    }
                    try {
                        b("#" + z + "__del").resetValid()
                    } catch (M) {
                    }
                }
                if (v.returnPath) {
                    var L = N.attr("fileUrl");
                    var P = N.attr("fileName");
                    D.splice(b.inArray(L, D), 1);
                    i.splice(b.inArray(P, i), 1);
                    b("#" + v.filePathInputId).val(D.join("|"));
                    b("#" + v.fileNameInputId).val(i.join("|"));
                    try {
                        b("#" + v.filePathInputId).resetValid()
                    } catch (M) {
                    }
                    try {
                        b("#" + v.fileNameInputId).resetValid()
                    } catch (M) {
                    }
                }
            }
        }

        function f() {
            var M = "", L = uploader.getStats();
            if (m === "confirm" && L.uploadFailNum) {
                M = L.uploadFailNum + u(y ? "张图片" : "个文件") + u("上传失败") + ', <a class="retry" href="#">' + u("重新上传") + "</a>" + u("或") + '<a class="ignore" href="#">' + u("忽略") + "</a>"
            } else {
                if (m === "confirm" || m === "ready") {
                    M = u("总共") + I + u(y ? "张图片" : "个文件") + (w <= 0 ? "" : "（" + WebUploader.formatSize(w) + "）")
                } else {
                    M = u("已上传") + I + u(y ? "张图片" : "个文件") + (w <= 0 ? "" : "（" + WebUploader.formatSize(w) + "）");
                    if (L.uploadFailNum) {
                        M += ", " + u("失败{0}个", L.uploadFailNum)
                    }
                }
            }
            e.html(M);
            if (I < v.maxUploadNum) {
                b("#" + z + "filePicker2").show()
            } else {
                b("#" + z + "filePicker2").hide()
            }
            window.webuploaderRefresh()
        }

        function r() {
            var L = 0, O = 0, N = 0, M = x.children();
            b.each(J, function (Q, P) {
                N += P[0];
                L += P[0] * P[1]
            });
            O = N ? L / N : 0;
            M.eq(0).text(Math.round(O * 100) + "%");
            M.eq(1).css("width", Math.round(O * 100) + "%");
            f()
        }

        uploader.on("uploadProgress", function (M, L) {
            var N;
            if (y) {
                N = b("#" + z + M.id), $percent = N.find(".progress span");
                $percent.css("width", L * 100 + "%")
            } else {
                N = b("#" + z + M.id).find(".prog_bar"), $percent = N.find(".progress-bar");
                $percent.css("width", Math.round(L * 100) + "%");
                $percent.text(Math.round(L * 100) + "%")
            }
            if (typeof J[M.id] == "undefined") {
                J[M.id] = [M.size, 0]
            }
            J[M.id][1] = L;
            r()
        });

        function B(N) {
            var M, L;
            if (N === m) {
                return
            }
            d.removeClass("state-" + m);
            d.addClass("state-" + N);
            m = N;
            switch (m) {
                case"pedding":
                    n.removeClass("element-invisible");
                    o.hide();
                    H.addClass("element-invisible");
                    break;
                case"ready":
                    n.addClass("element-invisible");
                    b("#" + z + "filePicker2").removeClass("element-invisible");
                    o.show();
                    H.removeClass("element-invisible");
                    break;
                case"uploading":
                    b("#" + z + "filePicker2").addClass("element-invisible");
                    x.show();
                    d.text(u("暂停上传"));
                    break;
                case"paused":
                    x.show();
                    d.text(u("继续上传"));
                    break;
                case"confirm":
                    x.hide();
                    b("#" + z + "filePicker2").removeClass("element-invisible");
                    d.text(u("开始上传"));
                    L = uploader.getStats();
                    if (L.successNum && !L.uploadFailNum) {
                        B("finish");
                        return
                    }
                    break;
                case"finish":
                    L = uploader.getStats();
                    if (L.successNum) {
                    } else {
                        m = "done"
                    }
                    break
            }
            f()
        }

        function g(L, M) {
            var N = "";
            switch (M) {
                case"exceed_size":
                    N = u("文件大小超出");
                    break;
                case"interrupt":
                    N = u("文件传输中断");
                    break;
                case"http":
                    N = u("HTTP请求错误");
                    break;
                case"not_allow_type":
                    N = u("文件格式不允许");
                    break;
                default:
                    N = u("上传失败，请重试");
                    break
            }
            if (N != null) {
                if (y) {
                    L.text(N)
                } else {
                    L.html('<span class="label label-sm label-danger">' + N + "</span>")
                }
            }
        }

        uploader.on("fileQueued", function (P) {
            if (I > v.maxUploadNum) {
                alertx(u("您只能上传{0}个文件", v.maxUploadNum));
                return
            }
            I++;
            w += P.size;
            if (I === 1 && !v.readonly) {
                H.show()
            }
            if (y) {
                var Q = b('<li id="' + z + P.id + '"><p class="title">' + P.name + '</p><p class="imgWrap"></p><p class="progress"><span></span></p><p class="error"></p><div class="file-panel"><span class="cancel">' + u("删除") + "</span></div></li>"),
                    N = Q.find("div.file-panel"), M = Q.find("p.progress-bar"), L = Q.find("p.imgWrap"),
                    O = Q.find("p.error");
                if (P.getStatus() === "invalid") {
                    g(O, P.statusText)
                } else {
                    O.text(u("等待上传"));
                    L.text(u("预览生成中"));
                    uploader.makeThumb(P, function (S, T) {
                        if (S) {
                            L.text(u("不能预览"));
                            return
                        }
                        var R = b('<img src="' + T + '">');
                        L.empty().append(R)
                    }, s, c);
                    J[P.id] = [P.size, 0];
                    P.rotation = 0
                }
                P.on("statuschange", function (S, R) {
                    if (R === "progress") {
                        M.hide().width(0)
                    }
                    if (S === "error" || S === "invalid") {
                        g(O, P.statusText);
                        J[P.id][1] = 1
                    } else {
                        if (S === "interrupt") {
                            g(O, "interrupt")
                        } else {
                            if (S === "queued") {
                                J[P.id][1] = 0
                            } else {
                                if (S === "progress") {
                                    O.text(u("正在上传") + "...");
                                    M.css("display", "block")
                                }
                            }
                        }
                    }
                    Q.removeClass("state-" + R).addClass("state-" + S)
                });
                Q.on("mouseenter", function () {
                    N.stop().animate({height: 30})
                });
                Q.on("mouseleave", function () {
                    N.stop().animate({height: 0})
                });
                N.on("click", "span", function () {
                    var T = b(this);
                    switch (T.index()) {
                        case 0:
                            var R = b(this);
                            // confirm(u("确定删除该图片吗？"), function (U) {
                                h(R);
                                uploader.removeFile(P)
                            // });
                            return;
                        case 1:
                            P.rotation += 90;
                            break;
                        case 2:
                            P.rotation -= 90;
                            break
                    }
                    if (F) {
                        var S = "rotate(" + P.rotation + "deg)";
                        L.css({"-webkit-transform": S, "-mos-transform": S, "-o-transform": S, transform: S})
                    } else {
                        L.css("filter", "progid:DXImageTransform.Microsoft.BasicImage(rotation=" + (~~((P.rotation / 90) % 4 + 4) % 4) + ")")
                    }
                });
                Q.appendTo(o)
            } else {
                var Q = b('<tr id="' + z + P.id + '" class="template-upload"><td class="name">' + P.name + '</td><td class="size">' + WebUploader.formatSize(P.size) + '</td><td class="prog_bar"><p class="progress"><span class="progress-bar">0%</span></p></td><td class="msg"></td><td class="btncancel"><a class="btn btn-default btn-xs yellow"><i class="fa fa-ban"></i> ' + u("取消") + " </a></td></tr>"),
                    N = Q.find("td.btncancel"), M = Q.find("td.progress-bar"), O = Q.find("td.msg");
                if (P.getStatus() === "invalid") {
                    g(O, P.statusText)
                } else {
                    O.text(u("等待上传"));
                    J[P.id] = [P.size, 0];
                    P.rotation = 0
                }
                P.on("statuschange", function (S, R) {
                    if (R === "progress") {
                    }
                    if (S === "error" || S === "invalid") {
                        g(O, P.statusText);
                        J[P.id][1] = 1;
                        M.text("0%").css("width", "0%")
                    } else {
                        if (S === "interrupt") {
                            g(O, "interrupt");
                            M.text("0%").css("width", "0%")
                        } else {
                            if (S === "progress") {
                                O.text(u("正在上传") + "...");
                                M.css("display", "block")
                            } else {
                                if (S === "complete") {
                                }
                            }
                        }
                    }
                    Q.removeClass("state-" + R).addClass("state-" + S)
                });
                N.on("click", "a", function () {
                    var S = b(this);
                    switch (S.index()) {
                        case 0:
                            uploader.removeFile(P);
                            return;
                        case 1:
                            var R = b(this);
                            // confirm(u("确定删除该文件吗？"), function (T) {
                                h(R);
                                uploader.removeFile(P)
                            // });
                            return
                    }
                });
                Q.appendTo(o)
            }
            B("ready");
            r();
            if (!v.isLazy) {
                uploader.upload()
            }
        });

        function t(L) {
            I--;
            if (!I) {
                B("pedding")
            }
            w -= L.size;
            delete J[L.id];
            r();
            if (y) {
                b("#" + z + L.id).off().find(".file-panel").off().end().remove()
            } else {
                b("#" + z + L.id).off().find(".btncancel").off().end().remove()
            }
        }

        uploader.on("fileDequeued", function (L) {
            t(L)
        });
        uploader.on("uploadAccept", function (R, L, P) {//R 请求参数  L 返回结果 P 回调函数
            var S = b("#" + z + R.file.id);
            try {
                var O = (L._raw || L), M = JSON.parse(O);
                if (M.result == "false") {
                    P(M.code)
                }
                if (y) {
                    b('<p class="error" title="' + M.message + '">' + M.message + "</p>").appendTo(S)
                } else {
                    var N = (M.result == "true") ? "success" : "danger";
                    S.find(".msg").html('<span class="label label-sm label-' + N + '" title="' + M.message + '">' + M.message + "</span>")
                }
            } catch (Q) {
                if (y) {
                    b('<p class="error">' + u("服务器返回出错") + "</p>").appendTo(S)
                } else {
                    S.find(".msg").html('<span class="label label-sm label-danger">' + u("服务器返回出错") + "</span>")
                }
            }
        });
        uploader.on("uploadError", function (L, M) {
            if (L.fileUpload) {
                uploader.removeFile(L);
                p.refreshFileList([L.fileUpload], false)
            }
        });
        uploader.on("uploadSuccess", function (M, R) {
            var L = b("#" + z + M.id).find(".btncancel");
            var P = b("#" + z + M.id).find(".file-panel");
            var T = b("#" + z + M.id).find(".progress-bar");
            try {
                var S = (R._raw || R), O = JSON.parse(S);
                if (O.result == "true") {
                    var U = O.fileUpload,
                        // V = (js.startWith(U.fileUrl, "/userfiles") || js.startWith(U.fileUrl, "http://") || js.startWith(U.fileUrl, "https://") ? "" : ctxPath) + U.fileUrl,
                        V = U.fileUrl,
                        N = (v.returnPath ? V : v.service.download + U.id);
                    if (y) {//如果是图片
                        P.find(".cancel").attr("fileUploadId", U.id).attr("fileUrl", V).attr("fileName", U.fileName).attr("fileSize", U.fileSize)
                    } else {
                        L.find("a").hide();
                        b('<a class="btn btn-danger btn-xs" fileUploadId="' + U.id + '" fileUrl="' + V + '" fileName="' + U.fileName + '" fileSize="' + U.fileSize + '"><i class="fa fa-trash-o"></i> ' + u("删除") + '</a> &nbsp;<a class="btn btn-info btn-xs" target="_blank" href="' + N + '" ><i class="fa fa-download"></i> ' + u("下载") + "</a>").appendTo(L)
                    }
                    E(U.id, V, U.fileName)
                } else {
                    T.css("width", "0%").text("0%")
                }
            } catch (Q) {
                T.css("width", "0%").text("0%");
                error(Q)
            }
            f()
        });
        uploader.on("error", function (L) {
            var M = "";
            switch (L) {
                case"Q_TYPE_DENIED":
                    M = u("文件类型不对");
                    break;
                case"F_EXCEED_SIZE":
                    M = u("文件大小超出");
                    break;
                case"F_DUPLICATE":
                    M = u("不要选择重复文件");
                    break;
                case"Q_EXCEED_NUM_LIMIT":
                    M = u("您只能上传{0}个文件", v.maxUploadNum);
                    break;
                case"Q_EXCEED_SIZE_LIMIT":
                    M = u("文件大小超出");
                    break;
                default:
                    M = u("上传失败，请重试");
                    break
            }
            alertx(M)
        });
        uploader.on("all", function (N, M) {
            var L;
            switch (N) {
                case"uploadFinished":
                    B("confirm");
                    break;
                case"startUpload":
                    B("uploading");
                    break;
                case"stopUpload":
                    B("paused");
                    break
            }
        });
        d.on("click", function () {
            if (b(this).hasClass("disabled")) {
                return false
            }
            if (m === "ready") {
                uploader.upload()
            } else {
                if (m === "paused") {
                    uploader.upload()
                } else {
                    if (m === "uploading") {
                        uploader.stop()
                    }
                }
            }
        });
        e.on("click", ".retry", function () {
            uploader.retry();
            return false
        });
        e.on("click", ".ignore", function () {
            var M, L, N = uploader.getFiles("error");
            for (L = 0; M = N[L++];) {
                uploader.removeFile(M)
            }
            B("finish");
            r();
            return false
        });
        p.refreshFileList = function (P, M) {
            if (M) {
                o.empty();
                I = 0;
                w = 0;
                G = [];
                D = [];
                i = []
            }
            if (P && P.length > 0) {
                for (var O = 0; O < P.length; O++) {
                    var N = P[O],
                        // L = (js.startWith(N.fileUrl, ctxPath) || js.startWith(N.fileUrl, "http://") || js.startWith(N.fileUrl, "https://") ? "" : ctxPath) + N.fileUrl,
                        L =  N.fileUrl,
                        Q = (v.returnPath ? L : v.service.download + N.id);
                    if (y) {
                        $li = b('<li id="' + N.id + '"><p class="title"><a target="_blank" href="' + Q + '">' + N.fileName + '</a></p><p class="imgWrap"><img src="' + L + '"/></p><p class="progress"><span></span></p><div class="file-panel"><span class="cancel ' + (!v.readonly ? "" : "hide") + '" fileUploadId="' + N.id + '" fileUrl="' + L + '" fileName="' + N.fileName + '" fileSize="' + N.fileEntity.fileSize + '">' + u("删除") + "</span></div>" + (N.message ? N.message : "") + "</li>"), $li.on("click", ".imgWrap img", function () {
                            var S = b(this), U = S.attr("src"), V = "#outerdiv", T = "#innerdiv", R = "#bigimg";
                            if (b(V).length == 0) {
                                b('<div id="outerdiv" style="position:fixed;top:0;left:0;background:rgba(0,0,0,0.7);z-index:99999;width:100%;height:100%;display:none;"><div id="innerdiv" style="position:fixed;"><img id="bigimg" style="border:2px solid #fff;" src="" /></div></div>').appendTo(document.body)
                            }
                            b(R).attr("src", U);
                            b("<img/>").attr("src", U).load(function () {
                                var W = b(window).width();
                                var aa = b(window).height();
                                var ad = this.width;
                                var Z = this.height;
                                var ab, ac, X = 0.8;
                                if (Z > aa * X) {
                                    ac = aa * X;
                                    ab = ac / Z * ad;
                                    if (ab > W * X) {
                                        ab = W * X
                                    }
                                } else {
                                    if (ad > W * X) {
                                        ab = W * X;
                                        ac = ab / ad * Z
                                    } else {
                                        ab = ad;
                                        ac = Z
                                    }
                                }
                                b(R).css("width", ab);
                                var ae = (W - ab) / 2;
                                var Y = (aa - ac) / 2;
                                b(T).css({top: Y, left: ae});
                                b(V).fadeIn("fast")
                            });
                            b(V).click(function () {
                                b(this).fadeOut("fast")
                            })
                        });
                        $li.on("mouseenter", function () {
                            var R = b(this).index();
                            o.find(".file-panel").eq(R).stop().animate({height: 30})
                        });
                        $li.on("mouseleave", function () {
                            var R = b(this).index();
                            o.find(".file-panel").eq(R).stop().animate({height: 0})
                        });
                        $li.on("click", "span", function () {
                            var V = b(this), W = b(this).closest("li"), S = b(this).parent().data("fileRotation");
                            if (!S) {
                                S = 0
                            }
                            switch (V.index()) {
                                case 0:
                                    if (!v.readonly) {
                                        var V = b(this);
                                        // confirm(u("确定删除该图片吗？"), function (Y) {
                                            h(V);
                                            if (v.returnPath) {
                                                t({id: 0, size: 0})
                                            } else {
                                                var X = V.attr("fileSize");
                                                t({id: 0, size: X})
                                            }
                                            W.remove()
                                        // })
                                    }
                                    return;
                                case 1:
                                    S += 90;
                                    break;
                                case 2:
                                    S -= 90;
                                    break
                            }
                            var R = b(this).parent().parent().index();
                            var U = o.find(".imgWrap :eq(" + R + ")");
                            if (F) {
                                var T = "rotate(" + S + "deg)";
                                U.css({"-webkit-transform": T, "-mos-transform": T, "-o-transform": T, transform: T})
                            } else {
                                U.css("filter", "progid:DXImageTransform.Microsoft.BasicImage(rotation=" + (~~((S / 90) % 4 + 4) % 4) + ")")
                            }
                            b(this).parent().data("fileRotation", S)
                        })
                    } else {
                        $li = b('<tr id="' + N.id + '"  class="template-upload"><td class="name">' + N.fileName + '</td><td class="size">' + (v.returnPath ? "" : WebUploader.formatSize(N.fileEntity.fileSize)) + '</td><td class="prog_bar">' + (N.progress ? N.progress : (N.createByName ? N.createByName : "")) + '</td><td class="msg">' + (N.message ? N.message : (N.createDate ? N.createDate : "")) + '</td><td class="btncancel">' + (v.preview != "" ? '<a class="btn btn-default btn-xs preview" herf="javascript:void(0);" previewUrl="' + L + "?fileName=" + N.fileName + "&preview=" + v.preview + '"><i class="fa fa-eye"></i> ' + u("预览") + "</a> &nbsp;" : "") + '<a class="btn btn-danger btn-xs delete ' + (!v.readonly ? "" : "hide") + '" fileUploadId="' + N.id + '" fileUrl="' + L + '" fileName="' + N.fileName + '" fileSize="' + N.fileEntity.fileSize + '"><i class="fa fa-trash-o"></i> ' + u("删除") + " </a>" + (!v.readonly ? " &nbsp;" : "") + '<a class="btn btn-info btn-xs blue" target="_blank" href="' + Q + '"><i class="fa fa-download"></i> ' + u("下载") + " </a></td></tr>");
                        $li.on("click", "a.preview", function () {
                            js.windowOpen(b(this).attr("previewUrl"))
                        });
                        if (!v.readonly) {
                            $li.on("click", "a.delete", function () {
                                var S = b(this), R = b(this).closest("tr");
                                confirm(u("确定删除该文件吗？"), function (U) {
                                    h(S);
                                    if (v.returnPath) {
                                        t({id: 0, size: 0})
                                    } else {
                                        var T = S.attr("fileSize");
                                        t({id: 0, size: 0})
                                    }
                                    R.remove()
                                });
                                return
                            })
                        }
                    }
                    I++;
                    w += N.fileEntity.fileSize;
                    o.append($li);
                    E(N.id, L, N.fileName)
                }
            }
            if (G.length > 0 || D.length > 0) {
                if (!v.readonly) {
                    H.show()
                }
                B("ready")
            }
            r()
        };
        p.refreshFileListByPath = function () {
            var N = [], P = [], O, L = b("#" + v.filePathInputId).val(), M = b("#" + v.fileNameInputId).val();
            if (L != undefined && L != "") {
                P = L.split("|")
            }
            if (M != undefined && M != "") {
                O = M.split("|")
            }
            if (O == undefined || O.length != P.length) {
                O = P
            }
            b.each(P, function (Q, T) {
                var S = O[Q].split("/");
                var R = S[S.length - 1];
                N.push({
                    id: String(Math.random()).replace(".", ""),
                    fileName: R,
                    fileUrl: T,
                    fileEntity: {fileSize: 0},
                })
            });
            p.refreshFileList(N, true)
        };
        p.refreshFileListByBizData = function () {
            b.ajax({
                url: v.service.fileList + (v.service.fileList.indexOf("?") == -1 ? "?" : "&") + "__t=" + new Date().getTime(),
                data: {bizKey: v.bizKey, bizType: v.bizType},
                xhrFields: {withCredentials: true},
                dataType: "json",
                success: function (L) {
                    if (!(L.result == "false")) {
                        p.refreshFileList(L, true)
                    }
                }
            })
        };
        if (v.bizKey != "" && v.bizType != "") {
            p.refreshFileListByBizData()
        } else {
            if (v.returnPath) {
                p.refreshFileListByPath()
            }
        }
        return p
    };
    if (!window.webuploaderRegister) {
        window.webuploaderRegister = true;
        WebUploader.Uploader.register(
            {
                "before-send": "beforeSend",
                "after-send-file": "afterSendFile"
            },
            {
                beforeSendFile: function (file) {
                    var d = this, f = d.owner, c = WebUploader.Deferred();
                    f.md5File(file, 0, 10 * 1024 * 1024).then(function (val) {
                        file.md5 = val;
                        b.ajax({
                            type: "POST",
                            url: f.options.server,
                            data: {fileMd5: val, fileName: file.name},
                            cache: false,
                            async: false,
                            timeout: 10000,
                            dataType: "json",
                            success: function (h) {
                                if (h.result == "true") {
                                    file.fileUpload = h.fileUpload;
                                    if (f.options.imageFlag) {
                                        file.fileUpload.message = '<p class="error" title="' + h.message + '">' + h.message + "</p>"
                                    } else {
                                        file.fileUpload.progress = '<p class="progress"><span class="progress-bar" style="display:block;width:100%;">100%</span></p>';
                                        file.fileUpload.message = '<span class="label label-sm label-success" title="' + h.message + '">' + h.message + "</span>"
                                    }
                                    f.skipFile(file);
                                    c.reject()
                                } else {
                                    file.fileUploadId = h.fileUploadId;
                                    file.fileEntityId = h.fileEntityId;
                                    c.resolve()
                                }
                            }
                        })
                    });
                    return c.promise()
                },
                beforeSend: function (f) {
                    var c = this, e = c.owner, d = f.file;
                    e.options.formData.fileMd5 = d.md5;
                    e.options.formData.fileName = d.name;
                    e.options.formData.fileUploadId = d.fileUploadId;
                    e.options.formData.fileEntityId = d.fileEntityId
                },
                afterSendFile: function (c) {
                }
            })
    }
    b.fn.webuploader = function (d, f) {
        var e;
        var c = this.each(function () {
            var i = b(this);
            var h = i.data("webuploader");
            var g = typeof d === "object" && d;
            if (!h) {
                h = new a(g, i);
                i.data("webuploader", h)
            }
            if (typeof d === "string" && typeof h[d] === "function") {
                if (f instanceof Array) {
                    e = h[d].apply(h, f)
                } else {
                    e = h[d](f)
                }
            }
        });
        return (e === undefined) ? c : e
    };
    b.fn.webuploader.defaults = {
        id: "",
        bizKey: "",
        bizType: "",
        readonly: false,
        returnPath: true,
        filePathInputId: "",
        fileNameInputId: "",
        uploadType: "",
        imageAllowSuffixes: ".gif,.bmp,.jpeg,.jpg,.ico,.png,.tif,.tiff,",
        mediaAllowSuffixes: ".flv,.swf,.mkv,webm,.mid,.mov,.mp3,.mp4,.m4v,.mpc,.mpeg,.mpg,.swf,.wav,.wma,.wmv,.avi,.rm,.rmi,.rmvb,.aiff,.asf,.ogg,.ogv,",
        fileAllowSuffixes: ".doc,.docx,.rtf,.xls,.xlsx,.csv,.ppt,.pptx,.pdf,.vsd,.txt,.md,.xml,.rar,.zip,7z,.tar,.tgz,.jar,.gz,.gzip,.bz2,.cab,.iso,",
        maxFileSize: 100 * 1024 * 1024,
        maxUploadNum: 300,
        imageMaxWidth: 1024,
        imageMaxHeight: 768,
        service: {
            upload: ctxAdmin + "/sys/file/fileUpload",
            download: ctxAdmin + "/sys/file/download/",
            fileList: ctxAdmin + "/sys/file/fileList"
        },
        extendParams: {},
        chunked: false,
        chunkSize: 10 * 1024 * 1024,
        threads: 1,
        isLazy: false,
        preview: ""
    }
})(jQuery);