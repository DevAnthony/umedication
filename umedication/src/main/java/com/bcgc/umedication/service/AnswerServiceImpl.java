package com.bcgc.umedication.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.bcgc.umedication.dao.AnswerDAO;
import com.bcgc.umedication.model.Answer;

public class AnswerServiceImpl implements AnswerService {
	
	private AnswerDAO answerDAO;

	@Autowired
	public void setAnswerDAO(AnswerDAO answerDAO) {
		this.answerDAO = answerDAO;
	}
	

	@Override
	public void addAnswer(Answer answer) {
		this.answerDAO.save(answer);

	}

	@Override
	public void updateAnswer(Answer answer) {
		this.answerDAO.update(answer);

	}

	@Override
	public void removeAnswer(int id) {
		this.answerDAO.delete(id);
	}

}
