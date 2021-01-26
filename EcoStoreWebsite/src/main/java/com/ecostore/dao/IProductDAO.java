package com.ecostore.dao;

import com.ecostore.model.ProductModel;
import com.ecostore.paging.IPageble;

import java.util.List;

public interface IProductDAO {

    List<ProductModel> findAllByCategoryCode(String code, IPageble pageble);

    List<ProductModel> findAllSortByCreateddate();

    List<ProductModel> findAllSortByDiscount();

    ProductModel findOneById(long id);

    int getTotalItemsByCategoryCode(String code);

    int getTotalItemsByKeyword(String keyword);

    int getTotalItemsByCategoryAndSupplierCode(String categoryCode, String supplierCode);

    List<ProductModel> findAllByCategoryId(long categoryId);

    List<ProductModel> findAllByKeyWord(String keyword, IPageble pageble);

    List<ProductModel> findAllByCategoryAndSupplierCode(String category, String supplier, IPageble pageble);

}
