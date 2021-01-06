package com.ecostore.service;

import com.ecostore.model.ProductModel;

import java.util.List;

public interface IProductService {
    List<ProductModel> findAllByCategoryCode(String code);
    List<ProductModel> findAllSortByCreateddate();
    List<ProductModel> findAllSortByDiscount();
    ProductModel findOneById(long id );

}
