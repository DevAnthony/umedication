package com.bcgc.umedication.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.bcgc.umedication.model.User;

/**
 * Class User qui implémente son propre DAO.
 */
@Repository("userDAO")
public class UserDAOImpl implements UserDAO {
     
    private static final Logger logger = LoggerFactory.getLogger(UserDAOImpl.class);
 
    private SessionFactory sessionFactory;
     
    public void setSessionFactory(SessionFactory sf){
        this.sessionFactory = sf;
    }
 
    /**
     * Ajoute un User en BDD
     */
    @Override
    public void addUser(User u) {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(u);
        logger.info("User saved successfully, User Details="+u);
    }
 
    /**
     * Modifie un User en BDD
     */
    @Override
    public void updateUser(User u) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(u);
        logger.info("User updated successfully, User Details="+u);
    }
 
    /**
     * Selectionne tous les Users en BDD
     */
    @SuppressWarnings("unchecked")
    @Override
    public List<User> listUsers() {
        Session session = this.sessionFactory.getCurrentSession();
        List<User> UsersList = session.createQuery("from User").list();
        for(User u : UsersList){
            logger.info("User List::"+u);
        }
        return UsersList;
    }
 
    /**
     * Selectionne un User selon son ID en BDD
     */
    @Override
    public User getUserById(int id) {
        Session session = this.sessionFactory.getCurrentSession();      
        User u = (User) session.load(User.class, new Integer(id));
        logger.info("User loaded successfully, User details="+u);
        return u;
    }
    
    /**
     * Selectionne un User selon son nom en BDD
     */
    @Override
    public User getUserByUsername(String name) {
    	Session session = this.sessionFactory.getCurrentSession();      
    	Query query = session.createQuery("from User where username=:username");
		query.setParameter("username", name);
		User u = (User) query.uniqueResult();
        logger.info("User loaded successfully, User details="+u);
        return u;
    }
 
    /**
     * Supprime un User en BDD selon son ID
     */
    @Override
    public void removeUser(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        User u = (User) session.load(User.class, new Integer(id));
        if(null != u){
            session.delete(u);
        }
        logger.info("User deleted successfully, User details="+u);
    }
 
}