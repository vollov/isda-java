package ca.isda.validation;

import org.apache.log4j.Logger;
import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;

import ca.isda.domain.Event;
import ca.isda.web.AddEventForm;

public class EventValidator {
	
	private static final Logger logger = Logger.getLogger(EventValidator.class);
	
	public void validate(Event event, Errors errors) {
		
		logger.info("get address=" + event.getAddress().getId());
		if (!StringUtils.hasLength(event.getDescription())) {
			errors.rejectValue("description", "required", "required");
		}
//		if (!StringUtils.hasLength(event.getLastName())) {
//			errors.rejectValue("lastName", "required", "required");
//		}
//
//		String phone = event.getPhone();
//		if (!StringUtils.hasLength(phone)) {
//			errors.rejectValue("phone", "required", "required");
//		}
//		else {
//			for (int i = 0; i < phone.length(); ++i) {
//				if ((Character.isDigit(phone.charAt(i))) == false) {
//					errors.rejectValue("phone", "nonNumeric", "non-numeric");
//					break;
//				}
//			}
//		}
	}
}
