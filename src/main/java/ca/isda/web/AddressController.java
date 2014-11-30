package ca.isda.web;

import java.util.List;
import java.util.Locale;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ca.isda.domain.Address;
import ca.isda.domain.Staff;
import ca.isda.service.AddressService;

@Controller
public class AddressController {
	private static final Logger logger = Logger.getLogger(AddressController.class);
	
	@Autowired
	private ReloadableResourceBundleMessageSource messageSource;
	
	@Autowired
	private AddressService addressService;
	
	@RequestMapping("/addresses")
	public String list(Locale locale, Model model) {
		logger.info("address list --> client locale is "+ locale);
		
		List<Address> addresses = addressService.findAll();
		logger.info("[Controller] Address listing " + addresses.size());
		model.addAttribute("addresses", addresses);
		return "address/list";
	}

	@RequestMapping(value = "/address/{id}", method = RequestMethod.GET)
	public String show(@PathVariable("id") long id, Model model) {
		logger.info(String.format("AddressController.show --> id=%d", id));
		Address address = addressService.findById(id);
		
		model.addAttribute("address", address);
		return "address/show";
	}
}
