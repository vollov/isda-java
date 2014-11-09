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

import ca.isda.domain.Content;
import ca.isda.domain.Staff;
import ca.isda.service.ContentService;
import ca.isda.validation.StaffValidator;

@Controller
@RequestMapping("/content/new")
@SessionAttributes(types = Content.class)
public class AddContentForm {
	private static final Logger logger = Logger.getLogger(AddContentForm.class);
	
	@Autowired
	private ContentService contentService;
		
	@InitBinder
	public void setAllowedFields(WebDataBinder dataBinder) {
		dataBinder.setDisallowedFields("id");
	}

	@RequestMapping(method = RequestMethod.GET)
	public String setupForm(Model model) {
		Content content = new Content();
		model.addAttribute(content);
		return "content/form";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String processSubmit(@ModelAttribute Content content, BindingResult result, SessionStatus status) {
//		new StaffValidator().validate(staff, result);
//		if (result.hasErrors()) {
//			logger.info("staff validation failed");
//			return "staff/form";
//		}
//		else {
			contentService.save(content);
			status.setComplete();
			return "redirect:/content/" + content.getCode() + "/" + content.getLocale();
//		}
	}
}
