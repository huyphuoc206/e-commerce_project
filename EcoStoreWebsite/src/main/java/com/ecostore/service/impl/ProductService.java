package com.ecostore.service.impl;

import com.ecostore.dao.IProductDAO;
import com.ecostore.model.ProductModel;
import com.ecostore.paging.IPageble;
import com.ecostore.service.IProductService;

import javax.inject.Inject;
import java.util.Collections;
import java.util.List;

public class ProductService implements IProductService {

    @Inject
    private IProductDAO productDAO;

    @Override
    public List<ProductModel> findAllByCategoryCode(String code, IPageble pageble) {
        return productDAO.findAllByCategoryCode(code, pageble);
    }

    @Override
    public List<ProductModel> findAllSortByCreateddate() {
        return productDAO.findAllSortByCreateddate();
    }

    @Override
    public List<ProductModel> findAllSortByDiscount() {
        return productDAO.findAllSortByDiscount();
    }

    @Override
    public ProductModel findOneById(long id) {
        return productDAO.findOneById(id);
    }

    @Override
    public int getTotalItems() {
        return productDAO.getTotalItems();
    }

    @Override
    public List<ProductModel> findAllByCategoryId(long categoryId) {
        List<ProductModel> products = productDAO.findAllByCategoryId(categoryId);
        Collections.shuffle(products);
        return products;
    }
}
