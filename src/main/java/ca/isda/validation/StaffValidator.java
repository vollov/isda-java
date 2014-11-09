package ca.isda.validation;

import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;

import ca.isda.domain.Staff;

/**
 * <code>Validator</code> for <code>Owner</code> forms.
 *
 * @author Ken Krebs
 * @author Juergen Hoeller
 */
public class StaffValidator {

	public void validate(Staff staff, Errors errors) {
		if (!StringUtils.hasLength(staff.getFirstName())) {
			errors.rejectValue("firstName", "required", "required");
		}
		if (!StringUtils.hasLength(staff.getLastName())) {
			errors.rejectValue("lastName", "required", "required");
		}

		String phone = staff.getPhone();
		if (!StringUtils.hasLength(phone)) {
			errors.rejectValue("phone", "required", "required");
		}
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
