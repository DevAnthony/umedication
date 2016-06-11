package com.bcgc.umedication.dao;

import java.util.List;
import java.util.Map;

import com.bcgc.umedication.model.Category;

public interface CategoryDAO {

	Category getByCategory_ID(int Category_ID);
	 
    public List<Category> listCategories();
    
    int save(Category category);

    void update(Category category);
    
    void view(Category category);
    
    void delete(int category_id);
}
