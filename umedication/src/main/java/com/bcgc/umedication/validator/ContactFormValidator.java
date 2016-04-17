package com.bcgc.umedication.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.bcgc.umedication.model.Contact;

@Component
public class ContactFormValidator implements Validator {

	@Autowired
	@Qualifier("emailValidator")
	EmailValidator emailValidator;
	
	@Override
	public boolean supports(Class<?> clazz) {
		return Contact.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		Contact contact = (Contact) target;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "NotEmpty.contactForm.name");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "NotEmpty.contactForm.email");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "subject", "NotEmpty.contactForm.subject");

		if(!emailValidator.valid(contact.getEmail())){
			errors.rejectValue("email", "Pattern.userForm.email");
		}
	}

}
