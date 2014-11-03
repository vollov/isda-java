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
	
	@RequestMapping("/admin/content/list")
	public String list(Locale locale, Model model) {
		logger.info("content list --> client locale is "+ locale);
		
		List<Content> contents = contentService.findAll();
		logger.info("[Controller] Content listing " + contents.size());
		model.addAttribute("contents", contents);
		return "public/content/list";
	}

	@RequestMapping(value = "/admin/content/show/{code}/{locale}", method = RequestMethod.GET)
	public String show(@PathVariable("code") String code,@PathVariable("locale") String locale, Model model) {
		logger.info(String.format("content show --> code=%s, locale=%s ",code,locale));
		Content content = contentService.findByKey(code, locale);
		model.addAttribute("content", content);
		return "public/content/show";
	}
	
	@RequestMapping(value = "/admin/content/edit/{code}/{locale}", method = RequestMethod.GET)
	public String edit(@PathVariable("code") String code,@PathVariable("locale") String locale, Model model) {
		logger.info(String.format("content show --> code=%s, locale=%s ",code,locale));
		Content content = contentService.findByKey(code, locale);
		model.addAttribute("content", content);
		return "public/content/form";
	}
	
	@RequestMapping(value = "/admin/content/edit/{code}/{locale}", params = "form", method = RequestMethod.POST)
	public String save(@Valid Content content, BindingResult bindingResult,
			Model model, HttpServletRequest httpServletRequest,
			RedirectAttributes redirectAttributes, Locale locale) {
		
		contentService.save(content);
		return "redirect:/public/content/list";
	}
	
//	@RequestMapping(value = "/admin/content/save", method = RequestMethod.POST)
//	
//	public ModelAndView save(@ModelAttribute User user) {
//		userDao.saveOrUpdate(user);
//		return new ModelAndView("redirect:/");
//	}
	
//	@RequestMapping(value = "/new", method = RequestMethod.GET)
//	public ModelAndView newUser() {
//		ModelAndView model = new ModelAndView("UserForm");
//		model.addObject("user", new User());
//		return model;		
//	}
//	

	
//	@RequestMapping(value="/tasks/{taskId}/{taskStatus}",method = RequestMethod.POST,headers="Accept=application/json")
//	36
//	  public List<task> changeTaskStatus(@PathVariable int taskId,@PathVariable String taskStatus) throws ParseException {
//	37
//	   taskmanagerservice.changeTaskStatus(taskId,taskStatus);  
//	38
//	   return taskmanagerservice.getAllTasks();
//	39
//	    
//	40
//	  }

	  
//	
//	@RequestMapping(value = "/delete", method = RequestMethod.GET)
//	public ModelAndView deleteUser(HttpServletRequest request) {
//		int userId = Integer.parseInt(request.getParameter("id"));
//		userDao.delete(userId);
//		return new ModelAndView("redirect:/");		
//	}
//	

}
