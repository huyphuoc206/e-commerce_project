package com.ecostore.dao;

import com.ecostore.model.CategoryModel;

import java.util.List;

public interface ICategoryDAO {
    List<CategoryModel> findAllByStatus(int status);

    List<CategoryModel> findAll();

    CategoryModel findOneById(long id);

    Long insert(CategoryModel categoryModel);

    void update(CategoryModel categoryModel);

    void delete(long id);
}
