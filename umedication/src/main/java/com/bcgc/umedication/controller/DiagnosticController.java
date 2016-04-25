package com.bcgc.umedication.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 * Handles requests for the application diagnostic page.
 */
@Controller
public class DiagnosticController {

	private static final Logger logger = LoggerFactory.getLogger(DiagnosticController.class);

	@RequestMapping(value = "/diagnostic", method = RequestMethod.GET)
	public String diagnostic(Model model) {
		logger.error("not yet implemented");
		return "";
	}
	@RequestMapping(value = "/diagnostic", method = RequestMethod.POST)
	public String diagnosticForm(Model model) {
		logger.error("not yet implemented");
		return "";
	}
}
