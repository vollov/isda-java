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

import ca.isda.domain.Address;
import ca.isda.domain.Address;
import ca.isda.service.AddressService;

@Controller
@RequestMapping("/address/new")
@SessionAttributes(types = Address.class)
public class AddAddressForm {
	private static final Logger logger = Logger.getLogger(AddAddressForm.class);
	
	@Autowired
	private AddressService addressService;
		
	@InitBinder
	public void setAllowedFields(WebDataBinder dataBinder) {
		dataBinder.setDisallowedFields("id");
	}

	@RequestMapping(method = RequestMethod.GET)
	public String setupForm(Model model) {
		Address address = new Address();
		model.addAttribute(address);
		return "address/form";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String processSubmit(@ModelAttribute Address address, BindingResult result, SessionStatus status) {
//		new StaffValidator().validate(staff, result);
//		if (result.hasErrors()) {
//			logger.info("staff validation failed");
//			return "staff/form";
//		}
//		else {
			addressService.save(address);
			status.setComplete();
			return "redirect:/address/" + address.getId();
//		}
	}
}
