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

import ca.isda.domain.Event;
import ca.isda.service.EventService;

@Controller
public class EventController {
	private static final Logger logger = Logger.getLogger(EventController.class);
	
	@Autowired
	private EventService eventService;
	
	@RequestMapping("/events")
	public String adminEventList(Locale locale, Model model) {
		logger.info("event list --> client locale is "+ locale);
		
		List<Event> events = eventService.findAll();
		logger.info("[Controller] Event listing " + events.size());
		model.addAttribute("events", events);
		return "event/list";
	}
	
	@RequestMapping(value = "/event/{id}", method = RequestMethod.GET)
	public String getEvent(@PathVariable("id") long id, Model model) {
		logger.info(String.format("EventController.getEvent --> id=%d", id));
		Event event = eventService.findById(id);
		
		model.addAttribute("event", event);
		return "event/show";
	}
}
