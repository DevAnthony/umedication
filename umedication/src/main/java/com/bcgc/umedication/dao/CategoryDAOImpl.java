package com.bcgc.umedication.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.bcgc.umedication.model.Category;

public class CategoryDAOImpl implements CategoryDAO {

    private static final Logger logger = LoggerFactory.getLogger(CategoryDAOImpl.class);
    
    private SessionFactory sessionFactory;
    
	@Autowired
    public void setSessionFactory(SessionFactory sessionFactory){
        this.sessionFactory = sessionFactory;
    }


	@Override
	public List<Category> listCategories() {
        Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Category.class);
        @SuppressWarnings("unchecked")
        List<Category> categories = (List<Category>) criteria.list();
        for(Category c : categories){
            logger.debug("Category List::"+c);
        }
        return categories;
	}
	

	@Override
	public int save(Category category) {
		  return (Integer) sessionFactory.getCurrentSession().save(category);
	}

	@Override
	public void update(Category category) {
		  sessionFactory.getCurrentSession().merge(category);
	}
	
	@Override
	public void delete(int category_id) {
		Category c = getByCategory_ID(category_id);
		  sessionFactory.getCurrentSession().delete(c);
	}

	@Override
	public Category getByCategory_ID(int Category_ID) {
		  return (Category) sessionFactory.getCurrentSession().get(Category.class, Category_ID);
	}

}
