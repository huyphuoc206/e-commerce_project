package com.ecostore.dao;

import com.ecostore.model.CategoryModel;

import java.util.List;

public interface ICategoryDAO {
    List<CategoryModel> findAll();
}
