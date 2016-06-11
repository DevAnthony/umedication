package com.bcgc.umedication.controller;


import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bcgc.umedication.model.Category;
import com.bcgc.umedication.model.Question;
import com.bcgc.umedication.service.QuestionService;
import com.bcgc.umedication.service.CategoryService;

@Controller
public class QuestionController {

	private QuestionService questionService;
	private CategoryService categoryService;
	
	private static final Logger logger = LoggerFactory.getLogger(QuestionController.class);

	@Autowired
	public void setQuestionService(QuestionService qs) {
		this.questionService = qs;
	}
	@Autowired
	public void setQuestionService(CategoryService cs) {
		this.categoryService = cs;
	}
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = {"/question/add", "/questions"}, method = RequestMethod.GET)
	public String home(Model model) {
    	logger.debug("liste des questions demandee");
    	//List<Question> questions = this.questionService.listQuestions();
    	Map<Category, List<Question>> questions = this.questionService.listQuestionsByCategory();
    	Question questionForm = new Question();
		List<Category> categories = this.categoryService.listCategories();
		model.addAttribute("questionsListMap", questions);
		model.addAttribute("categories", categories);
		model.addAttribute("questionForm", questionForm);
		return "questions";
	}
	
	@RequestMapping(value= "/question/add", method = RequestMethod.POST)
	public String addQuestion(@ModelAttribute("questionForm") Question questionForm, BindingResult result, Locale locale, Model model)
	{
	    if (result.hasErrors()) {
			logger.info("result() : {}", result);
	    }
	     
		logger.info("questionForm() : {}", questionForm);
		this.questionService.addQuestion(questionForm);
    	logger.debug("questions ajoutee");
		return home(model);
	}
	
	@RequestMapping(value= "/question/update", method = RequestMethod.POST)
	public String updateQuestion(@ModelAttribute("Question") Question question, BindingResult result, Locale locale, Model model)
	{
		logger.info("QuestionForm() : {}", question);
		this.questionService.updateQuestion(question);
    	logger.debug("questions modifiée");
		return home(model);
	}
}
