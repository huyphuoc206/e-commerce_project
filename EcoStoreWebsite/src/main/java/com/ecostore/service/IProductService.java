package com.ecostore.service;

import com.ecostore.model.ProductModel;
import com.ecostore.paging.IPageble;

import java.util.List;

public interface IProductService {
    List<ProductModel> findAllByCategoryCode(String code, IPageble pageble);

    List<ProductModel> findAllSortByCreateddate();

    List<ProductModel> findAllSortByDiscount();

    ProductModel findOneById(long id);

    int getTotalItems(String code);

    List<ProductModel> findAllByCategoryId(long categoryId);
}
