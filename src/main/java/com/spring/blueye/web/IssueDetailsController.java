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
import com.spring.blueye.model.IssueDetails;
import com.spring.blueye.service.CauseDetailsService;
import com.spring.blueye.service.IssueDetailsService;

@Controller
@SessionAttributes(types = IssueDetails.class)
public class IssueDetailsController {

	private IssueDetailsService issueDetailRepository;
	private CauseDetailsService causeDetailsService;

	private static Logger log = LoggerFactory.getLogger(UserController.class);

	@Autowired
	public IssueDetailsController(IssueDetailsService issueDetailRepository) {
		this.issueDetailRepository = issueDetailRepository;
	}

	@RequestMapping(value = "/dashboard/issue", method = RequestMethod.GET)
	public String processFindForm(IssueDetails plmDiagnose,
			BindingResult result, Map<String, Object> model, ModelMap model1) {
		Iterable<IssueDetails> results = this.issueDetailRepository.findAll();
		model.put("plmDiagnose", results);
		model1.addAttribute("plmDiagnose", results);
		return "/dashboard/Issue";
	}

	@RequestMapping(value = "/dashboard/fix", method = RequestMethod.GET)
	public String processFindForm1(IssueDetails plmDiagnose,
			BindingResult result, Map<String, Object> model) {
		Iterable<IssueDetails> results = this.issueDetailRepository.findAll();
		model.put("plmDiagnose", results);

		return "/dashboard/Fix";

	}

	@RequestMapping(value = "/dashboard/report", method = RequestMethod.GET)
	public String processFindForm2(IssueDetails plmDiagnose,
			BindingResult result, Map<String, Object> model) {
		Iterable<IssueDetails> results = this.issueDetailRepository.findAll();

		model.put("plmDiagnose", results);

		return "/dashboard/Report";

	}
	
//	@RequestMapping(value = "/dashboard/job", method = RequestMethod.GET)
//	public String processFindForm5(IssueDetails plmDiagnose,
//			BindingResult result, Map<String, Object> model) {
//		Iterable<IssueDetails> results = this.issueDetailRepository.findAll();
//
//		model.put("plmDiagnose", results);
//
//		return "/dashboard/Job";
//
//	}
	
	@RequestMapping(value = "/dashboard/admin", method = RequestMethod.GET)
	public String processFindForm6(IssueDetails plmDiagnose,
			BindingResult result, Map<String, Object> model) {
		Iterable<IssueDetails> results = this.issueDetailRepository.findAll();

		model.put("plmDiagnose", results);

		return "/dashboard/Admin";

	}

	@RequestMapping(value = "/dashboard/issueContent", method = RequestMethod.GET)
	public String processFindForm3(IssueDetails plmDiagnose,
			BindingResult result, Map<String, Object> model) {
		Iterable<IssueDetails> results = this.issueDetailRepository.findAll();

		model.put("plmDiagnose", results);

		return "/dashboard/IssueContent";

	}

	@RequestMapping(value = "/dashboard/{id}", method = RequestMethod.GET)
	public String processIssueForm(@PathVariable("id") int id,
			IssueDetails issueDetails, BindingResult result,
			Map<String, Object> model, ModelMap model1) {
		
		List<IssueDetails> results = this.issueDetailRepository.findById(id);

		if (results.size() < 1) {
			result.rejectValue("orgCode", "notFound", "not found");
			return "/dashboard/IssueDetails";
		} else
		{
			model.put("issueSelections", results);
			model1.addAttribute("issueSelections", results);
			log.info("data in modelmap"+model1.addAttribute("issueSelections", results));
			log.debug("==============Exiting the fillModelData dmnListRef=Lisof Headers===="+results);    
		}
		return "/dashboard/IssueDetails";
	}

}
