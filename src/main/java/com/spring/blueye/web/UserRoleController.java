/**
 * 
 */
package com.spring.blueye.web;

import java.util.Collection;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.spring.blueye.model.User;
import com.spring.blueye.model.UserRole;
import com.spring.blueye.service.CoreService;

/**
 * @author ktayade
 * @since 8.26.2013
 */

@Controller
@SessionAttributes(types = UserRole.class)
public class UserRoleController {

	private final CoreService coreService;

	@Autowired
	public UserRoleController(CoreService coreService) {
		this.coreService = coreService;
	}
    @InitBinder
    public void setAllowedFields(WebDataBinder dataBinder) {
        dataBinder.setDisallowedFields("id");
    }
    
    @RequestMapping(value = "/role/new", method = RequestMethod.GET)
    public String initCreationForm(Map<String, Object> model) {
        UserRole role = new UserRole();
        model.put("role", role);
        return "role/createOrUpdateRoleForm";
    }

    @RequestMapping(value = "/role/new", method = RequestMethod.POST)
    public String processCreationForm(@Valid UserRole role, BindingResult result, SessionStatus status) {
        if (result.hasErrors()) {
            return "role/createOrUpdateRoleForm";
        } else {
            this.coreService.saveUserRole(role);
            status.setComplete();
            return "redirect:/role/" + role.getId();
        }
    }
    
    @RequestMapping(value = "/role/find", method = RequestMethod.GET)
    public String initFindForm(Map<String, Object> model) {
        model.put("role", new UserRole());
        return "role/findRole";
    }
    
    @RequestMapping(value = "/role", method = RequestMethod.GET)
    public String processFindForm(UserRole role, BindingResult result, Map<String, Object> model) {

        // allow parameterless GET request for /owners to return all records
        if (role.getName() == null) {
        	role.setName(""); // empty string signifies broadest possible search
        }

        // find owners by last name
        Collection<UserRole> results = this.coreService.findRoleTypes();
        if (results.size() < 1) {
            // no owners found
            result.rejectValue("Name", "notFound", "not found");
            return "role/findRole";
        }
        if (results.size() > 1) {
            // multiple owners found
            model.put("selections", results);
            return "role/roleList";
        } else {
            // 1 user found
            role = results.iterator().next();
            return "redirect:/role/" + role.getId();
        }
    }
    
    @RequestMapping(value = "/role/{roleId}/edit", method = RequestMethod.GET)
    public String initUpdateUserForm(@PathVariable("roleId") int roleId, Model model) {
        UserRole role = this.coreService.findUserRoleById(roleId);
        model.addAttribute(role);
        return "role/createOrUpdateRoleForm";
    }

    @RequestMapping(value = "/role/{roleId}/edit", method = RequestMethod.PUT)
    public String processUpdateUserForm(@Valid UserRole role, BindingResult result, SessionStatus status) {
        if (result.hasErrors()) {
            return "role/createOrUpdateRoleForm";
        } else {
            this.coreService.saveUserRole(role);
            status.setComplete();
            return "redirect:/role/{roleId}";
        }
    }
    
    /**
     * Custom handler for displaying an Role.
     *
     * @param roleId the ID of the Role to display
     * @return a ModelMap with the model attributes for the view
     */
    @RequestMapping("role/{roleId}")
    public ModelAndView showRole(@PathVariable("roleId") int roleId) {
        ModelAndView mav = new ModelAndView("role/roleDetails");
        mav.addObject(this.coreService.findUserRoleById(roleId));
        return mav;
    }
}
