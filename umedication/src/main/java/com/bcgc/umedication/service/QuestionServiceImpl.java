package com.bcgc.umedication.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bcgc.umedication.dao.QuestionDAO;
import com.bcgc.umedication.model.Category;
import com.bcgc.umedication.model.Question;

@Service("questionService")
public class QuestionServiceImpl implements QuestionService {

	private QuestionDAO questionDAO;

	@Autowired
	public void setQuestionDAO(QuestionDAO questionDAO) {
		this.questionDAO = questionDAO;
	}
	
	@Override
	@Transactional
	public void addQuestion(Question q) {
		this.questionDAO.addQuestion(q);

	}

	@Override
	@Transactional
	public void updateQuestion(Question q) {
		this.questionDAO.updateQuestion(q);

	}

	@Override
	@Transactional
	public List<Question> listQuestions() {
		return this.questionDAO.listQuestions();
	}

	@Override
	@Transactional
	public Question getQuestionById(int id) {
		return this.questionDAO.getQuestionById(id);
	}

	@Override
	@Transactional
	public void removeQuestion(int id) {
		this.questionDAO.removeQuestion(id);
	}

	@Override
	public Map<Category, List<Question>> listQuestionsByCategory() {
		return this.questionDAO.listQuestionsByCategory();
	}

}
