package ca.isda.web;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ca.isda.domain.Content;
import ca.isda.service.ContentService;

/**
 * Handles CRUD requests for contents.
 */
@Controller
public class ContentController {
	private static final Logger logger = Logger.getLogger(PageController.class);
	
	@Autowired
	private ReloadableResourceBundleMessageSource messageSource;
	
	@Autowired
	private ContentService contentService;
	
	@RequestMapping("/contents")
	public String list(Locale locale, Model model) {
		logger.info("content list --> client locale is "+ locale);
		
		List<Content> contents = contentService.findAll();
		logger.info("[Controller] Content listing " + contents.size());
		model.addAttribute("contents", contents);
		return "content/list";
	}

	@RequestMapping(value = "/content/{code}/{locale}", method = RequestMethod.GET)
	public String show(@PathVariable("code") String code,@PathVariable("locale") String locale, Model model) {
		logger.info(String.format("content show --> code=%s, locale=%s ",code,locale));
		Content content = contentService.findByKey(code, locale);
		model.addAttribute("content", content);
		return "content/show";
	}
}
