package com.bcgc.umedication.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bcgc.umedication.model.Drug;
import com.bcgc.umedication.service.DrugService;

/**
 * Handles requests for the application products page.
 */
@Controller
public class ProductController {
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	
	private DrugService drugService;
	
	@Autowired
	public void setDrugService(DrugService ds) {
		this.drugService = ds;
	}
	
	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String products(Model model) {
		List<Drug> drugs = drugService.listDrugs();
		model.addAttribute("productsList", drugs);
		return "products";
	}
	@RequestMapping(value = "/product/{id}", method = RequestMethod.GET)
	public String product(@PathVariable("id") int id, Model model) {
		logger.info("Product chosen : {}.", id);
		Drug drug = drugService.getByDrugID(id);
		model.addAttribute("product", drug);
		return "product";
	}
}
