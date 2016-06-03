package com.bcgc.umedication.dao;

import java.util.List;

import com.bcgc.umedication.model.Question;

/**
 * Interface DAO des question.
 */
public interface QuestionDAO
{
    public void addQuestion(Question q);
    public void updateQuestion(Question q);
    public List<Question> listQuestions();
    public Question getQuestionById(int id);
    public void removeQuestion(int id);
}