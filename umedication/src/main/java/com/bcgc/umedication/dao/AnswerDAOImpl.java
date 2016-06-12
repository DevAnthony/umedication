package com.bcgc.umedication.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.bcgc.umedication.model.Answer;

public class AnswerDAOImpl implements AnswerDAO {

    private static final Logger logger = LoggerFactory.getLogger(AnswerDAOImpl.class);
    
    private SessionFactory sessionFactory;
    
	@Autowired
    public void setSessionFactory(SessionFactory sessionFactory){
        this.sessionFactory = sessionFactory;
    }

	@Override
	public Answer getByAnswer_ID(int answer_ID) {
		  return (Answer) sessionFactory.getCurrentSession().get(Answer.class, answer_ID);
	}

	@Override
	public List<Answer> listAnswers() {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Answer.class);
        @SuppressWarnings("unchecked")
        List<Answer> answers = (List<Answer>) criteria.list();
        for(Answer answer : answers){
            logger.debug("Answer List::"+answer);
        }
        return answers;
	}

	@Override
	public int save(Answer answer) {
		  return (Integer) sessionFactory.getCurrentSession().save(answer);
	}

	@Override
	public void update(Answer answer) {
		  sessionFactory.getCurrentSession().merge(answer);

	}


	@Override
	public void delete(int answer_ID) {
		Answer answer = getByAnswer_ID(answer_ID);
		  sessionFactory.getCurrentSession().delete(answer);

	}

}
