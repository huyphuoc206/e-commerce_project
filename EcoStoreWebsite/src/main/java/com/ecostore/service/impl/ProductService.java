package com.ecostore.service.impl;

import com.ecostore.dao.IProductDAO;
import com.ecostore.model.ProductModel;
import com.ecostore.service.IProductService;

import javax.inject.Inject;
import java.util.List;

public class ProductService implements IProductService {

    @Inject
    private IProductDAO productDAO;



    @Override
    public List<ProductModel> findAllByCategoryCode(String code) {
        return productDAO.findAllByCategoryCode(code);
    }

    @Override
    public List<ProductModel> findAllSortByCreateddate() {
        return productDAO.findAllSortByCreateddate();
    }

    @Override
    public List<ProductModel> findAllSortByDiscount() {
        return productDAO.findAllSortByDiscount();
    }
}
