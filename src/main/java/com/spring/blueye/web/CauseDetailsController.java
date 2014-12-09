package com.spring.blueye.web;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.blueye.model.IssueCause;
import com.spring.blueye.service.CauseDetailsService;

@Controller
@SessionAttributes(types = IssueCause.class)
public class CauseDetailsController {

	private CauseDetailsService causeDetailsService;
	
	private static Logger log = LoggerFactory.getLogger(UserController.class);

	@Autowired
	public CauseDetailsController(CauseDetailsService causeDetailsService) {
		this.causeDetailsService = causeDetailsService;
	}

	@RequestMapping(value = "/cause/{id}", method = RequestMethod.GET)
	public String processIssueForm(@PathVariable("id") int id,
			IssueCause issueCause, BindingResult result,
			Map<String, Object> model,ModelMap model1) {
		log.info("inside causeController");
		log.info("inside causeController" + id);

		List<IssueCause> results = this.causeDetailsService.findByIssueId(id);
		log.info("inside causeController after method call");
		log.info("inside causeController after method call"+id);

		if (results.size() < 1) {
			// no owners found
			log.info("inside null++++++++++++++++++++++++");
//			result.rejectValue("orgId", "notFound", "not found");
			// log.info("*******************************empty "+
			// results.isEmpty());
			return "/cause/CauseDetails";
		} else
			// multiple owners found
			log.info("******************************* multiple +++++++++++++++++");
		model.put("causeSelections", results);
		model1.addAttribute("causeSelections", results);
		return "/cause/CauseDetails";
	}

}
