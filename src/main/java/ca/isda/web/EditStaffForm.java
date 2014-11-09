package ca.isda.web;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.samples.petclinic.Owner;
//import org.springframework.samples.petclinic.validation.OwnerValidator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import ca.isda.domain.Staff;
import ca.isda.service.StaffService;
import ca.isda.validation.StaffValidator;

@Controller
@RequestMapping("/staff/{id}/edit")
@SessionAttributes(types = Staff.class)
public class EditStaffForm {

	private static final Logger logger = Logger.getLogger(EditStaffForm.class);
	
	@Autowired
	private StaffService staffService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String setupForm(@PathVariable("id") long id, Model model) {
		//Owner owner = this.clinic.loadOwner(ownerId);
		Staff staff = staffService.findById(id);
		model.addAttribute(staff);
		return "staff/form";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String processSubmit(@ModelAttribute Staff staff, BindingResult result, SessionStatus status) {
		new StaffValidator().validate(staff, result);
		if (result.hasErrors()) {
			return "staff/form";
		}
		else {
			staffService.save(staff);
			status.setComplete();
			return "redirect:/staff/" + staff.getId();
		}
	}
}
