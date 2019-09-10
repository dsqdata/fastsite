package com.pangu.fastsite.modules.home.web;

import com.pangu.fastsite.common.web.BaseController;
import com.pangu.fastsite.modules.sys.entity.Area;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "${adminPath}/home/")
public class HomeController extends BaseController {

	@RequestMapping(value = {"home", ""})
	public String list(Area area, Model model) {
		return "modules/home/home";
	}
}
