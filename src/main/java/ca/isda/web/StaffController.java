package ca.isda.web;

import java.util.List;
import java.util.Locale;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ca.isda.domain.Content;
import ca.isda.domain.Staff;
import ca.isda.service.StaffService;

/**
 * Handles CRUD requests for contents.
 */
@Controller
public class StaffController {
	private static final Logger logger = Logger.getLogger(StaffController.class);
	
	@Autowired
	private StaffService staffService;
	
	@RequestMapping("/staffs")
	public String adminStaffList(Locale locale, Model model) {
		logger.info("staff list --> client locale is "+ locale);
		
		List<Staff> staffs = staffService.findAll();
		logger.info("[Controller] Staff listing " + staffs.size());
		model.addAttribute("staffs", staffs);
		return "staff/list";
	}
	
	@RequestMapping(value = "/staff/{id}", method = RequestMethod.GET)
	public String getStaff(@PathVariable("id") long id, Model model) {
		logger.info(String.format("StaffController.getStaff --> id=%d", id));
		Staff staff = staffService.findById(id);
		
		model.addAttribute("staff", staff);
		return "staff/show";
	}
}
