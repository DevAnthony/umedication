package com.bcgc.umedication.dao;

import java.util.List;

import com.bcgc.umedication.model.Answer;

public interface AnswerDAO {

	Answer getByAnswer_ID(int answer_ID);
	 
    public List<Answer> listAnswers();
    
    int save(Answer answer);

    void update(Answer answer);
        
    void delete(int answer_ID);
}
