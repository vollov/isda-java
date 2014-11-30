package ca.isda.web;

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

import ca.isda.domain.Address;
import ca.isda.service.AddressService;
//import ca.isda.validation.AddressValidator;

@Controller
@RequestMapping("/address/{id}/edit")
@SessionAttributes(types = Address.class)
public class EditAddressForm {
	private static final Logger logger = Logger.getLogger(EditAddressForm.class);
	
	@Autowired
	private AddressService addressService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String setupForm(@PathVariable("id") long id, Model model) {
		//Owner owner = this.clinic.loadOwner(ownerId);
		Address address = addressService.findById(id);
		model.addAttribute(address);
		return "address/form";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String processSubmit(@ModelAttribute Address address, BindingResult result, SessionStatus status) {
		//new AddressValidator().validate(address, result);
		if (result.hasErrors()) {
			return "address/form";
		}
		else {
			addressService.save(address);
			status.setComplete();
			return "redirect:/address/" + address.getId();
		}
	}
}
