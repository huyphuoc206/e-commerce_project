package com.ecostore.service.impl;

import com.ecostore.dao.ICategoryDAO;
import com.ecostore.model.CategoryModel;
import com.ecostore.service.ICategoryService;

import javax.inject.Inject;
import java.util.List;

public class CategoryService implements ICategoryService {
    @Inject
    private ICategoryDAO categoryDAO;
    @Override
    public List<CategoryModel> findAll() {
        return categoryDAO.findAll();
    }
}
