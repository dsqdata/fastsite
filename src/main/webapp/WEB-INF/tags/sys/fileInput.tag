<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<%@ attribute name="id" type="java.lang.String" required="true" description="编号"%>
<%@ attribute name="uploadUrl" type="java.lang.String" required="true" description="上传文件路径"%>
<%@ attribute name="filePath" type="java.lang.String" required="true" description="文件路径"%>
<%@ attribute name="fileName" type="java.lang.String" required="true" description="文件名"%>
<%@ attribute name="uploadType" type="java.lang.String" required="true" description="文件类型(image、media、file)"%>
<%@ attribute name="maxUploadNum" type="java.lang.String" required="true" description="最大文件数"%>
<%@ attribute name="threads" type="java.lang.String" required="true" description="线程"%>
<%@ attribute name="readonly" type="java.lang.String" required="true" description="是否只读(true,false)"%>
<%@ attribute name="returnPath" type="java.lang.String" required="true" description="是否返回路径(true,false)"%>


<div id="${id}_wup" class="wup_container ">
	<div class="area">
		<div id="${id}Uploader" class="wup_img">
			<div class="statusBar" style="display:none;">
				<div class="progress">
					<span class="text">0%</span>
					<span class="percentage"></span>
				</div>
				<div class="info"></div>
				<div class="btns">
					<div id="${id}filePicker2" class="webuploader-container"></div>
					<div class="uploadBtn state-pedding">开始上传</div>
				</div>
			</div>
			<div class="queueList">
				<ul id="${id}fileLists" class="filelist"></ul>
				<div id="${id}dndArea" class="placeholder">
					<div id="${id}filePicker" class="webuploader-container"></div>
					<c:if test="${uploadType == 'image'}">
						<p>或将照片拖到这里，最多可选 ${maxUploadNum} 张</p>
					</c:if>
					<c:if test="${uploadType != 'image'}">
						<p>或将文件拖到这里，最多可选 ${maxUploadNum} 个</p>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
    $(function() {
        $('#${id}Uploader').webuploader({
            id: '${id}',
            readonly: ${readonly},
            returnPath: ${returnPath},
            filePathInputId: '${filePath}',
            fileNameInputId: '${fileName}',
            uploadType: '${uploadType}',
            threads: ${threads},
            fileAllowSuffixes: '.gif,.bmp,.jpeg,.jpg,.ico,.png,.tif,.tiff,.doc,.docx,.rtf,.xls,.xlsx,.csv,.ppt,.pptx,.pdf,.vsd,.txt,.md,.xml,.rar,.zip,7z,.tar,.tgz,.jar,.gz,.gzip,.bz2,.cab,.iso,.ipa,.apk,',
            imageAllowSuffixes: '.gif,.bmp,.jpeg,.jpg,.ico,.png,.tif,.tiff,',
            mediaAllowSuffixes: '.flv,.swf,.mkv,webm,.mid,.mov,.mp3,.mp4,.m4v,.mpc,.mpeg,.mpg,.swf,.wav,.wma,.wmv,.avi,.rm,.rmi,.rmvb,.aiff,.asf,.ogg,.ogv,',
            maxUploadNum: ${maxUploadNum},
            service: {
                upload: '${uploadUrl}'
            },
        });
    });
</script>
<%--<div class="hide">--%>
	<%--<input type="text" id="uploadImage2Path" name="uploadImage2Path" value="/userfiles/1/files/eaeed1f1-9163-46c3-87b0-2394581167d4.png" class="form-control"/>--%>
	<%--<input type="text" id="uploadImage2Name" name="uploadImage2Name" value="" class="form-control"/>--%>
<%--</div>--%>