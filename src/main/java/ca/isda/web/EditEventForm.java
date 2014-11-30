package ca.isda.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import ca.isda.domain.Address;
import ca.isda.domain.Event;
import ca.isda.service.AddressService;
import ca.isda.service.EventService;
import ca.isda.validation.EventValidator;
import ca.isda.web.util.AddressEditor;

@Controller
@RequestMapping("/event/{id}/edit")
@SessionAttributes(types = Event.class)
public class EditEventForm {

	private static final Logger logger = Logger.getLogger(EditEventForm.class);
	
	@Autowired
	private EventService eventService;
	
	@Autowired
	private AddressService addressService;
	
	@ModelAttribute("addresses")
	public List<Address> populateAddresses() {
		return addressService.findAll();
	}
	
	@InitBinder
	public void setAllowedFields(WebDataBinder dataBinder) {
		//dataBinder.setDisallowedFields("id");
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd:hhmm");
		dataBinder.registerCustomEditor(Date.class, new CustomDateEditor(
	            dateFormat, false));
		
		dataBinder.registerCustomEditor(Address.class, new AddressEditor(addressService));
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String setupForm(@PathVariable("id") long id, Model model) {
		//Owner owner = this.clinic.loadOwner(ownerId);
		Event event = eventService.findById(id);
		model.addAttribute(event);
		return "event/form";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String processSubmit(@ModelAttribute Event event, BindingResult result, SessionStatus status) {
		new EventValidator().validate(event, result);
		
		
		if (result.hasErrors()) {
			return "event/form";
		}
		else {
			eventService.save(event);
			status.setComplete();
			return "redirect:/event/" + event.getId();
		}
	}
}
