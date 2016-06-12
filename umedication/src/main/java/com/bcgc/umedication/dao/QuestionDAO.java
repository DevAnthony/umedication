package com.bcgc.umedication.dao;

import java.util.List;
import java.util.Map;

import com.bcgc.umedication.model.Answer;
import com.bcgc.umedication.model.Category;
import com.bcgc.umedication.model.Question;

/**
 * Interface DAO des question.
 */
public interface QuestionDAO
{
    public void addQuestion(Question q);
    public void updateQuestion(Question q);
    public void answerQuestion(Answer a);
    public List<Question> listQuestions();
	public List<Question> getQuestionsByCategory(String category);
	public Map<Category,List<Question>> listQuestionsByCategory();
	public Map<Category,List<Question>> listAnsweredQuestionsByCategory();
	public Map<Category,List<Question>> listUnansweredQuestionsByCategory();
    public Question getQuestionById(int id);
    public void removeQuestion(int id);
    
}