package com.ecostore.dao.impl;

import com.ecostore.dao.IProductDAO;
import com.ecostore.mapper.ProductMapper;
import com.ecostore.model.ProductModel;

import java.util.List;

public class ProductDAO extends AbstractDAO<ProductModel> implements IProductDAO {

    @Override
    public List<ProductModel> findAllByCategoryCode(String code) {
        StringBuilder sql = new StringBuilder();
        sql.append("SELECT P.*, I.imagelink, category.name AS cname FROM");
        sql.append(" product P join productgallery I on P.id = I.productid join category on P.categoryid = category.id");
        sql.append(" WHERE P.status = 1 and category.code = ?");
        return query(sql.toString(), new ProductMapper(), code);
    }

    @Override
    public List<ProductModel> findAllSortByCreateddate() {
        String sql = "SELECT P.*, I.imagelink FROM product P join productgallery I on P.id = I.productid  WHERE status = 1 ORDER BY createddate DESC";
        return query(sql, new ProductMapper());
    }

    @Override
    public List<ProductModel> findAllSortByDiscount() {
        String sql = "SELECT P.*, I.imagelink FROM product P join productgallery I on P.id = I.productid  WHERE status = 1 ORDER BY discount DESC ";
        return query(sql, new ProductMapper());
    }
}
