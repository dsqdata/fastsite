package com.dsqdata.fastsite.modules.demo.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dsqdata.fastsite.common.config.Global;
import com.dsqdata.fastsite.common.persistence.Page;
import com.dsqdata.fastsite.common.web.BaseController;
import com.dsqdata.fastsite.common.utils.StringUtils;
import com.dsqdata.fastsite.modules.demo.entity.DemoData;
import com.dsqdata.fastsite.modules.demo.service.DemoDataService;

/**
 * 实例Controller
 * @author 实例
 * @version 2019-09-05
 */
@Controller
@RequestMapping(value = "${adminPath}/demo/demoData")
public class DemoDataController extends BaseController {

	@Autowired
	private DemoDataService demoDataService;
	
	@ModelAttribute
	public DemoData get(@RequestParam(required=false) String id) {
		DemoData entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = demoDataService.get(id);
		}
		if (entity == null){
			entity = new DemoData();
		}
		return entity;
	}
	
	@RequiresPermissions("demo:demoData:view")
	@RequestMapping(value = {"list", ""})
	public String list(DemoData demoData, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<DemoData> page = demoDataService.findPage(new Page<DemoData>(request, response), demoData); 
		model.addAttribute("page", page);
		return "modules/demo/demoDataList";
	}

	@RequiresPermissions("demo:demoData:view")
	@RequestMapping(value = "form")
	public String form(DemoData demoData, Model model) {
		model.addAttribute("demoData", demoData);
		return "modules/demo/demoDataForm";
	}

	@RequiresPermissions("demo:demoData:view")
	@RequestMapping(value = "formOne")
	public String formOne(DemoData demoData, Model model) {
		model.addAttribute("demoData", demoData);
		return "modules/demo/demoDataFormOne";
	}

	@RequiresPermissions("demo:demoData:view")
	@RequestMapping(value = "page")
	public String page(DemoData demoData, Model model) {
		model.addAttribute("demoData", demoData);
		return "modules/demo/demoDataPage";
	}


	@RequiresPermissions("demo:demoData:edit")
	@RequestMapping(value = "save")
	public String save(DemoData demoData, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, demoData)){
			return form(demoData, model);
		}
		demoDataService.save(demoData);
		addMessage(redirectAttributes, "保存实例成功");
		return "redirect:"+Global.getAdminPath()+"/demo/demoData/?repage";
	}
	
	@RequiresPermissions("demo:demoData:edit")
	@RequestMapping(value = "delete")
	public String delete(DemoData demoData, RedirectAttributes redirectAttributes) {
		demoDataService.delete(demoData);
		addMessage(redirectAttributes, "删除实例成功");
		return "redirect:"+Global.getAdminPath()+"/demo/demoData/?repage";
	}

}