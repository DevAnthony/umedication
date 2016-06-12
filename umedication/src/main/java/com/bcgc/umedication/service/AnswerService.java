package com.bcgc.umedication.service;

import com.bcgc.umedication.model.Answer;

public interface AnswerService {
    public void addAnswer(Answer a);
    public void updateAnswer(Answer a);
    public void removeAnswer(int id);
}
