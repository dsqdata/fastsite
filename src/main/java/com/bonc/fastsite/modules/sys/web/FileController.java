package com.bonc.fastsite.modules.sys.web;

import com.bonc.fastsite.common.config.Global;
import com.bonc.fastsite.common.utils.FileUtils;
import com.bonc.fastsite.common.web.Servlets;
import com.bonc.fastsite.modules.sys.security.SystemAuthorizingRealm;
import com.bonc.fastsite.modules.sys.utils.UserUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "${adminPath}/sys/file")
public class FileController {

    @Value("${userfiles.basedir}")
    public String userfilesBaseDir;

    @RequestMapping("fileUpload")
    @ResponseBody
    public List fileUpload(@RequestParam("file_data") MultipartFile[] imagefile, //同步上床 获取多张图片参数
                             HttpServletRequest request) throws IOException {
        SystemAuthorizingRealm.Principal principal = (SystemAuthorizingRealm.Principal) UserUtils.getPrincipal();

        String baseURL = FileUtils.path(Servlets.getRequest().getContextPath() + Global.USERFILES_BASE_URL + principal + "/files/");
        String baseDir = FileUtils.path(Global.getUserfilesBaseDir() + Global.USERFILES_BASE_URL + principal + "/files/");
        FileUtils.createDirectory(FileUtils.path(baseDir));
        List list = new ArrayList();

        long startTime = System.currentTimeMillis();

        for (int k = 0; k < imagefile.length; k++) {
            MultipartFile multipartFile = imagefile[k];
            System.out.println("fileName：" + multipartFile.getOriginalFilename());
            File newFile = new File(baseDir + multipartFile.getOriginalFilename());
            multipartFile.transferTo(newFile);
            Map map = new HashMap();
            map.put("fileName" ,multipartFile.getOriginalFilename());
            map.put("filePath", baseURL+ multipartFile.getOriginalFilename());
            list.add(map);
        }

        long endTime = System.currentTimeMillis();
        System.out.println("方法二的运行时间：" + String.valueOf(endTime - startTime) + "ms");
        return list;
    }

}
