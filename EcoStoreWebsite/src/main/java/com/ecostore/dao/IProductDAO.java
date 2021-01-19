package com.ecostore.dao;

import com.ecostore.model.ProductModel;
import com.ecostore.paging.IPageble;

import java.util.List;

public interface IProductDAO {

    List<ProductModel> findAllByCategoryCode(String code, IPageble pageble);

    List<ProductModel> findAllSortByCreateddate();

    List<ProductModel> findAllSortByDiscount();

    ProductModel findOneById(long id);

    int getTotalItems(String code);

    List<ProductModel> findAllByCategoryId(long categoryId);
}
