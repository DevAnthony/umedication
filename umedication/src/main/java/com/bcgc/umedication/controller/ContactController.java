package com.bcgc.umedication.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bcgc.umedication.model.Contact;

/**
 * Handles requests for the application contact page.
 */
@Controller
public class ContactController {
	
	private static final Logger logger = LoggerFactory.getLogger(ContactController.class);


	@Autowired
	private JavaMailSender mailSender;
	
	public void setMailSender(JavaMailSender mailSender) {
		this.mailSender = mailSender;
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
		String subject = contact.getName().concat(" : ");
		subject = subject.concat(contact.getSubject());
		this.sendMail(contact.getEmail(),
    		   contact.getEmail(),
    		   subject, 
    		   contact.getMessage());
		return "contact";
	}

	private void sendMail(String from, String to, String subject, String msg) {

		SimpleMailMessage message = new SimpleMailMessage();
		
		message.setFrom(from);
		message.setTo(to);
		message.setSubject(subject);
		message.setText(msg);
		mailSender.send(message);	
	}
	
}
