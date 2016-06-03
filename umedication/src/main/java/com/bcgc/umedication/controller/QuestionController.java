package com.bcgc.umedication.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bcgc.umedication.model.User;
import com.bcgc.umedication.service.QuestionService;

@Controller
public class QuestionController {

	private QuestionService questionService;
	
	private static final Logger logger = LoggerFactory.getLogger(QuestionController.class);

	@Autowired
	public void setQuestionService(QuestionService qs) {
		this.questionService = qs;
	}
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/questions", method = RequestMethod.GET)
	public String home(Model model) {

    	logger.debug("liste des questions demandee");
		model.addAttribute("listMissions", this.questionService.listQuestions());
		return "questions";
	}
}
