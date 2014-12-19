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
import com.spring.blueye.model.IssueDetails;
import com.spring.blueye.service.IssueDetailsService;

@Controller
@SessionAttributes(types = IssueDetails.class)
public class DetailHeaderController {

	private IssueDetailsService issueDetailRepository;		
	private static Logger log = LoggerFactory.getLogger(DetailHeaderController.class);

	@Autowired
	public DetailHeaderController(IssueDetailsService issueDetailRepository) {
		this.issueDetailRepository = issueDetailRepository;
	}

	@RequestMapping(value = "/fragments/detailsHeader", method = RequestMethod.GET)
	public String processFindForm(IssueDetails plmDiagnose1,
			BindingResult result, Map<String, Object> model, ModelMap model1) {
		Iterable<IssueDetails> results = this.issueDetailRepository.findAll();
		model.put("plmDiagnose1", results);
		model1.addAttribute("plmDiagnose1", results);
		log.info("Here in detailsheader controller");
		return "/fragments/detailsHeader";
	}
}
