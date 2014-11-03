package ca.isda.web;

import java.util.List;
import java.util.Locale;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ca.isda.domain.Staff;
import ca.isda.service.StaffService;

/**
 * Handles CRUD requests for contents.
 */
public class StaffController {
	private static final Logger logger = Logger.getLogger(PageController.class);
	
	@Autowired
	private StaffService staffService;
	
	@RequestMapping("/admin/staff/list")
	public String list(Locale locale, Model model) {
		logger.info("staff list --> client locale is "+ locale);
		
		List<Staff> staffs = staffService.findAll();
		logger.info("[Controller] Staff listing " + staffs.size());
		model.addAttribute("staffs", staffs);
		return "public/staff/list";
	}
}
