package com.bcgc.umedication.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.bcgc.umedication.model.Question;

@Component
public class QuestionFormValidator implements Validator {

	@Autowired
	@Qualifier("emailValidator")
	EmailValidator emailValidator;
	
	@Override
	public boolean supports(Class<?> arg0) {
		return Question.class.equals(arg0);
	}

	@Override
	public void validate(Object target, Errors errors) {
		Question question = (Question) target;

		if(!emailValidator.valid(question.getAsker_mail())){
			errors.rejectValue("email", "Pattern.questionForm.email");
		}

	}

}
