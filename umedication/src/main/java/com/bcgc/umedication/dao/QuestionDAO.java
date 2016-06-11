package com.bcgc.umedication.dao;

import java.util.List;
import java.util.Map;

import com.bcgc.umedication.model.Category;
import com.bcgc.umedication.model.Question;

/**
 * Interface DAO des question.
 */
public interface QuestionDAO
{
    public void addQuestion(Question q);
    public void updateQuestion(Question q);
    public List<Question> listQuestions();
	public List<Question> getQuestionsByCategory(String category);
	public Map<Category,List<Question>> listQuestionsByCategory();
    public Question getQuestionById(int id);
    public void removeQuestion(int id);
}