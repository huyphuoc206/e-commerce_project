package com.ecostore.mapper;

import com.ecostore.model.CategoryModel;
import com.ecostore.model.ProductModel;
import com.ecostore.utils.MapperUtil;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductMapper implements IRowMapper<ProductModel> {

    @Override
    public ProductModel mapRow(ResultSet resultSet) {
        ProductModel model = new ProductModel();
        List<String> images = new ArrayList<>();
        try {
            model.setId(resultSet.getLong("id"));
            model.setName(resultSet.getString("name"));
            model.setPrice(resultSet.getLong("price"));
            model.setDiscount(resultSet.getInt("discount"));
            model.setDescription(resultSet.getString("description"));
            model.setStatus(resultSet.getInt("status"));
            model.setCategoryId(resultSet.getLong("categoryid"));
            CategoryModel category = new CategoryModel();
            if (MapperUtil.hasColumn(resultSet,"categoryname")){
                category.setName(resultSet.getString("categoryname"));
            }
            model.setCategory(category);
            model.setSupplierId(resultSet.getLong("supplierid"));
            model.setCreatedDate(resultSet.getTimestamp("createddate"));
            model.setCreatedBy(resultSet.getString("createdby"));
            model.setModifiedDate(resultSet.getTimestamp("modifieddate"));
            model.setModifiedBy(resultSet.getString("modifiedby"));
            images.add(resultSet.getString("imagelink"));

            resultSet.next();
            while (model.getId() == resultSet.getLong("id")){
                images.add(resultSet.getString("imagelink"));
                resultSet.next();
            }
            resultSet.previous();
            model.setImages(images);
            return model;
        } catch (SQLException throwables) {
            return null;
        }

    }
}
