package com.ecostore.dao;

import com.ecostore.model.ProductModel;

import java.util.List;

public interface IProductDAO {

    List<ProductModel> findAllByCategoryCode(String code);

    List<ProductModel> findAllSortByCreateddate();

    List<ProductModel> findAllSortByDiscount();
}
