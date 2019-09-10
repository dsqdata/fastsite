package com.pangu.fastsite.modules.sys.web;

import com.pangu.fastsite.common.config.Global;
import com.pangu.fastsite.common.utils.FileUtils;
import com.pangu.fastsite.modules.sys.security.SystemAuthorizingRealm;
import com.pangu.fastsite.modules.sys.utils.UserUtils;
import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping(value = "${adminPath}/sys/file")
public class FileController {

    @Value("${userfiles.basedir}")
    public String userfilesBaseDir;

    @RequestMapping("fileUpload")
    @ResponseBody
    public Map fileUpload(
            @RequestParam("fileName") String fileName,
            @RequestParam("size") Long size,
            @RequestParam("file") MultipartFile multipartFile, HttpServletRequest request) throws IOException {

        SystemAuthorizingRealm.Principal principal = (SystemAuthorizingRealm.Principal) UserUtils.getPrincipal();

//        String baseURL = FileUtils.path(Servlets.getRequest().getContextPath() + Global.USERFILES_BASE_URL + principal + "/files/");
        String baseDir = FileUtils.path(Global.getUserfilesBaseDir() + Global.USERFILES_BASE_URL + principal + "/files/");
        FileUtils.createDirectory(FileUtils.path(baseDir));

        String uuid = UUID.randomUUID().toString();
        //获取后缀名
        String sname = multipartFile.getOriginalFilename().substring(multipartFile.getOriginalFilename().lastIndexOf("."));
        String rname = uuid + sname;
        File newFile = new File(baseDir + rname);
        multipartFile.transferTo(newFile);

        Map rmap = new HashedMap();
        rmap.put("result", "true");
        rmap.put("message", "上传成功");
        rmap.put("fileUpload", new FileInfo(Global.USERFILES_BASE_URL + principal + "/files/" + rname, fileName, size));
        return rmap;
    }

}


class FileInfo {
    String id;
    String fileUrl;
    String fileName;
    Long fileSize;

    public FileInfo() {
    }

    public FileInfo(String fileUrl, String fileName, Long fileSize) {
        this.id = UUID.randomUUID().toString();
        this.fileName = fileName;
        this.fileUrl = fileUrl;
        this.fileSize = fileSize;
    }

    public String getFileUrl() {
        return fileUrl;
    }

    public void setFileUrl(String fileUrl) {
        this.fileUrl = fileUrl;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public Long getFileSize() {
        return fileSize;
    }

    public void setFileSize(Long fileSize) {
        this.fileSize = fileSize;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
}