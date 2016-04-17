package com.bcgc.umedication.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application products page.
 */
@Controller
public class ProductController {
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String products(Model model) {
		return "products";
	}
	@RequestMapping(value = "/product/{id}", method = RequestMethod.GET)
	public String product(@PathVariable("id") int id, Model model) {
		logger.info("Product chosen : {}.", id);
		return "product";
	}
}
