package com.spring.blueye.web;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.blueye.model.Dashboard;
import com.spring.blueye.service.DashboardCoreService;

@Controller
@SessionAttributes(types = Dashboard.class)
public class DashboardController {

	private DashboardCoreService plmCoreService;
	private static Logger log = LoggerFactory.getLogger(UserController.class);

	@Autowired
	public DashboardController(DashboardCoreService plmCoreService) {
		this.plmCoreService = plmCoreService;
	}

	@RequestMapping(value = "/dashboard/dashboard", method = RequestMethod.GET)
	public String processFindForm(Dashboard plmSmart, BindingResult result,
			Map<String, Object> model,ModelMap model1) {
		Iterable<Dashboard> results = this.plmCoreService.findAll();
		log.info("Here in dashborad controller called");
		model.put("plmSelections", results);
		model1.addAttribute("plmSelections", results);
		return "/dashboard/Dashboard";

	}

}
