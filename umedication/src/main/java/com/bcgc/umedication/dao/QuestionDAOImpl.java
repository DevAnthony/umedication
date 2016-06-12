package com.bcgc.umedication.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;







import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.bcgc.umedication.model.Answer;
import com.bcgc.umedication.model.Category;
import com.bcgc.umedication.model.Question;

@Repository("questionDAO")
@Transactional
public class QuestionDAOImpl implements QuestionDAO {

    private static final Logger logger = LoggerFactory.getLogger(QuestionDAOImpl.class);
    
    private SessionFactory sessionFactory;
    
	@Autowired
    public void setSessionFactory(SessionFactory sessionFactory){
        this.sessionFactory = sessionFactory;
    }

    private Session getSession(){
    	Session session;
		try{
	        session = this.sessionFactory.getCurrentSession();
	        logger.info("session retrieved");
		}
		catch (HibernateException e){
			logger.warn(e.toString());
	        session = this.sessionFactory.openSession();
		}
    	return session;
    }
    private void closeSession(Session session){
        session.flush() ;
        session.disconnect();
        session.close();
    }
	@Override
	public void addQuestion(Question q) {
        Session session = getSession();
        if(null == q.getStatus() || "".contentEquals(q.getStatus())){
       	 q.setStatus("unanswered");
        }
        //Question question = (Question) session.merge(q);
        //session.persist(question);
        session.save(q);
        closeSession( session);
        logger.info("Question saved successfully, question details = "+q);

	}

	@Override
	public void updateQuestion(Question q) {
        Session session = getSession();
        session.update(q);
        logger.info("Question updated successfully, question Details="+q);
        closeSession( session);

	}
	
	@Override
    public void answerQuestion(Answer a) {
        Session session = getSession();
		Question q = getQuestionById(a.getQuestion().getId());
		q.setAnswer(a);
		q.setStatus("answered");
        session.update(q);
        
        logger.info("Question updated successfully, question Details="+q);
        session.flush() ;

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Question> getQuestionsByCategory(String category) {
		logger.debug(this.sessionFactory.toString());
        Session session = getSession();
        
        Query query = session.createQuery("from Question q where q.category = :category");
        query.setString("category", category);
        List<Question> questionsList = query.list();
        for(Question q : questionsList){
            logger.info("Question List::"+q);
        }
        session.flush() ;
        return questionsList;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Question> listQuestions() {
		logger.debug(this.sessionFactory.toString());
        Session session = getSession();
        Criteria criteria = session.createCriteria(Question.class);
        List<Question> questionsList = criteria.list();
        for(Question q : questionsList){
            logger.info("Question List::"+q);
        }
        closeSession( session);
        return questionsList;
	}
	

	@Override
	public Question getQuestionById(int id) {
        Session session = getSession();      
        Question q = (Question) session.load(Question.class, new Integer(id));
        logger.info("Question loaded successfully, Question details="+q);
        closeSession( session);
        return q;
	}

	@Override
	public void removeQuestion(int id) {
        Session session = getSession();
        Question q = (Question) session.load(Question.class, new Integer(id));
        if(null != q){
            session.delete(q);
        }
        logger.info("Question deleted successfully, Question details="+q);
        session.flush() ;

	}

	@Override
	public Map<Category, List<Question>> listQuestionsByCategory() {
		logger.debug(this.sessionFactory.toString());
        Session session = getSession();
        Query query = session.createQuery("from Question");
        @SuppressWarnings("unchecked")
		List<Question> questionsList = query.list();
        Map<Category, List<Question>> questionMap = new HashMap<Category, List<Question>>();
        for(Question q : questionsList){
            logger.info("Question List::"+q);
            if(!questionMap.containsKey(q.getCategory())){
            	questionMap.put(q.getCategory(), new ArrayList<Question>() );
            }
            questionMap.get(q.getCategory()).add(q);
        }
        closeSession( session);
        return questionMap;
	}
	
	@Override
	@Transactional
	public Map<Category, List<Question>> listAnsweredQuestionsByCategory() {
		logger.debug(this.sessionFactory.toString());
        Session session = getSession();
        Criteria criteria = session.createCriteria(Question.class);
    	Criterion critere = Restrictions.eq("status", "answered");
    	criteria.add(critere);
        @SuppressWarnings("unchecked")
        List<Question> questionsList = criteria.list();
        Map<Category, List<Question>> questionMap = new HashMap<Category, List<Question>>();
        for(Question q : questionsList){
            logger.info("Question List::"+q);
            if(!questionMap.containsKey(q.getCategory())){
            	questionMap.put(q.getCategory(), new ArrayList<Question>() );
            }
            questionMap.get(q.getCategory()).add(q);
        }
        closeSession( session);
        return questionMap;
	}

	@Override
	public Map<Category, List<Question>> listUnansweredQuestionsByCategory() {
		logger.debug(this.sessionFactory.toString());
        Session session = getSession();
        Criteria criteria = session.createCriteria(Question.class);
    	Criterion critere = Restrictions.eq("status", "unanswered");
    	criteria.add(critere);
        @SuppressWarnings("unchecked")
        List<Question> questionsList = criteria.list();
        Map<Category, List<Question>> questionMap = new HashMap<Category, List<Question>>();
        for(Question q : questionsList){
            logger.info("Question List::"+q);
            if(!questionMap.containsKey(q.getCategory())){
            	questionMap.put(q.getCategory(), new ArrayList<Question>() );
            }
            questionMap.get(q.getCategory()).add(q);
        }
        return questionMap;
	}

}
