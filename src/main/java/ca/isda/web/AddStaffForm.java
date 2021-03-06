package ca.isda.web;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import ca.isda.domain.Staff;
import ca.isda.service.StaffService;
import ca.isda.validation.StaffValidator;

@Controller
@RequestMapping("/staff/new")
@SessionAttributes(types = Staff.class)
public class AddStaffForm {

	private static final Logger logger = Logger.getLogger(AddStaffForm.class);
	
	@Autowired
	private StaffService staffService;
		
	@InitBinder
	public void setAllowedFields(WebDataBinder dataBinder) {
		dataBinder.setDisallowedFields("id");
	}

	@RequestMapping(method = RequestMethod.GET)
	public String setupForm(Model model) {
		Staff staff = new Staff();
		model.addAttribute(staff);
		return "staff/form";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String processSubmit(@ModelAttribute Staff staff, BindingResult result, SessionStatus status) {
		new StaffValidator().validate(staff, result);
		if (result.hasErrors()) {
			logger.info("staff validation failed");
			return "staff/form";
		}
		else {
			staffService.save(staff);
			status.setComplete();
			return "redirect:/staff/" + staff.getId();
		}
	}
}
