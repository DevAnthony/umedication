package com.bcgc.umedication.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bcgc.umedication.model.Question;

@Repository("questionDAO")
public class QuestionDAOImpl implements QuestionDAO {

    private static final Logger logger = LoggerFactory.getLogger(UserDAOImpl.class);
    
    private SessionFactory sessionFactory;

	@Autowired
    public void setSessionFactory(SessionFactory sessionFactory){
        this.sessionFactory = sessionFactory;
    }
 
	@Override
	public void addQuestion(Question q) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(q);
        logger.info("Question saved successfully, question details = "+q);

	}

	@Override
	public void updateQuestion(Question q) {
		// TODO Auto-generated method stub

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Question> listQuestions() {
		logger.debug(this.sessionFactory.toString());
        Session session;
		try{
	        session = this.sessionFactory.getCurrentSession();
	        logger.debug("session retrieved");
		}
		catch (HibernateException e) 
		{
	        session = this.sessionFactory.openSession();
	        logger.debug("session opened");
			
		}
        Query query = session.createQuery("from Question");
        List<Question> questionsList = query.list();
        for(Question q : questionsList){
            logger.info("Question List::"+q);
        }
        return questionsList;
	}

	@Override
	public Question getQuestionById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void removeQuestion(int id) {
		// TODO Auto-generated method stub

	}

}
