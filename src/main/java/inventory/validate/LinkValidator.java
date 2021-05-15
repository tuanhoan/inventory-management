package inventory.validate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import inventory.model.Link;
import inventory.service.LinkService;

@Component
public class LinkValidator implements Validator {
	@Autowired
	private LinkService linkService;

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return clazz == Link.class;
	}

	@Override
	public void validate(Object target, Errors errors) {
		Link link = (Link) target;
		ValidationUtils.rejectIfEmpty(errors, "Name", "msg.required");
		// ValidationUtils.rejectIfEmpty(errors, "description", "msg.required");

	}

}
