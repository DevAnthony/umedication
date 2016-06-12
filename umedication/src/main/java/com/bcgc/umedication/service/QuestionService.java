package com.bcgc.umedication.service;

import com.bcgc.umedication.model.Category;
import com.bcgc.umedication.model.Question;
import com.bcgc.umedication.model.Answer;

import java.util.List;
import java.util.Map;
public interface QuestionService {

    public void addQuestion(Question q);
    public void updateQuestion(Question q);
    public void answerQuestion(Answer a);
    public List<Question> listQuestions();
    public Map<Category, List<Question>> listQuestionsByCategory();    
	public Map<Category,List<Question>> listAnsweredQuestionsByCategory();
	public Map<Category,List<Question>> listUnansweredQuestionsByCategory();
    public Question getQuestionById(int id);
    public void removeQuestion(int id);
    
}