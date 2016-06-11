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
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

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
	        session = this.sessionFactory.openSession();
	        logger.info("session opened");
		}
    	return session;
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
        session.flush() ;
        logger.info("Question saved successfully, question details = "+q);

	}

	@Override
	public void updateQuestion(Question q) {
        Session session = getSession();
        session.update(q);
        logger.info("Question updated successfully, question Details="+q);

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
        return questionsList;
	}

	@Override
	public Question getQuestionById(int id) {
        Session session = getSession();      
        Question q = (Question) session.load(Question.class, new Integer(id));
        logger.info("Question loaded successfully, Question details="+q);
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
        return questionMap;
	}

}
