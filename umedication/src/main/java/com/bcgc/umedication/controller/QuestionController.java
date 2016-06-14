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
	public void setCategoryService(CategoryService cs) {
		this.categoryService = cs;
	}

	@RequestMapping(value = {"/question/add", "/questions"}, method = RequestMethod.GET)
	public String questions(Model model) {
    	logger.debug("liste des questions demandee");
    	Map<Category, List<Question>> questions = this.questionService.listAnsweredQuestionsByCategory();
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
			logger.debug("result() : {}", result);
	    }
		this.questionService.addQuestion(questionForm);
		return questions(model);
	}
	
	@RequestMapping(value= "/doctor/question/update", method = RequestMethod.POST)
	public String updateQuestion(@ModelAttribute("questionForm") Question question, BindingResult result, Locale locale, Model model)
	{
		logger.debug("QuestionForm() : {}", question);
		this.questionService.updateQuestion(question);
    	logger.debug("questions modifiée");
		return questions(model);
	}

	@RequestMapping(value = {"/doctor/answers"}, method = RequestMethod.GET)
	public String answers(Model model) {
    	logger.debug("liste des questions demandee");
    	Map<Category, List<Question>> questions = this.questionService.listUnansweredQuestionsByCategory();

		List<Category> categories = this.categoryService.listCategories();
		model.addAttribute("questionsListMap", questions);
		model.addAttribute("categories", categories);
		model.addAttribute("questionForm", new Question());
		return "answers";
	}

	@RequestMapping(value= "/doctor/answer/add", method = RequestMethod.POST)
	public String addAnswer(@ModelAttribute("questionForm") Question questionForm, BindingResult result, Locale locale, Model model)
	{
		logger.debug("QuestionForm() : {}", questionForm);
		Question question_to_answer = this.questionService.getQuestionById(questionForm.getId());
		question_to_answer.setAnswer(questionForm.getAnswer());
		question_to_answer.setStatus("answered");
		logger.info("question_to_answer() : {}", question_to_answer);
		this.questionService.updateQuestion(question_to_answer);
    	logger.debug("questions modifiée");
		return questions(model);
	}
}
