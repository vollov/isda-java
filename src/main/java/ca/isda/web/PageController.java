package ca.isda.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ca.isda.domain.Content;
import ca.isda.domain.Staff;
import ca.isda.service.ContentService;
import ca.isda.service.StaffService;
import ca.isda.web.exceptions.PageNotFoundException;

/**
 * Handles static page requests for the application.
 */
@Controller
public class PageController {

	private static final Logger logger = Logger.getLogger(PageController.class);

	@Autowired
	private ContentService contentService;
	
	@Autowired
	private StaffService staffService;
	
	@Autowired
	private ReloadableResourceBundleMessageSource messageSource;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("home --> client locale is "+ locale);
		logger.info("Home page !");
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
				DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);
		
		// Query Management Team
		
		List<Staff> managementTeam = staffService.getManagementTeam();
		if(managementTeam == null){
			logger.error("Failed to find management team!");
		}
		model.addAttribute("managementTeam", managementTeam);
		
		
		String contentKey = "page.home";
		String menuKey = "menu.home";
		String content = getContent(contentKey, locale.toString());
		
		// if page is not existing or not enabled, return to error page
		if(content == null){
			logger.debug("Page content for home is not existing!");
			throw new PageNotFoundException("home");
		} else {
			model.addAttribute("content", content);
			
			String menuText = messageSource.getMessage("menu.home", null, locale);
			model.addAttribute("menuText", menuText);
			
			return "public/home";
		}
		
		
		
	}
//
//	@RequestMapping(value = "/about", method = RequestMethod.GET)
//	public String about(Locale locale, Model model) {
//		logger.info("about --> client locale is "+ locale);
//		logger.info("About page !");
//		
//		Content content = contentService.findByKey("about.content", locale.toString());
//		String contentText = content.getContent();
//		model.addAttribute("contentText", contentText);
//		
//		model.addAttribute("page", "about");
//		String pageText = messageSource.getMessage("menu.about", null, locale);
//		model.addAttribute("pageText", pageText);
//		return "public/about";
//	}
	
	@RequestMapping(value = "/page/{page}", method = RequestMethod.GET)
	public String showPage(@PathVariable("page") String page, Locale locale, Model model) {
		
		logger.debug(page + " --> client locale is "+ locale);
		
		String contentKey = "page." + page;
		String menuKey = "menu." + page;
		
		String content = getContent(contentKey, locale.toString());
		
		// if page is not existing or not enabled, return to error page
		if(content == null){
			logger.debug("Page content for " + page + " is not existing!");
			throw new PageNotFoundException(page);
		} else {
			model.addAttribute("content", content);
			String menuText = messageSource.getMessage(menuKey, null, locale);
			model.addAttribute("menuText", menuText);
			return "public/page";
		}
	}
	
	@ExceptionHandler(PageNotFoundException.class)
    public String handleResourceNotFoundException() {
        return "public/404";
    }
	
	private String getContent(String key, String locale) {
		Content content = contentService.findByKey(key, locale);
		if (content == null) {
			return null;
		} else {
			return content.getContent();
		}
	}
}
