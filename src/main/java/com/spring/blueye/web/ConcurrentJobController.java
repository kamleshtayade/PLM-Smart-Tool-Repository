package com.spring.blueye.web;

import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.spring.blueye.model.ConcurrentJob;
import com.spring.blueye.service.ConcJobService;

@Controller
@SessionAttributes(types = ConcurrentJob.class)
public class ConcurrentJobController {

	private ConcJobService concJobService;

	@Autowired
	public ConcurrentJobController(ConcJobService concJobService) {
		this.concJobService = concJobService;
	}

	@RequestMapping(value = "/dashboard/job", method = RequestMethod.GET)
	public String processFindForm(ConcurrentJob concurrentJob,
			BindingResult result, Map<String, Object> model, ModelMap model1) {
		
		Iterable<ConcurrentJob> results = this.concJobService.findAll();
		model.put("concurrentJob", results);
		model1.addAttribute("concurrentJob", results);
		
		return "/dashboard/Job";
	}
}
