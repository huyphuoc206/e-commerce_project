package com.ecostore.dao.impl;

import com.ecostore.dao.IAboutDAO;
import com.ecostore.dao.ICategoryDAO;
import com.ecostore.mapper.CategoryMapper;
import com.ecostore.model.CategoryModel;

import java.util.ArrayList;
import java.util.List;

public class CategoryDAO extends AbstractDAO<CategoryModel> implements ICategoryDAO {
    @Override
    public List<CategoryModel> findAll() {
        String sql = "SELECT * FROM category";
        return query(sql, new CategoryMapper());
    }
}
