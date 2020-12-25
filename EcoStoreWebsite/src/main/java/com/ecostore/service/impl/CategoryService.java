package com.ecostore.service.impl;

import com.ecostore.dao.ICategoryDAO;
import com.ecostore.model.CategoryModel;
import com.ecostore.service.ICategoryService;

import javax.inject.Inject;
import java.sql.Timestamp;
import java.util.List;

public class CategoryService implements ICategoryService {
    @Inject
    private ICategoryDAO categoryDAO;
    @Override
    public List<CategoryModel> findAllByStatus(int status) {
        return categoryDAO.findAllByStatus(status);
    }

    @Override
    public List<CategoryModel> findAll() {
        return categoryDAO.findAll();
    }

    @Override
    public CategoryModel findOneById(long id) {
        return categoryDAO.findOneById(id);
    }

    @Override
    public CategoryModel insert(CategoryModel model) {
        model.setCreatedDate(new Timestamp(System.currentTimeMillis()));
        model.setCreatedBy("");
        Long id = categoryDAO.insert(model);
        return categoryDAO.findOneById(id);
    }

    @Override
    public CategoryModel update(CategoryModel model) {
        CategoryModel oldCategory = categoryDAO.findOneById(model.getId());
        model.setCreatedBy(oldCategory.getCreatedBy());
        model.setCreatedDate(oldCategory.getModifiedDate());
        model.setModifiedDate(new Timestamp(System.currentTimeMillis()));
        model.setModifiedBy("");
        categoryDAO.update(model);
        return categoryDAO.findOneById(model.getId());
    }

    @Override
    public void delete(long[] ids) {
        for (long id: ids) {
            categoryDAO.delete(id);
        }
    }
}
