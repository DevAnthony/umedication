package com.bcgc.umedication.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bcgc.umedication.model.Contact;
import com.bcgc.umedication.validator.ContactFormValidator;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	ContactFormValidator contactFormValidator;
	
	//Set a form validator
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		binder.setValidator(contactFormValidator);
	}
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "home";
	}

	@RequestMapping(value = "/pharmacy", method = RequestMethod.GET)
	public String pharmacy(Model model) {
		return "pharmacy";
	}

	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contact(Model model) {
		Contact contact = new Contact();
		model.addAttribute("contactForm", contact);
		return "contact";
	}
	@RequestMapping(value = "/contact", method = RequestMethod.POST)
	public String contactForm(@ModelAttribute("contactForm") @Validated Contact contact,
			BindingResult result, Locale locale, Model model) {
		logger.info("contactForm() : {}", contact);
		return "contact";
	}
	
	
	
}
