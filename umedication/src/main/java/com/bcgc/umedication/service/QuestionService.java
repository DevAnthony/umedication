package com.bcgc.umedication.service;

import com.bcgc.umedication.model.Question;
import java.util.List;
public interface QuestionService {

 
    public void addQuestion(Question q);
    public void updateQuestion(Question q);
    public List<Question> listQuestions();
    public Question getQuestionById(int id);
    public void removeQuestion(int id);
     
}