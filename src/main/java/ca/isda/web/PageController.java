package ca.isda.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles static page requests for the application.
 */
@Controller
public class PageController {

	private static final Logger logger = Logger.getLogger(PageController.class);
//	private static final Logger logger = LoggerFactory
//			.getLogger(PageController.class);

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
		model.addAttribute("page", "home");
		return "public/home";
	}

	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about(Locale locale, Model model) {
		logger.info("about --> client locale is "+ locale);

		logger.info("About page !");
		model.addAttribute("page", "about");
		return "public/about";
	}
}