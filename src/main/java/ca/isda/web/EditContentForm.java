package ca.isda.web;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ca.isda.domain.Content;
import ca.isda.domain.Staff;
import ca.isda.service.ContentService;
import ca.isda.validation.StaffValidator;

@Controller
@RequestMapping("/content/{code}/{locale}/edit")
@SessionAttributes(types = Content.class)
public class EditContentForm {
	private static final Logger logger = Logger.getLogger(EditContentForm.class);
	
	@Autowired
	private ContentService contentService;
		
	@RequestMapping(method = RequestMethod.GET)
	public String setupForm(@PathVariable("code") String code, 
			@PathVariable("locale") String locale, Model model) {
		logger.info(String.format("content show --> code=%s, locale=%s ",code,locale));
		Content content = contentService.findByKey(code, locale);
		model.addAttribute("content", content);
		return "content/form";
	}
	
	@RequestMapping(value = "/admin/content/edit/{code}/{locale}", params = "form", method = RequestMethod.POST)
	public String save(@Valid  BindingResult bindingResult,
			Model model, HttpServletRequest httpServletRequest,
			RedirectAttributes redirectAttributes, Locale locale) {
		
		
		return "redirect:/public/content/list";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String processSubmit(@ModelAttribute Content content, BindingResult result, SessionStatus status) {
//		new StaffValidator().validate(staff, result);
//		if (result.hasErrors()) {
//			return "staff/form";
//		}
//		else {
		contentService.save(content);
		status.setComplete();
			return "redirect:/contents";
//		}
	}
}
