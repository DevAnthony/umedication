package com.bcgc.umedication.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.bcgc.umedication.dao.CategoryDAO;
import com.bcgc.umedication.model.Category;

public class CategoryServiceImpl implements CategoryService {
	
	private CategoryDAO categoryDAO;

	@Autowired
	public void setCategoryDAO(CategoryDAO categoryDAO) {
		this.categoryDAO = categoryDAO;
	}
	
	@Override
	@Transactional
	public List<Category> listCategories() {
		return this.categoryDAO.listCategories();
	}
	

}
