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
    public List<ProductModel> findAllByCategoryCode(String code, IPageble pageble) {
        return productDAO.findAllByCategoryCode(code, pageble);
    }

    @Override
    public int getTotalItemsByCategoryCode(String categoryCode) {
        return productDAO.getTotalItemsByCategoryCode(categoryCode);
    }

    @Override
    public int getTotalItemsByKeyword(String keyword) {
        return productDAO.getTotalItemsByKeyword(keyword);
    }

    @Override
    public List<ProductModel> findAllByCategoryId(long categoryId) {
        List<ProductModel> products = productDAO.findAllByCategoryId(categoryId);
        Collections.shuffle(products);
        return products;
    }

    @Override
    public List<ProductModel> findAllByKeyWord(String keyword, IPageble pageble) {
        return productDAO.findAllByKeyWord(keyword, pageble);
    }

    @Override
    public List<ProductModel> findAllByCategoryAndSupplierCode(String categoryCode, String supplierCode, IPageble pageble) {
        return productDAO.findAllByCategoryAndSupplierCode(categoryCode, supplierCode, pageble);
    }

    @Override
    public int getTotalItemsByCategoryAndSupplierCode(String categoryCode, String supplierCode) {
        return productDAO.getTotalItemsByCategoryAndSupplierCode(categoryCode, supplierCode);
    }

    @Override
    public List<ProductModel> findAllByCategoryAndSupplierCodeAndPrice(String categoryCode, String supplierCode, long[] priceFilter, IPageble pageble) {
        return productDAO.findAllByCategoryAndSupplierCodeAndPrice(categoryCode, supplierCode, priceFilter, pageble);
    }

    @Override
    public int getTotalItemsByCategoryAndSupplierCodeAndPrice(String categoryCode, String supplierCode, long[] priceFilter) {
        return productDAO.getTotalItemsByCategoryAndSupplierCodeAndPrice(categoryCode, supplierCode, priceFilter);
    }

    @Override
    public List<ProductModel> findAllByCategoryCodeAndPrice(String categoryCode, long[] priceFilter, IPageble pageble) {
        return productDAO.findAllByCategoryCodeAndPrice(categoryCode, priceFilter, pageble);
    }

    @Override
    public int getTotalItemsByCategoryCodeAndPrice(String categoryCode, long[] priceFilter) {
        return productDAO.getTotalItemsByCategoryCodeAndPrice(categoryCode, priceFilter);
    }

    @Override
    public int getTotalItemsByStatus(int status) {
        return productDAO.getTotalItemsByStatus(status);
    }
}
