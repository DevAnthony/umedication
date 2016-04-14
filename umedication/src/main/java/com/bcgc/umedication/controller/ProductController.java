package com.bcgc.umedication.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application products page.
 */
@Controller
public class ProductController {

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String products() {
		return "products";
	}
	@RequestMapping(value = "/product", method = RequestMethod.GET)
	public String product() {
		return "product";
	}
}
